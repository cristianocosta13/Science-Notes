import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Helper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "user.db");
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
      onUpgrade: onUpgrade,
    );

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'create table USUARIOS (id INTEGER PRIMARY KEY, email varchar(50), name varchar(50), image varchar(150), password varchar(8), username varchar(20), birthdate varchar(10));';
    await db.execute(sql);

    sql =
     "INSERT INTO USUARIOS (id, email, name, image, password, username, birthdate) "
        "VALUES (01, 'jfo3@aluno.ifal.edu.br', 'Júlia', 'https://animais.com', '12345', 'fjuliaaf', "
        "'21/04/2005');";
    await db.execute(sql);

  }

  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    
  }
}