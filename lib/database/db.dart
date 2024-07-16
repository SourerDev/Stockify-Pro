import 'package:postgres/postgres.dart';
import 'package:stockify_pos/database/postgres/main.dart';
import 'package:stockify_pos/utils/env.dart';

final env = Env();

void dataBase() async {
  var conn = PostgreSql();
  conn.run();
}
