import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movienow/infraestructure/datasources/moviedb_datasource.dart';
import 'package:movienow/infraestructure/repositories/movie_repository_impl.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});
