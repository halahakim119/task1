
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../data/model/user_model.dart';
import '../../data/repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _UserRepository;

  UserBloc(this._UserRepository) : super(UserLoadingState()) {
    on<LoadUserEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        //emit loading state
        final  user = await _UserRepository.getData();
        // print(user[0].address);
       //read: user.fold();
        emit(UserLoadedState(user));
      } catch (e) {
        emit(userErrorState('error :\n${e.toString()}'));
      }
    });
  }
}