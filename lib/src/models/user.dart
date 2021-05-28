class User {
  var _name;
  var _email;
  var _senha;

  void setName(String name) {
    this._name = name;
  }

  get name {
    return _name;
  }

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