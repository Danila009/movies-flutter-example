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
  Future<Response<dynamic>> getMovies() {
    final String $url = '/api/v2.2/films';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
