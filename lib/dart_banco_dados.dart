import 'database.dart';
Future<void> main() async{    
    final database = Database();
    var mysqlConnection = await database.openConnection();

    var sql = 'insert into aluno(nome) values(?)';
    //var sql = 'insert into aluno(id,nome) values(?,?)';

    //var resultado = await mysqlConnection.query(sql,[ 'xavier moreira' ] );

    // ignore: avoid_print
    //print(resultado.affectedRows);

    var rsSelect = await mysqlConnection.query('select * from aluno');
    // ignore: avoid_print
    //for (var row in rsSelect) {
      // rsSelect.forEach((row){
    for (var row in rsSelect) {
      // ignore: avoid_print
      //print('Resultado por Indice');
      // ignore: avoid_print
      print(row);
      //print( "id: $row['id']");
      //print( "nome: $row['nome']");
    }
}