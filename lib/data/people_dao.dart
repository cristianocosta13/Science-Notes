import 'package:sqflite/sqflite.dart';
import 'package:sciencenotes/domain/users.dart';
import 'package:sciencenotes/data/DBhelper.dart';


class UserDao {

  Future<void> salvarUser({required Users user}) async {
    Helper dbHelper = Helper();
    Database db = await dbHelper.initDB();

    await db.insert('usuarios', user.toJson());
  }

  Future<bool> autenticar({required String username, required String password}) async {
    Helper dbHelper = Helper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * '
                 'FROM usuarios '
                 'WHERE username = ? AND password = ?;';

    final result = await db.rawQuery(sql, [username, password]);

    return result.isNotEmpty;
  }

  Future<bool> exclusividade({required String username}) async {
    Helper dbHelper = Helper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * '
                 'FROM usuarios '
                 'WHERE username = ?;';
    final resposta = await db.rawQuery(sql,[username]);
    return resposta.isNotEmpty;
  }

  listarUsers() async {
    Helper dbHelper = Helper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM usuarios;';
    final result = await db.rawQuery(sql);

    List<Users> lista = <Users>[];
    for(var json in result){
      Users usuario = Users.fromJson(json);
      lista.add(usuario);
    }

    return lista;
  }

}