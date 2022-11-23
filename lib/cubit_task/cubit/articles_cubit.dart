import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:task1/cubit_task/data/models/data_model.dart';
import '../data/repo.dart';

part 'articles_state.dart';

class ArticlesCubit extends Cubit<ArticlesState> {
  final Repo repo;
  ArticlesCubit({required this.repo}) : super(ArticlesStateLoadingState());

  void fetchData() {
    emit(ArticlesStateLoadingState());
    try {
      Timer(const Duration(seconds: 2), () {
        repo.fetchDataAPI().then((articles) {
          emit(ArticlesLoadedState(articles: articles));
        });
      });
    } on Exception catch (e) {
      emit(ArticlesErrorState('error :\n${e.toString()}'));
    }
  }
}
