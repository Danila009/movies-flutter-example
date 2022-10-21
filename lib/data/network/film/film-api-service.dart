
import 'package:chopper/chopper.dart';

part 'film-api-service.chopper.dart';

@ChopperApi(baseUrl: '/api')
abstract class FilmApiService extends ChopperService {

  @Get(path: '/v2.2/films')
  Future<Response> getMovies();

  static FilmApiService create() {
    final client = ChopperClient(
        baseUrl: 'https://',
        services: [
          _$FilmApiService()
        ],
      converter: JsonConverter()
    );
    return _$FilmApiService(client);
  }
}