
import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter_example/data/network/film/model/film-info.dart';
import 'package:movies_flutter_example/ui/theme/colors.dart';
import 'package:provider/provider.dart';

import '../../../data/network/film/film-api-service.dart';

class FilmInfoScreen extends StatelessWidget {

  final int kinopoiskId;

  const FilmInfoScreen({Key? key,required this.kinopoiskId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }

  FutureBuilder<Response> _buildBody(BuildContext context) {
    return FutureBuilder<Response>(
      future: Provider.of<FilmApiService>(context).getFilm(kinopoiskId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {

          FilmInfo filmInfo = FilmInfo.fromJson(snapshot.data!.body);

          return Scaffold(
            appBar: AppBar(
              backgroundColor: secondaryBackground,
              title: Text(
                  "${filmInfo.nameRu}(${filmInfo.year})",
                  style: TextStyle(
                    color: primaryText,
                    fontWeight: FontWeight.w900
                  ),
              ),
              actions: [

              ],
            ),
            body: bodyFilmInfo(filmInfo),
          );
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                backgroundColor: primaryBackground,
              ),
            )
          );
        }
      },
    );
  }

  Widget bodyFilmInfo(FilmInfo filmInfo){
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context,index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                filmInfo.coverUrl ?? filmInfo.posterUrl,
              ),
              Padding(padding: EdgeInsets.all(8)),
              Text(
                filmInfo.description ?? filmInfo.shortDescription,
                style: TextStyle(
                  color: primaryText
                ),
              ),
            ],
          );
        }
    );
  }
}
