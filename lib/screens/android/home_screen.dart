import 'package:flutter/material.dart';
import 'package:mapa_ufsm/screens/android/map_screen.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                    body: MapUniversidade(),
/*
      body: Stack(
        
        
        children: <Widget>[
          Container(

            child: MapUniversidade(),
            //child: Image.asset('images/map.png'),
          ),

          Center(
            child: Container(
              child: Icon(Icons.location_on, color: Colors.green, size: 30),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 237, top: 197),
            child: IconButton(
              icon: Icon(Icons.location_on, color: Colors.blue, size: 30,),

              onPressed: (){
                Navigator.pushNamed(context, PontoInteresse.routeName);

              },
            ),

          )


        ],
        
      ),
*/
    ); 
  }

}
