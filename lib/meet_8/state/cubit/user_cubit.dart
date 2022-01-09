import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState());

  int numberUser = 0;

  void onInit() => emit(
        state.copyWith(
          status: UserStatus.loading,
        ),
      );

  void onLoad() {
    numberUser++;
    emit(
      state.copyWith(status: UserStatus.loaded),
    );
  }
}
