import 'dart:async';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:mapa_ufsm/model.dart';
import 'package:http/http.dart' as http;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapa_ufsm/screens/android/ponto_interesse.dart';
import 'package:mapa_ufsm/screens/android/busca_screen.dart';
import 'package:geolocator/geolocator.dart';



class MapUniversidade extends StatefulWidget {
  static const routeName = '/';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MapUniversidade> {
  GoogleMapController mapController;

  Future<List<Coordenadas>> coords;
  final LatLng _center = LatLng(0,0);
  StreamSubscription<Position> positionStream;
  final Map<String, Marker> _markers = {};


  Future<List<Coordenadas>> fetchCoordenadas() async {

    final response = await http.get("http://192.168.0.107:8090/ponto");
    final coords = coordenadasFromJson(response.body);

    if(response.statusCode == 200) {
      return coords;
    } else {
      throw Exception("falha ao carregar o ponto");
    }
  }




  _MyAppState() {
    this.positionStream = getPositionStream().listen(
            (Position position) {
          _setCenter(position);

        }
    );
  }

  void _setCenter(Position position) {

    this.mapController.animateCamera(
      CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(-29.721931, -53.718147),
            //target: LatLng(position.latitude, position.longitude),
            zoom: 18,
          )
      ),
    );

  }


  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    this.coords = this.fetchCoordenadas();


    return FutureBuilder<List<Coordenadas>> (
        future: this.coords,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            snapshot.data.forEach( (c) => {

              this._markers[c.nome] = Marker(
                markerId: MarkerId(c.nome),
                position: LatLng(c.lat,c.lng),
                onTap: () {
                  Navigator.pushNamed(context,
                    PontoInteresse.routeName,
                    arguments:c.id,
                  );
                },

              ),

              print(c.id)
            });

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
                        title: Text('Buscar Ponto'),

                        onTap: () {
                          Navigator.pushNamed(
                              context,
                              Busca.routeName,
                              arguments: snapshot.data 
                          );
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
                    //    zoom: 11.0,
                  ),
                  myLocationEnabled: true,
                  markers: this._markers.values.toSet()
              ),




            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          return CircularProgressIndicator();
        }
    );
  }
}
