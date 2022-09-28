// ignore_for_file: unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import '../../components/editor.dart';
import '../../models/contatos.dart';

const _tituloAppBar = 'Cadastro de Clientes';

const _rotuloCampoNome = 'Nome';
const _dicaCampoNome = 'Insira seu nome';

const _rotuloCampoEndereco = 'Endereço';
const _dicaCampoEndereco = 'Insira seu endereço';


const _rotuloCampoTelefone = 'Telefone';
const _dicaCampoTelefone = 'Insira seu número';


const _rotuloCampoEmail = 'E-mail';
const _dicaCampoEmail = 'Insira seu e-mail';


const _rotuloCampoCpf = 'CPF';
const _dicaCampoCpf = 'Insira seu CPF';

const _textoBotaoConfirmar = 'Confirmar';

class FormularioContatos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioContatosState();
  }
}

class FormularioContatosState extends State<FormularioContatos> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();
  final TextEditingController _controladorCampoNome = TextEditingController();
  final TextEditingController _controladorCampoEndereco = TextEditingController();
  final TextEditingController _controladorCampoTelefone = TextEditingController();
  final TextEditingController _controladorCampoEmail = TextEditingController();
  final TextEditingController _controladorCampoCpf = TextEditingController();
  
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controlador: _controladorCampoNome,
              rotulo: _rotuloCampoNome,
              dica: _dicaCampoNome,
            ),
            Editor(
              controlador: _controladorCampoEndereco,
              rotulo: _rotuloCampoEndereco,
              dica: _dicaCampoEndereco,
            ),
            Editor(
              controlador: _controladorCampoTelefone,
              rotulo: _rotuloCampoTelefone,
              dica: _dicaCampoTelefone,
            ),
            Editor(
              controlador: _controladorCampoEmail,
              rotulo: _rotuloCampoEmail,
              dica: _dicaCampoEmail,
            ),
            Editor(
              controlador: _controladorCampoCpf,
              rotulo: _rotuloCampoCpf,
              dica: _dicaCampoCpf,
            ),
            ElevatedButton(
              child: Text(_textoBotaoConfirmar),
              onPressed: () {
                _criaContatos(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange)
            )
          ],
        ),
      ),
    );
  }

  void _criaContatos(BuildContext context) {
    // debugPrint('Clicou em confirmar');
    final String? nome = _controladorCampoNome.text;
    final String? endereco = _controladorCampoEndereco.text;
    final String? telefone = _controladorCampoEndereco.text;
    final String? email = _controladorCampoEndereco.text;
    final String? numeroCpf = _controladorCampoEndereco.text;

    if (nome != null && endereco != null && telefone != null && email != null && numeroCpf != null) {
      final contatoCriado = Contato(
        "Nome: " + nome,
        "Endereço: " + endereco,
        "Telefone: " + telefone,
        "E-mail: " + email,
        "CPF: " + numeroCpf,
      );
      Navigator.pop(context, contatoCriado);
    }
  }
}
