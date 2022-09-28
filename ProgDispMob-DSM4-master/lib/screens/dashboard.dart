// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:progdispmobdsm4/screens/contatos/lista_contatos.dart';
import 'package:progdispmobdsm4/screens/transferencias/lista_transferencia.dart';
import '../../models/transferencia.dart';
import 'transferencias/formulario_transferencia.dart';

const _tituloAppBar = 'Dashboard';

class Dashboard extends StatefulWidget {
  final List<Dashboard> _Dashboard = [];

  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
        backgroundColor: Colors.orange,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: SafeArea(
          child: Column(
          children: <Widget>[
          GestureDetector(
            onTap: () => (Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ListaContatos();
              },
            ),)),
            child: Container(
            // ignore: prefer_const_constructors
            constraints: BoxConstraints.expand(
              width: 160.0,
              height: 115.0,
            ),
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            color: Colors.orange,
            alignment: Alignment.bottomLeft,
            // ignore: prefer_const_constructors
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Icon(Icons.contact_phone),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Text("Contatos"),
                )
              ],
            ),
          ),),
          GestureDetector(
            onTap: () => (Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ListaTransferencia();
              },
            ),)),
            child: Container(
            // ignore: prefer_const_constructors
            constraints: BoxConstraints.expand(
              width: 160.0,
              height: 115.0,
            ),
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            color: Colors.orange,
            alignment: Alignment.bottomLeft,
            // ignore: prefer_const_constructors
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Icon(Icons.monetization_on),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Text("Transferência"),
                ), 
              ],
            ),
          ),)
        ],
      )),
    );
  }
}