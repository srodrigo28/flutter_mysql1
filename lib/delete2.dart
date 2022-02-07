import 'database.dart';
Future<void> main() async{    
    final database = Database();
    var mysqlConnection = await database.openConnection();
    var id = 13;

    /*** valida se existe um id valido */
    if(id <= 0){
        // ignore: avoid_print
        print('Precisa preencher o numero valido');
      return ;
    }

    var sql1 = 'select * from aluno where id = ?';
    //var sql2 = 'delete from aluno where id = ? ';

    var rsSelect = await mysqlConnection.query(sql1, [id]); // lista todos registros

      
      


    
}