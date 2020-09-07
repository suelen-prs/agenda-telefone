import 'package:agenda/models/contato.dart';
import 'package:flutter/material.dart';

import 'formulario.dart';

const _tituloAppBar = 'Contatos';

class ListaContatos extends StatefulWidget {
  final List<Contato> _contatos = List();

  @override
  State<StatefulWidget> createState() {
    return ListaContatosState();
  }
}

class ListaContatosState extends State<ListaContatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: ListView.builder(
        itemCount: widget._contatos.length,
        itemBuilder: (context, indice) {
          final contato = widget._contatos[indice];
          return ItemContato(contato);
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FormularioContato();
            })).then((contatoRecebido) => _atualiza(contatoRecebido));
          }),
    );
  }

  void _atualiza(Contato contatoRecebido) {
    if (contatoRecebido != null) {
      setState(() => widget._contatos.add(contatoRecebido));
    }
  }
}

class ItemContato extends StatelessWidget {
  final Contato _contato;

  ItemContato(this._contato);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.phone),
      title: Text(_contato.nome.toString()),
      subtitle: Text(_contato.fone.toString()),
    ));
  }
}
