
import 'package:json_annotation/json_annotation.dart';

import 'film.dart';

part 'film-info.g.dart';

@JsonSerializable()
class FilmInfo {

  final int kinopoiskId;
  final String imdbId;
  final String nameRu;
  final String posterUrl;
  final String posterUrlPreviewl;
  final String? coverUrl;
  final String logoUrl;
  final String? description;
  final String shortDescription;
  final int year;
  final List<Country>? countries;
  final List<Genre>? genre;

  FilmInfo({
    this.kinopoiskId = 0,
    this.imdbId = "",
    this.nameRu = "",
    this.posterUrl = "",
    this.posterUrlPreviewl = "",
    this.coverUrl = null,
    this.logoUrl = "",
    this.description = null,
    this.shortDescription = "",
    this.year = 0,
    this.countries = null,
    this.genre = null
  });

  factory FilmInfo.fromJson(Map<String,dynamic> data) => _$FilmInfoFromJson(data);

  Map<String,dynamic> toJson() => _$FilmInfoToJson(this);
}