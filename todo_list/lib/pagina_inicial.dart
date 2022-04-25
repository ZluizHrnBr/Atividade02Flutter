import 'package:flutter/material.dart';
import 'package:todo_list/cadastroscreen.dart';


class Pagina_Inicial extends StatefulWidget {
  Pagina_Inicial ({ Key? key }) : super(key: key);

  @override
  State createState() => _State();
}

class _State extends State<Pagina_Inicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Página OLX",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: const Center(
          child: Text(
            "Clique no botão flutuante para acessar a página de cadastro",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
        onPressed: () async {
          Navigator.push(context, 
               MaterialPageRoute(builder: (context)=> CadastroScreen()));
        },
      ),


    );
  }
}