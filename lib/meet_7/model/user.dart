import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  User({
    this.name,
    this.age,
  });
  String? name;
  int? age;

  @override
  List<Object?> get props => [name, age];
}
