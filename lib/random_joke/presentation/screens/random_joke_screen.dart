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
      body: BlocBuilder<JokeCubit, JokeState>(
        builder: (context, state) {
          if (state is JokeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is JokeError) {
            return Center(
              child: Text(state.error),
            );
          }
          var joke = (state as JokeLoaded).joke;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Joke(joke),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text('load a new joke'),
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}

class Joke extends StatelessWidget {
  final joke;
  const Joke(this.joke);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('joke is type: ${joke.type}'),
        Text('joke: ${joke.setup}'),
        Text('joke answer: ${joke.punchline}'),
      ],
    );
  }
}
