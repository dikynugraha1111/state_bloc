part of 'user_cubit.dart';

enum UserStatus {
  loading,
  loaded,
  failed,
}

extension UserStatusExt on UserStatus {
  bool get isLoading => this == UserStatus.loading;
  bool get isLoaded => this == UserStatus.loaded;
  bool get isFailed => this == UserStatus.failed;
}

class UserState extends Equatable {
  const UserState({
    this.stateStatus = UserStatus.loading,
  });

  final UserStatus stateStatus;

  UserState copyWith({
    UserStatus? status,
  }) {
    return UserState(
      stateStatus: status ?? stateStatus,
    );
  }

  @override
  List<Object> get props => [];
}
