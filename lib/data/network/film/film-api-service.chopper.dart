// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film-api-service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$FilmApiService extends FilmApiService {
  _$FilmApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = FilmApiService;

  @override
  Future<Response<dynamic>> getFilms() {
    final String $url = '/api/v2.2/films';
    final Map<String, String> $headers = {
      'X-API-KEY': 'ab67ce7d-90cf-4d1b-b354-7474b82c9f38',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getFilm(int kinopoiskId) {
    final String $url = '/api/v2.2/films/${kinopoiskId}';
    final Map<String, String> $headers = {
      'X-API-KEY': 'ab67ce7d-90cf-4d1b-b354-7474b82c9f38',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
