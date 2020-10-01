import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:mapa_ufsm/model.dart';

class PontoInteresse extends StatelessWidget {
  static const routeName = '/ponto-interesse';
  Future<PontoInteresseModel> futurePonto;



  Future<PontoInteresseModel> fetchPonto(int id) async {

    final response = await http.get("http://192.168.0.107:8090/ponto/${id}");
    final pi = pontoInteresseModelFromJson(response.body);

    if(response.statusCode == 200) {
      return pi;
    } else {
      throw Exception("falha ao carregar o ponto");
    }
  }


  @override
  Widget build(BuildContext context) {

    final int args = ModalRoute.of(context).settings.arguments;

    futurePonto = fetchPonto(args);
    //print(args);

    return Scaffold(
        appBar: AppBar(
            title: Text('Ponto Interesse'),
        ),

        body: Center(
            child: FutureBuilder<PontoInteresseModel>(
                future: futurePonto,
                builder: (context, snapshot){
                  if(snapshot.hasData){
                    return Container(

                        margin: EdgeInsets.all(8.0),
                        child: ListView(
                            children: [
                              Container (
                                  child: Text(snapshot.data.nome),
                              ),
                              Container(

                                  child: Image.asset(snapshot.data.img),
                              ),
                              Container(

                                  margin: EdgeInsets.only(top: 8.0),
                                  child: Text(snapshot.data.descricao),
                              ),

                                ],
                            ),
                        );

                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }

                  return CircularProgressIndicator();
                }
    )

        ),
    );
  }
}
