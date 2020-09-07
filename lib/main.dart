import 'package:agenda/screens/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(AgendaApp());

class AgendaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple[700],
        accentColor: Colors.purple[300],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.purple[500],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: ListaContatos(),
    );
  }
}
