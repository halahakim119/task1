part of 'joke_cubit.dart';

abstract class JokeState extends Equatable {
  const JokeState();

  @override
  List<Object> get props => [];
}


class JokeLoading extends JokeState {
  @override
  List<Object> get props => [];
}

class JokeLoaded extends JokeState {
  RandomJoke joke;
  JokeLoaded(this.joke);
  @override
  List<Object> get props => [joke];
}

class JokeError extends JokeState {
  String error;
  JokeError(this.error);
  @override
  List<Object> get props => [error];
}
