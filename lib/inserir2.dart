import 'database.dart';
Future<void> main() async{    
    final database = Database();
    var mysqlConnection = await database.openConnection();
    var nome = 'bastiao';
    var sql = 'insert into aluno(id, nome) values(?,?)';
    //var sql = 'insert into aluno(id,nome) values(?,?)';

    var resultado = await mysqlConnection.query(sql,[ null, nome ] );

    // ignore: avoid_print
    print(resultado.affectedRows);
}