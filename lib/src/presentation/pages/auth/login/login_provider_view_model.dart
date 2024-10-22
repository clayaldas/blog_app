import 'package:blog_app/src/presentation/pages/auth/login/login_state.dart';
import 'package:blog_app/src/presentation/utils/validation_item.dart';
import 'package:flutter/material.dart';

class LoginProviderViewModel extends ChangeNotifier {
  // crear una instancia privada de la clase LoginState
  LoginState _state = LoginState();

  // getters
  // regresa el valor del variable privada (_state)
  LoginState getState() {
    return _state;
  }

  // setters
  // permite cambiar el valor de la varible: email
  void changeEmail(String value) {
    //_state = _state.copyWith(email: ValidationItem(value: value));

    if (value.length >= 6) {
      _state = _state.copyWith(email: ValidationItem(value: value));
    } else {
      // establecer un mensaje de error
      _state = _state.copyWith(
          email:
              const ValidationItem(error: 'Debe tener al menos 6 caracteres'));
    }
    // notificar a los listeners que el estado ha cambiado
    notifyListeners();
  }

  // permite cambiar el valor de la varible: pasword
  void changePassword(String value) {
    if (value.length >= 3) {
      _state = _state.copyWith(password: ValidationItem(value: value));
    } else {
      // establecer un mensaje de error
      _state = _state.copyWith(
          password:
              const ValidationItem(error: 'Debe tener al menos 3 caracteres'));
    }

    // notificar a los listeners que el estado ha cambiado
    notifyListeners();
  }

  bool isValid() {
    // si todos los campos pasan la validacion regresar un true caso contrario un false
    if (_state.email.value.isEmpty && _state.password.value.isEmpty) {
      return false;
    }

    return true;
  }

  // se ejecuta al presionar el boton 'Iniciar sesión'
  void login() {
    if (isValid()) {
      print('Email: ${_state.email.value} ');

      print('Password: ${_state.password.value} ');
    } else {
      print('El formulario no es válido');
    }
  }
}
