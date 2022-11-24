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
      body: BlocConsumer<ArticlesCubit, ArticlesState>(
          listener: (context, state) {
        state.maybeWhen(
            error: (error) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('$error')));
            },
            orElse: () {});
      }, 
      builder: (context, state) {
        return Scaffold(
          body: state.when(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),

            loaded: (data) => Center(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    textColor:
                        Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(1.0),
                    title: Text(
                        'article ${index + 1}: ${data.articles![index].title}'),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                Details(data: data.articles![index]))),
                  );
                },
                itemCount: data.articles!.length,
              ),
            ),
            error: (error) => Center(
              child: Text(error.toString()),
            ),
          ),
        );
      }),
    );
  }
}
