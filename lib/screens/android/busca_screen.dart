import 'package:flutter/material.dart';
import 'package:mapa_ufsm/model.dart';
import 'package:mapa_ufsm/screens/android/ponto_interesse.dart';

class Busca extends StatelessWidget {

  static const routeName = '/busca';
  @override
  Widget build(BuildContext context) {

    final List<Coordenadas> args = ModalRoute.of(context).settings.arguments;
    final List<ListTile> elemtnos = [];


    args.forEach((element) {
      elemtnos.add(ListTile(
        title: Text(element.nome),
        onTap: () {
          Navigator.pushNamed(
            context,
            PontoInteresse.routeName,
            arguments:element.id,
          );
        },
      ));
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Busca'),
      ),

      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 8.0),

          child: ListView(
            children: elemtnos,

          ),
        ),
      ),
    );
  }

}
