import 'package:flutter/material.dart';

class User {
  var _email;
  var _senha;

  void setEmail(String email) {
    this._email = email;
  }

  get email {
    return _email;
  }

  void setSenha(String senha) {
    this._senha = senha;
  }

  get senha {
    return _senha;
  }
}