import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repositories/user_repository.dart';
import '../logic/user_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(
        RepositoryProvider.of<UserRepository>(context),
      )..add(LoadUserEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('The user App'),
        ),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UserLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is UserLoadedState) {
              return Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ExpansionTile(
                      title: Text(
                        ' user ${state.user[index].id}',
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Name: ${state.user[index].firstName} ${state.user[index].lastName} '),
                              Text(
                                  'phone number ${state.user[index].phoneNumber}'),
                              Text(
                                  'street address ${state.user[index].address!.streetAddress}'),
                              Text(
                                  'Credit Card number ${state.user[index].creditCard!.ccNumber}'),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  itemCount: state.user.length,
                ),
              );
            }
            if (state is userErrorState) {
              return Center(
                child: Text(state.error.toString()),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
