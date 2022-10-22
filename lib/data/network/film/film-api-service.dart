
import 'package:chopper/chopper.dart';

part 'film-api-service.chopper.dart';

@ChopperApi(baseUrl: '/api')
abstract class FilmApiService extends ChopperService {

  @Get(
      path: '/v2.2/films',
      headers: { 'X-API-KEY' : 'ab67ce7d-90cf-4d1b-b354-7474b82c9f38' }
  )
  Future<Response> getFilms();

  @Get(
      path: '/v2.2/films/{id}',
      headers: { 'X-API-KEY' : 'ab67ce7d-90cf-4d1b-b354-7474b82c9f38' }
  )
  Future<Response> getFilm(@Path("id") int kinopoiskId);

  static FilmApiService create() {
    final client = ChopperClient(
        baseUrl: 'https://kinopoiskapiunofficial.tech',
        services: [
          _$FilmApiService()
        ],
      converter: JsonConverter()
    );
    return _$FilmApiService(client);
  }
}