import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  final host = dotenv.env["HOST"].toString();
  final database = dotenv.env["DATABASE"].toString();
  final username = dotenv.env["USERNAME"].toString();
  final password = dotenv.env["PASSWORD"].toString();
}
