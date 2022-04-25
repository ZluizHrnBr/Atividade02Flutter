import 'dart:js';
import 'package:flutter/material.dart';
import 'package:todo_list/task.dart';
import 'package:todo_list/tarefas.dart';

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({ Key? key }) : super(key: key);

  @override
  State createState() => _State();
}

class _State extends State<CadastroScreen> {
  final TextEditingController _textController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  
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
        body: Form(
            key: _formkey,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: TextFormField(
                    controller: _textController,
                    style: TextStyle(fontSize: 18),
                    decoration: const InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(fontSize: 18), 
                    ),
                    validator: (value){
                        if(value == "usuario@hotmail.com"){
                          
                        }else{
                          return "Email incorreto";
                        }
                    },
                  ),
                ),

                Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: TextFormField(
                      style: TextStyle(fontSize: 18),
                      decoration: const InputDecoration(
                        labelText: "Senha",
                        labelStyle: TextStyle(fontSize: 18),

                      ),
                      validator: (value){
                        if(value == "1234"){
                          
                        }else{
                          return "Senha Incorreto";
                        }
                      },
                    ),
                ),
                Row(
                  children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 40,
                          child: ElevatedButton(
                              child: const Text(
                                  "Entrar",
                                  style: TextStyle(
                                      color: Colors.white,
                                  ),
                              ) ,
                          style: ElevatedButton.styleFrom(primary: Colors.green),
                          onPressed: (){
                            FocusScope.of(context).unfocus();
                            if(_formkey.currentState!.validate()){
                              Task newTask = Task(_textController.text);
                              Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Tarefas()));
                            }
                          },
                          ),
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        child:  RaisedButton(
                          color: Colors.red,
                          child: const Text(
                            "Voltar à tela inicial",
                            style: TextStyle(color: Colors.white),  
                          ),
                          onPressed: () {
                              Navigator.pop(context); 
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ),

      );
  }
}