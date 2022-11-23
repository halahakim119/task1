import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:task1/random_joke/data/models/random_joke.dart';
import 'package:task1/random_joke/data/network/joke_repo.dart';
import 'dart:async';

part 'joke_state.dart';

class JokeCubit extends Cubit<JokeState> {
  JokeRepo repo;
  JokeCubit({required this.repo}) : super(JokeLoading());
  @override
  JokeState get initialState => JokeLoading();

  void fetchData() async {
    emit(JokeLoading());

    try {
      final data = await repo.getJoke();
      emit(JokeLoaded(data));
    } catch (e) {
      emit(JokeError(e.toString()));
    }
  }
}
