import 'package:flutter/material.dart';

class PontoInteresse extends StatelessWidget {
  static const routeName = '/ponto-interesse';

  @override
  Widget build(BuildContext context) {
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
