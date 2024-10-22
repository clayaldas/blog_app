import 'dart:math';

import 'package:blog_app/src/presentation/utils/validation_item.dart';

class LoginState {
  ValidationItem email;
  ValidationItem password;

  LoginState(
      {this.email = const ValidationItem(),
      this.password = const ValidationItem()});

  LoginState copyWith({ValidationItem? email, ValidationItem? password}) =>
      LoginState(
          email: email ?? this.email, password: password ?? this.password);
}
