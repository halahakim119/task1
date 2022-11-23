
part of 'user_bloc.dart';

@immutable
abstract class UserState extends Equatable{}

class UserLoadingState extends UserState {
  @override
  List<User?> get props => [];
}

class UserLoadedState extends UserState {
  final List<User> user;

  UserLoadedState(this.user);

  @override
  List<User?> get props => user;
}

class userErrorState extends UserState {
  final String error;

  userErrorState(this.error);

  @override
  List<User?> get props => error as List<User>;
}