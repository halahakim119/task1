import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/random_joke/data/network/joke_repo.dart';
import 'package:task1/random_joke/presentation/logic/cubit/joke_cubit.dart';

void main() {
  runApp(
    BlocTask(),
  );
}

class BlocTask extends StatelessWidget {
  BlocTask({super.key});
  @override
  Widget build(BuildContext context) {
    JokeRepo repo = JokeRepo();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => JokeCubit(repo: repo),
        child: RandomJokeScreen(),
      ),
    );
  }
}

class RandomJokeScreen extends StatefulWidget {
  @override
  State<RandomJokeScreen> createState() => _RandomJokeScreenState();
}

class _RandomJokeScreenState extends State<RandomJokeScreen> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<JokeCubit>(context).fetchData();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text('randome jokes')),
      body: BlocConsumer<JokeCubit, JokeState>(
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
            body: Center(
              child: state.when(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (joke) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('joke is type: ${joke.type}'),
                    Text('joke: ${joke.setup}'),
                    Text('joke answer: ${joke.punchline}'),
                    ElevatedButton(
                      onPressed: () {
                        state.maybeWhen(
                            loaded: (joke) =>
                                context.read<JokeCubit>().fetchData(),
                            orElse: () {});
                      },
                      child: const Text('load a new joke'),
                    ),
                  ],
                ),
                error: (error) => Center(
                  child: Text(error.toString()),
                ),
              ),
            ),
          );
        },
      ),
    ));
  }
}
