import 'package:flutter/material.dart';
import 'package:mapa_ufsm/screens/android/login_screen.dart';

class Cadastro extends StatelessWidget {
  static const routeName = '/cadastro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),

      body: Center(
        child: Container(

          margin: EdgeInsets.only(top: 8.0),
          child: ListView(
              children: [
                Container(

                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nome',
                      hintText: 'Entre com o nome'
                    ),
                  ),
                ),

                Container(

                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'E-mail',
                        hintText: 'Entre com o e-mail'
                    ),
                  ),
                ),

                  Container(

                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Senha',
                          hintText: 'Entre com a senha'
                      ),
                    ),
                  ),
                Container(
                  margin: const EdgeInsets.only(top: 12, right: 8.0, left: 8.0),

                  child: RaisedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, LoginScreen.routeName);

                    },
                    padding: const EdgeInsets.all(0.0),
                    textColor: Colors.white,
                    color: Colors.blueAccent,
                    elevation: 5.0,
                    child: Text('Cadastrar'),

                  ),
                ),

              ]
          ),
        ),
      ),
    );
  }
}
