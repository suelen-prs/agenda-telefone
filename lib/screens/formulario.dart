import 'package:agenda/components/editor.dart';
import 'package:agenda/models/contato.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Criando Contato';
const _rotuloCampoNome = 'Nome';
const _dicaCampoNome = 'Nome Sobrenome';
const _rotuloCampoFone = 'Telefone';
const _dicaCampoFone = 'xxxxx-xxxx';
const _textoBotaoConfirmar = 'Confirmar';

class FormularioContato extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioContatoState();
  }
}

class FormularioContatoState extends State<FormularioContato>{
  final TextEditingController _controladorCampoFone = TextEditingController();
  final TextEditingController _controladorCampoNome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controlador: _controladorCampoNome,
              dica: _dicaCampoNome,
              rotulo: _rotuloCampoNome,
            ),
            Editor(
              controlador: _controladorCampoFone,
              dica: _dicaCampoFone,
              rotulo: _rotuloCampoFone,
              icone: Icons.phone,
            ),
            RaisedButton(
              child: Text(_textoBotaoConfirmar),
              onPressed: () => _criaContato(context),
            )
          ],
        ),
      ));
  }

  void _criaContato(BuildContext context) {
    final nome = _controladorCampoNome.text;
    final fone = _controladorCampoFone.text;

    if (nome != null && fone != null) {
      final contatoCriado = Contato(nome, fone);
      Navigator.pop(context, contatoCriado);
    }


  }

}