import 'package:flutter/material.dart';
import 'package:todo_list/cadastroscreen.dart';
import 'package:todo_list/task.dart';


class Tarefas extends StatefulWidget {
   Tarefas ({ Key? key }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Tarefas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text(
            "OLX",
            style: TextStyle(color: Colors.white),

          ),
          centerTitle: true,
        ),
        body: ListView(
          children: const [
            ListTile(title: Text("Iphone RS 5.000,00"),
                    subtitle: Text("Marca de celular, com configurações padrão"),
                    textColor: Colors.black,
            ),
            ListTile(title: Text("Fone de ouvido RS 100,0"),
                    subtitle: Text("Fone de ouvido sem fio, conecção via bluetooth"),
                    textColor: Colors.black,
            ),

            ListTile(title: Text("Caderno RS 20,00"),
                    subtitle: Text("Caderno de 20 matérias"),
                    textColor: Colors.black,
            ),

          ],

        ),
    
        floatingActionButton: FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            child: const Icon(Icons.add),
            onPressed: () async {
                Navigator.pop(context);  //Inserindo um float Botton para voltar ao início do programa !!!
            },
        ),
    );
  }
}