import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapa_ufsm/screens/android/cadastro.dart';
import 'package:mapa_ufsm/screens/android/login_screen.dart';
import 'package:mapa_ufsm/screens/android/ponto_interesse.dart';



class MapUniversidade extends StatefulWidget {
    static const routeName = '/';

    @override
    _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MapUniversidade> {
    GoogleMapController mapController;

    final LatLng _center = const LatLng(45.521563, -122.677433);

    void _onMapCreated(GoogleMapController controller) {
        mapController = controller;
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
                appBar: AppBar(
                        title: Text('LOCALIZAÇÃO ATUAL'),

                ),

                drawer: Drawer(
                        child: ListView(
                                padding: EdgeInsets.zero,
                                children: [
                                    DrawerHeader(
                                            child: Text('Menu'),
                                            decoration: BoxDecoration(
                                                    color: Colors.blue,
                                            ),
                                    ),

                                    ListTile(
                                            title: Text('Cadastro'),
                                            onTap: () {
                                                Navigator.pushNamed(context, Cadastro.routeName);
                                            },
                                    ),


                                    ListTile(
                                            title: Text('Login'),
                                            onTap: () {
                                                Navigator.pushNamed(context, LoginScreen.routeName);
                                            },
                                    ),


                                    ListTile(
                                            title: Text('Map'),
                                            onTap: () {
                                                Navigator.pushNamed(context, MapUniversidade.routeName);
                                            },
                                    ),

                                    ListTile(
                                            title: Text('PontoInteresse'),
                                            onTap: () {
                                                Navigator.pushNamed(context, PontoInteresse.routeName);
                                            },
                                    ),


                                    ListTile(
                                            title: Text('Close'),
                                            onTap: () {Navigator.pop(context);}
                                    )


                                            ],
                                            )
                                                    ),

                                            body: GoogleMap(
                                                    onMapCreated: _onMapCreated,
                                                    initialCameraPosition: CameraPosition(
                                                            target: _center,
                                                            zoom: 11.0,
                                                    ),
                                            ),
                                            );
  }
}
