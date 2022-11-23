import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:math' as math;

import 'package:task1/cubit_task/cubit/articles_cubit.dart';
import 'package:task1/cubit_task/presentation/screens/details.dart';

class ShowData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ArticlesCubit>(context).fetchData();
    return Scaffold(
      appBar: AppBar(title: Text('artiles')),
      body: BlocBuilder<ArticlesCubit, ArticlesState>(
        builder: (context, state) {
          if (state is ArticlesStateLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ArticlesErrorState) {
            return Center(
              child: Text(state.error.toString()),
            );
          }

          final articles = (state as ArticlesLoadedState).articles;
          return Center(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  textColor:
                      Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                          .withOpacity(1.0),
                  title: Text(
                      'article ${index + 1}: ${articles.articles![index].title}'),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              Details(data: articles.articles![index]))),
                );
              },
              itemCount: articles.articles!.length,
            ),
          );
        },
      ),
    );
  }
}
