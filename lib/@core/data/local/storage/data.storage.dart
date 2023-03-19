import 'package:get_storage/get_storage.dart';
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

  setToken(Map<String, dynamic>? value) async =>
      await _storage?.write(_token, value);

  getToken() => _storage?.read(_token);

  setCredentials(CredentialsToken? value) async =>
      await _storage?.write(_credentials, value);

  // the first save, _storage?.read(_credentials) is CredentialsToken, then it is Map<String, dynamic> json
  CredentialsToken? getCredentials() => _storage?.read(_credentials) != null
      ? _storage?.read(_credentials) is CredentialsToken
          ? _storage?.read(_credentials)
          : CredentialsToken.fromJson(_storage?.read(_credentials))
      : null;
}
