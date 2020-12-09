import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:convert' as convert;

import 'modal.dart';

const String baseURL = "https://type.fit/api/quotes";
Future<List<Quotes_model>> getQuot() async {
  final responseBody = (await http.get('https://type.fit/api/quotes'));
  print("responseBody");
  print(responseBody.body.toString());
  return Quotes_model.fromJsonList(convert.jsonDecode(responseBody.body));
}
