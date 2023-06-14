import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movienow/infraestructure/datasources/actormoviedb_datasource.dart';
import 'package:movienow/infraestructure/repositories/actor_repository_impl.dart';


// Este repositorio es inmutable
final actorsRepositoryProvider = Provider((ref) {
  return ActorRepositoryImpl( ActorMovieDbDatasource() );
});