import 'dart:convert';

import 'package:devquiz/shared/models/awnser_model.dart';

class QuestionModel {
  final String title;
  final List<AwnserModel> awnsers;

  //assert para garantir que as awnsrs ou seja
  //a gente ter de ter por causa do layout o tamanho
  //ele ter de ser igual a 4 ou seja não pode ser menor que 4
  //e nem maior que 4.
  QuestionModel({
    required this.title,
    required this.awnsers,
  }) : assert(
          awnsers.length == 4,
    );

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'awnsers': awnsers.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'],
      awnsers: List<AwnserModel>.from(map['awnsers']?.map((x) => AwnserModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) => QuestionModel.fromMap(json.decode(source));
}
