import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:sciencenotes/pages/enter_page.dart';

class EnterApi {
  final String _baseUrl = "https://science-notes.joscristiano.repl.co/";

  Future<bool> findByUser(String username, String password) async {
    Uri url = Uri.http(_baseUrl, "login/$username/$password");
    Response response = await http.get(url);

    // TESTE
    print(response.statusCode);
    print(response.body);

    var json = jsonDecode(response.body);
    if (json['logado'] == true) {
      return true;
    }
    return false;
  }
}