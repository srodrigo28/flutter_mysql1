import 'database.dart';
Future<void> main() async{    
    final database = Database();
    var mysqlConnection = await database.openConnection();
    var nome = 'luan santana';
    var id = 1;
     
    var sql1 = 'select * from aluno'; // lista todos
    var sql2 = 'update aluno set nome = ? where id = ? '; // atualiza 
    
    /*** valida se existe um id valido */
      if(id <= 0){
        // ignore: avoid_print
        print('Precisa preencher o numero valido');
      return ;
    }

    /*** valida se existe um nome para pesquisar */
    if(nome == ''){
      // ignore: avoid_print
      print('Precisa preencher o nome');
      return ;
    }

    var rsSelect = await mysqlConnection.query(sql1); // lista todos registros
    print('Todos usuários');
    for (var row in rsSelect) { // lista os dados usando for
      print(row['id']); // pega id
      print(row['nome']); // pega nomes
    }

    var rsUpdate = await mysqlConnection.query(sql2, [ nome, id ]);

    print('Todos Atualizados');
    for (var row in rsSelect) { // lista os dados usando for
      print(row['id']); // pega id
      print(row['nome']); // pega nomes
    }
}