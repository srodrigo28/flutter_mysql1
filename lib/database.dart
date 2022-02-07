import 'package:mysql1/mysql1.dart';

class Database{
  // table aluno campo nome
  Future<MySqlConnection> openConnection() {
    final settings = ConnectionSettings(
      host: 'localhost', 
      port: 3306,
      user: 'root',
      password: 'root',
      db: 'flutter_mysql'
    );
  return MySqlConnection.connect(settings);
  }
}