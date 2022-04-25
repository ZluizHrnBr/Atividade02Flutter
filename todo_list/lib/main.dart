

import 'package:flutter/material.dart';
import 'package:todo_list/cadastroscreen.dart';
import 'package:todo_list/pagina_inicial.dart';

void main() {
  runApp(MaterialApp(
      title: 'OLX',
      debugShowCheckedModeBanner:  false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Pagina_Inicial(),
  ));
}

