import 'dart:convert';

class AwnserModel {
  final String title;
  final bool isRight;

  //Criar Construtor
  //Vamos criar construtor nomeados
  //operador this para acessar no caso
  //this.title agente acessa o titulo
  AwnserModel({
    required this.title,
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRight': isRight,
    };
  }

  factory AwnserModel.fromMap(Map<String, dynamic> map) {
    return AwnserModel(
      title: map['title'],
      isRight: map['isRight'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AwnserModel.fromJson(String source) => AwnserModel.fromMap(json.decode(source));
}
