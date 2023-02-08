import 'package:get_storage/get_storage.dart';
import 'package:learn_with_mee/@core/data/repo/model/LoginResponse.dart';
import 'package:learn_with_mee/@core/data/repo/model/credentials_token.model.dart';

class DataStorage {
  GetStorage? _storage;

  final _login = 'login';
  final _token = 'token';
  final _credentials = 'credentials';

  DataStorage() {
    _storage = GetStorage();
  }

  setLogin(String value) async => await _storage?.write(_login, value);

  getLogin() => _storage?.read(_login);

  setToken(LoginResponse value) async => await _storage?.write(_token, value);

  getToken() => _storage?.read(_token);

  setCredentials(CredentialsToken value) async => await _storage?.write(_credentials, value);

  getCredentials() => _storage?.read(_credentials);
}
