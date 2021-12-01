import 'package:chat_app/models/users_response.dart';
import 'package:http/http.dart' as http;

import 'package:chat_app/global/environment.dart';
import 'package:chat_app/services/auth_service.dart';

import 'package:chat_app/models/usuario.dart';

class UsersService {
  Future<List<Usuario>> getUsuarios() async {
    String? token = await AuthService.getToken();

    try {
      final resp =
          await http.get(Uri.parse('${Environment.apiUrl}/users'), headers: {
        'Content-Type': 'application/json',
        //'x-token': await AuthService.getToken()
        'x-token': token.toString()
      });
      final usuarioResponse = usersResponseFromJson(resp.body);
      return usuarioResponse.usuarios;
    } catch (e) {
      return [];
    }
  }
}
