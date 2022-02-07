import 'database.dart';
Future<void> main() async{    
    final database = Database();
    var mysqlConnection = await database.openConnection();

    var sql = 'insert into aluno(nome) values(?)';
    //var sql = 'insert into aluno(id,nome) values(?,?)';

    var resultado = await mysqlConnection.query(sql,[ 'xavier moreira' ] );

    // ignore: avoid_print
    print(resultado.affectedRows);
}