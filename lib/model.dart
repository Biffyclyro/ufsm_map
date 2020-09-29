import 'dart:convert';

PontoInteresseModel pontoInteresseModelFromJson(String str) => PontoInteresseModel.fromJson(json.decode(str));

String pontoInteresseModelToJson(PontoInteresseModel data) => json.encode(data.toJson());

class PontoInteresseModel {
    PontoInteresseModel({
        this.pontoId,
        this.img,
        this.nome,
        this.descricao,
    });

    int pontoId;
    String img;
    String nome;
    String descricao;

    factory PontoInteresseModel.fromJson(Map<String, dynamic> json) => PontoInteresseModel(
        pontoId: json["pontoId"],
        img: json["img"],
        nome: json["nome"],
        descricao: json["descricao"],
    );

    Map<String, dynamic> toJson() => {
        "pontoId": pontoId,
        "img": img,
        "nome": nome,
        "descricao": descricao,
    };
}


List<Coordenadas> coordenadasFromJson(String str) => List<Coordenadas>.from(json.decode(str).map((x) => Coordenadas.fromJson(x)));

class Coordenadas {
  Coordenadas({
    this.id,
    this.nome,
    this.img,
    this.descricao,
    this.lat,
    this.lng,
  });

  int id;
  String nome;
  String img;
  String descricao;
  double lat;
  double lng;

  factory Coordenadas.fromJson(Map<String, dynamic> json) => Coordenadas(
      id: json["id"],
      nome: json["nome"],
      img: json["img"],
      descricao: json["descricao"],
      lat: json["lat"].toDouble(),
      lng: json["lng"].toDouble(),
  );
}

