import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper1 {
  //create database
  // OpenDb - user defined method to create db
  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('Login', version: 1,
        onCreate: (sql.Database db, int version) async {
          await createTable(db);
        });
  }

  //create Table
  static Future<void> createTable(sql.Database db) async {
    await db.execute("""CREATE TABLE Login_Registration(
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       name TEXT,
       password TEXT,
       email TEXT
      )""");
  }

  static Future<int>CreateUser(String name, String passwd, String email) async{
  final db = await SQLHelper1.OpenDb();
  final userdata = {'name':name,'pass':passwd,'email':email};
  final id = db.insert("Login_Registration", userdata);
  return id;


  }
  static Future<List<Map<String,dynamic>>>  ReadUser()async{
    final db = await SQLHelper1.OpenDb();
    final data = db.rawQuery("SELECT * FROM Login_Registration");
    return data;



  }
}
