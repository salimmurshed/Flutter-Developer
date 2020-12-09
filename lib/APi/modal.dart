import 'dart:convert';

class Quotes_model {
  String text;
  String author;

  Quotes_model({this.text, this.author});

  Quotes_model.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['author'] = this.author;
    return data;
  }

  static List<Quotes_model> fromJsonList(jsonList) {
    return jsonList
        .map<Quotes_model>((obj) => Quotes_model.fromJson(obj))
        .toList();
  }
}
