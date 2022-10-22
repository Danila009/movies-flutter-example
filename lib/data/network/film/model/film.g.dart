// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Film _$FilmFromJson(Map<String, dynamic> json) => Film(
      total: json['total'] as int? ?? 0,
      totalPages: json['totalPages'] as int? ?? 0,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => FilmItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FilmToJson(Film instance) => <String, dynamic>{
      'total': instance.total,
      'totalPages': instance.totalPages,
      'items': instance.items,
    };

FilmItem _$FilmItemFromJson(Map<String, dynamic> json) => FilmItem(
      kinopoiskId: json['kinopoiskId'] as int?,
      imdbId: json['imdbId'] as String?,
      nameRu: json['nameRu'] as String?,
      posterUrl: json['posterUrl'] as String?,
      ratingKinopoisk: (json['ratingKinopoisk'] as num?)?.toDouble(),
      year: json['year'] as int?,
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      genre: (json['genre'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FilmItemToJson(FilmItem instance) => <String, dynamic>{
      'kinopoiskId': instance.kinopoiskId,
      'imdbId': instance.imdbId,
      'nameRu': instance.nameRu,
      'posterUrl': instance.posterUrl,
      'ratingKinopoisk': instance.ratingKinopoisk,
      'year': instance.year,
      'countries': instance.countries,
      'genre': instance.genre,
    };

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      country: json['country'] as String? ?? "",
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'country': instance.country,
    };

Genre _$GenreFromJson(Map<String, dynamic> json) => Genre(
      genre: json['genre'] as String? ?? "",
    );

Map<String, dynamic> _$GenreToJson(Genre instance) => <String, dynamic>{
      'genre': instance.genre,
    };
