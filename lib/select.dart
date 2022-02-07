import 'database.dart';
Future<void> main() async{    
    final database = Database();
    var mysqlConnection = await database.openConnection();
    // var nome = 'ana';
    // var id = 1;
     
       var sql1 = 'select * from aluno'; // lista todos
    // var sql2 = 'select * from aluno where id = 1 '; // lista por id
    // var sql3 = 'select * from aluno where id = ? '; // lista por paramentro id
    // var sql4 = " select * from aluno where nome = ? "; // lista por paramentro nome
    
    
    var rsSelect = await mysqlConnection.query(sql1); // lista todos registros
    // var rsSelect = await mysqlConnection.query(sql4, [id]);
    // var rsSelect = await mysqlConnection.query(sql2, [nome]);

    for (var row in rsSelect) { // lista os dados usando for

      // ignore: avoid_print
      // print( row['nome']); // pega só a coluna nome
      // ignore: avoid_print
         print(" $row['id'] - $row['nome'] "); // pega todas colunas passadas

      //print( "id: $row['id']");
      
    }
}