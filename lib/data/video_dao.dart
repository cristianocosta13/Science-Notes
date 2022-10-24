
import 'package:sciencenotes/data/db_helper.dart';
import 'package:sciencenotes/domain/content.dart';
import 'package:sqflite/sqflite.dart';

class VideoDao {

  // Future<void> salvarContent({required People user}) async {
  //   DBHelper dbHelper = DBHelper();
  //   Database db = await dbHelper.initDB();
  //
  //   await db.insert('user', user.toJson());
  // }

  // Future<bool> autenticar({required String user, required String password}) async {
  //   DBHelper dbHelper = DBHelper();
  //   Database db = await dbHelper.initDB();
  //
  //   String sql = 'SELECT * '
  //       'FROM user '
  //       'WHERE username = ? AND password = ?;';
  //
  //   final result = await db.rawQuery(sql, [user, password]);
  //
  //   return result.isNotEmpty;
  // }

  listarVideo() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM video;';
    final result = await db.rawQuery(sql);

    print(result);
    // List<Video> lista = <Video>[];
    // for(var json in result){
    //   Video video = Video.fromJson(json);
    //   lista.add(video);
    // }
    //
    // return lista;
  }

}