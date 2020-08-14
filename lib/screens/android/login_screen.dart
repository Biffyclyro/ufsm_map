import 'package:flutter/material.dart';
import 'package:mapa_ufsm/screens/android/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MAPA UFSM'),
      ),

      body: Center(
        child: Container(
          color: Colors.green,
          margin: EdgeInsets.only(top: 8.0),

          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(

                  decoration: InputDecoration(
                      labelText: 'Login',
                      hintText: 'Login'
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Senha',
                      hintText: 'Senha'
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 12, right: 8.0, left: 8.0),

                child: RaisedButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => HomeScreen()
                    ));
                  },
                  padding: const EdgeInsets.all(0.0),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                  elevation: 5.0,
                  child: Text('Entrar'),

                ),
              ),

              Center(
                  child: Text('Ainda não cadastrado? Cadastrar!',
                              style: TextStyle(color: Colors.blue),
                  )
              ),

            ],
          )
        ),
      ),
    );
  }


}