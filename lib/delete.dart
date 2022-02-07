import 'database.dart';
Future<void> main() async{    
    final database = Database();
    var mysqlConnection = await database.openConnection();
    var id = 10;
     
    var sql1 = 'delete from aluno where id = ? '; // atualiza 
    
    /*** valida se existe um id valido */
    if(id <= 0){
        // ignore: avoid_print
        print('Precisa preencher o numero valido');
      return ;
    }

    // ignore: unused_local_variable
    var rsDelete = await mysqlConnection.query(sql1, [id]); // lista todos registros
    //print(rsDelete.affectedRows);

    /*** */
    try{
      rsDelete.affectedRows == 0;
      print('Usuário não encontrado');
    }catch(error){
      print(error);
    }
    
}