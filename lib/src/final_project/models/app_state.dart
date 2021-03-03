library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import 'movie.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  // factory AppState([void Function(AppStateBuilder)update]) = _$AppState;

  factory AppState() {
    final AppStateBuilder builder = AppStateBuilder();
    builder.isLoading = true;
    return builder.build();
  }

  AppState._();

  BuiltList<Movie> get movies;

  bool get isLoading;
}
