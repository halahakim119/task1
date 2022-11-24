import 'package:bloc/bloc.dart';

import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task1/cubit_task/data/models/data_model.dart';
import '../data/repo.dart';

part 'articles_state.dart';
part 'articles_cubit.freezed.dart';


class ArticlesCubit extends Cubit<ArticlesState> {
  final Repo repo;
  ArticlesCubit({required this.repo}) : super(ArticlesState.loading());

  void fetchData() {
    emit(ArticlesState.loading());
    try {
      Timer(const Duration(seconds: 2), () {
        repo.fetchDataAPI().then((articles) {
          emit(ArticlesState.loaded(articles));
        });
      });
    } on Exception catch (e) {
      emit(ArticlesState.error('error :\n${e.toString()}'));
    }
  }
}
