import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Helper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "scienceNotes.db");
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
    );

    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'create table USER (id INTEGER PRIMARY KEY, email varchar(50), name varchar(50), image varchar(150), password varchar(8), username varchar(20), birthdate varchar(10));';
    await db.execute(sql);

    sql =
     "INSERT INTO USER (id, email, name, image, password, username, birthdate) "
        "VALUES (1, 'jfo3@aluno.ifal.edu.br', 'Júlia', 'https://animais.com', '12345', 'fjuliaaf', "
        "'21/04/2005');";
    await db.execute(sql);

    sql = 'create table MESSAGE (message varchar(150));';
    await db.execute(sql);

    sql = "INSERT INTO MESSAGE (message) "
        "VALUES ('Primeira mensagem do fórum.');";
    await db.execute(sql);

  }
}

