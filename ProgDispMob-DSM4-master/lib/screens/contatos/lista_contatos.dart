import 'package:flutter/material.dart';
import '../../models/contatos.dart';
import '../../models/transferencia.dart';
import './contatos_transferencia.dart.dart';

const _tituloAppBar = 'Lista de Contatos';

class ListaContatos extends StatefulWidget {
  final List<Contato> _contatos = [];

  @override
  State<StatefulWidget> createState() {
    return ListaContatosState();
  }
}

class ListaContatosState extends State<ListaContatos> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: widget._contatos.length,
        itemBuilder: ((context, indice) {
          final contato = widget._contatos[indice];
          return ItemContato(contato);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Contato?> future = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FormularioContatos();
              },
            ),
          );
          future.then(
            (contatoRecebido) {
              // debugPrint('Chegou no then do future');
              // debugPrint('$transferenciaRecebida');
              if (contatoRecebido != null) {
                setState(
                  () {
                    widget._contatos.add(
                      contatoRecebido,
                    );
                  },
                );
              }
            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
    );
  }
}

class ItemContato extends StatelessWidget {
  final Contato _contato;

  ItemContato(this._contato);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Card(
        child: ListTile(
          leading: Icon(Icons.person),
          title: Padding(
            padding: const EdgeInsets.only(right: 160.0),
            child: Column(
              children: [
                Text(
                  _contato.nome.toString(),
                textAlign: TextAlign.right, textDirection: TextDirection.ltr),
              ],
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(right: 160.0),
            child: Column(
              children: [
                Text(
                   _contato.endereco.toString(),
                textAlign: TextAlign.right, textDirection: TextDirection.ltr,),
                Text(
                   _contato.telefone.toString(),
                textAlign: TextAlign.right, textDirection: TextDirection.ltr),
                Text(
                   _contato.email.toString(),
                textAlign: TextAlign.right, textDirection: TextDirection.ltr),
                Text(
                   _contato.numeroCpf.toString(),
                textAlign: TextAlign.right, textDirection: TextDirection.ltr),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
