import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOCALIZAÇÃO ATUAL'),

      ),

      body: Stack(
        
        children: <Widget>[
          Container(

            child: Image.asset('images/map.png'),
          ),
         
          Center(
            child: Container(
              child: Icon(Icons.add_location, color: Colors.green, size: 30),
            ),
          ) 
         
          
        ],
        
      ),

    );
  }

}
