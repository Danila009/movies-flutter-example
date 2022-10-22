
import 'package:json_annotation/json_annotation.dart';

part 'film.g.dart';

@JsonSerializable()
class Film {

  final int? total;
  final int? totalPages;
  final List<FilmItem>? items;

  Film({
    this.total = 0,
    this.totalPages = 0,
    this.items
  });


  factory Film.fromJson(Map<String,dynamic> data) => _$FilmFromJson(data);

  Map<String,dynamic> toJson() => _$FilmToJson(this);
}

@JsonSerializable()
class FilmItem {

  final int? kinopoiskId;
  final String? imdbId;
  final String? nameRu;
  final String? posterUrl;
  final double? ratingKinopoisk;
  final int? year;
  final List<Country>? countries;
  final List<Genre>? genre;

  FilmItem({
    this.kinopoiskId,
    this.imdbId,
    this.nameRu,
    this.posterUrl,
    this.ratingKinopoisk,
    this.year,
    this.countries,
    this.genre
  });

  factory FilmItem.fromJson(Map<String,dynamic> data) => _$FilmItemFromJson(data);

  Map<String,dynamic> toJson() => _$FilmItemToJson(this);
}

@JsonSerializable()
class Country {

  final String country;

  Country({
    this.country = ""
  });

  factory Country.fromJson(Map<String,dynamic> data) => _$CountryFromJson(data);

  Map<String,dynamic> toJson() => _$CountryToJson(this);
}

@JsonSerializable()
class Genre {

  final String genre;

  Genre({
    this.genre = ""
  });

  factory Genre.fromJson(Map<String,dynamic> data) => _$GenreFromJson(data);

  Map<String,dynamic> toJson() => _$GenreToJson(this);
}