

import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter_example/data/network/film/model/film.dart';
import 'package:movies_flutter_example/ui/theme/colors.dart';
import 'package:provider/provider.dart';

import '../../../data/network/film/film-api-service.dart';
import '../film_info_screen/film-info-screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return _buildBody(context);
  }
  
  FutureBuilder<Response> _buildBody(BuildContext context) {
    return FutureBuilder<Response>(
      future: Provider.of<FilmApiService>(context).getFilms(),
      builder: (context,snapshot) {
        if(snapshot.connectionState == ConnectionState.done){
          final Film films = Film.fromJson(snapshot.data!.body);
          return _buildFilms(context,films);
        }else {
          return Center(
            child: CircularProgressIndicator(
              color: tintColor,
            )
          );
        }
      },
    );
  }

  GridView _buildFilms(BuildContext context, Film films) {

    int crossAxisCount = Platform.isAndroid ? 2 : Platform.isIOS ? 2 : 3;
    double childAspectRatio = Platform.isAndroid ? 1 : Platform.isIOS ? 1 : 1.25;

    return GridView(
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 16,
          childAspectRatio: childAspectRatio
      ),
      children: List.generate(films.items!.length, (index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => FilmInfoScreen(
                    kinopoiskId: films.items![index].kinopoiskId!,
                  )
                )
            );
          },
          child: Card(
            color: secondaryBackground,
            child: filmItem(films.items![index]),
          ),
        );
      })
    );
  }

  Widget filmItem(FilmItem item){
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(10)),
        Image.network(
          item.posterUrl.toString(),
          width: 200,
          height: 250,
        ),
        Padding(padding: EdgeInsets.all(10)),
        Text(
          "${item.nameRu} (${item.year})",
          style: TextStyle(
              color: primaryText,
              fontWeight: FontWeight.w600
          ),
        ),
      ],
    );
  }
}