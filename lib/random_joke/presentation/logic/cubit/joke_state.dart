part of 'joke_cubit.dart';

@freezed
abstract class JokeState with _$JokeState {
  const factory JokeState.loading()=_Loading;
  const factory JokeState.loaded(RandomJoke joke)=_Loaded;
  const factory JokeState.error(String error)=_Error;

}