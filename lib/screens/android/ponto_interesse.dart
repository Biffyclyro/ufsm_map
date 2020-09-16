import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PontoInteresse extends StatelessWidget {
  static const routeName = '/ponto-interesse';

  @override
  Widget build(BuildContext context) {

    print(http.get('http://localhost:8090/ponto') );
    return Scaffold(
      appBar: AppBar(
        title: Text('PONTO DE INTERESSE'),
      ),

      body: Center(
        child: Container(

          margin: EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Container(
                  
                child: Image.asset('images/poli.jpg'),
              ),
              Container(

                margin: EdgeInsets.only(top: 8.0),
                child: Text('Texto exemplo do ponto de interesse'),
              ),

              Container(

                margin: EdgeInsets.only(top: 8.0),
                child: Text('Horário de funcionamento 00:00h às 00:00h'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
