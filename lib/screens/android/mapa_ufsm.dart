import 'package:flutter/material.dart';
import 'package:mapa_ufsm/screens/android/ponto_interesse.dart';
import 'package:mapa_ufsm/screens/android/map_screen.dart';
import 'package:mapa_ufsm/screens/android/busca_screen.dart';

class MapaUFSM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:MapUniversidade.routeName,
      routes: {
        MapUniversidade.routeName: (context) => MapUniversidade(),
        PontoInteresse.routeName: (context) => PontoInteresse(),
        Busca.routeName: (context) => Busca(),
      },
    );
  }
}
