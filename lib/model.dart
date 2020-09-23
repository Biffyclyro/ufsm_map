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
