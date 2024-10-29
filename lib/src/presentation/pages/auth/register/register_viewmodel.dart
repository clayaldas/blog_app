import 'package:blog_app/src/presentation/pages/auth/register/register_state.dart';
import 'package:blog_app/src/presentation/utils/validation_item.dart';
import 'package:flutter/material.dart';

class RegisterViewModel extends ChangeNotifier {
  RegisterState _state = RegisterState();

  RegisterState getState() {
    return _state;
  }

  void changeUserName(String value) {
    if (value.length >= 3) {
      _state =
          _state.copyWith(userName: ValidationItem(value: value, error: ''));
    } else {
      _state = _state.copyWith(
          userName:
              const ValidationItem(error: 'Debe tener al menos 3 caracteres'));
    }

    // notificar a los listeners que el estado ha cambiado
    notifyListeners();
  }

  // permite cambiar el valor de la varible: email
  void changeEmail(String value) {
    // final bool validEmailFormat = RegExp(
    //         r'^(([^<>()[]\.,;:\s@"]+(.[^<>()[]\.,;:\s@"]+)*)|(".+"))@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}])|(([a-zA-Z-0-9]+.)+[a-zA-Z]{2,}))$')
    //     .hasMatch(value);

    // if (!validEmailFormat) {
    //   _state = _state.copyWith(
    //       email: const ValidationItem(error: 'Formato de correo no válido'));
    // } else

    if (value.length >= 3) {
      _state = _state.copyWith(email: ValidationItem(value: value, error: ''));
    } else {
      // establecer un mensaje de error
      _state = _state.copyWith(
          email:
              const ValidationItem(error: 'Debe tener al menos 3 caracteres'));
    }

    // notificar a los listeners que el estado ha cambiado
    notifyListeners();
  }

  // permite cambiar el valor de la varible: pasword
  void changePassword(String value) {
    //_state = _state.copyWith(email: ValidationItem(value: value));

    if (value.length >= 3) {
      _state =
          _state.copyWith(password: ValidationItem(value: value, error: ''));
    } else {
      // establecer un mensaje de error
      _state = _state.copyWith(
          password:
              const ValidationItem(error: 'Debe tener al menos 3 caracteres'));
    }
    // notificar a los listeners que el estado ha cambiado
    notifyListeners();
  }

  // permite cambiar el valor de la varible: confirmPassword
  void changeConfirmPassword(String value) {
    if (value.length >= 3) {
      _state = _state.copyWith(
          confirmPassword: ValidationItem(value: value, error: ''));
    } else {
      // establecer un mensaje de error
      _state = _state.copyWith(
          confirmPassword:
              const ValidationItem(error: 'Debe tener al menos 3 caracteres'));
    }
    // notificar a los listeners que el estado ha cambiado
    notifyListeners();
  }

  //  se ejecuta al presionar el boton: "Registrarse"
  void register() {
    if (_state.isValid()) {
      print('UserName:: ${_state.userName.value}');
      print('Email:: ${_state.email.value}');
      print('Password:: ${_state.password.value}');
      print('Confirm Password:: ${_state.confirmPassword.value}');
    } else {
      print('Formulario no válido');
    }
  }
}
