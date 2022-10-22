// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film-info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilmInfo _$FilmInfoFromJson(Map<String, dynamic> json) => FilmInfo(
      kinopoiskId: json['kinopoiskId'] as int? ?? 0,
      imdbId: json['imdbId'] as String? ?? "",
      nameRu: json['nameRu'] as String? ?? "",
      posterUrl: json['posterUrl'] as String? ?? "",
      posterUrlPreviewl: json['posterUrlPreviewl'] as String? ?? "",
      coverUrl: json['coverUrl'] as String? ?? null,
      logoUrl: json['logoUrl'] as String? ?? "",
      description: json['description'] as String? ?? null,
      shortDescription: json['shortDescription'] as String? ?? "",
      year: json['year'] as int? ?? 0,
      countries: (json['countries'] as List<dynamic>?)
              ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      genre: (json['genre'] as List<dynamic>?)
              ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
    );

Map<String, dynamic> _$FilmInfoToJson(FilmInfo instance) => <String, dynamic>{
      'kinopoiskId': instance.kinopoiskId,
      'imdbId': instance.imdbId,
      'nameRu': instance.nameRu,
      'posterUrl': instance.posterUrl,
      'posterUrlPreviewl': instance.posterUrlPreviewl,
      'coverUrl': instance.coverUrl,
      'logoUrl': instance.logoUrl,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'year': instance.year,
      'countries': instance.countries,
      'genre': instance.genre,
    };
