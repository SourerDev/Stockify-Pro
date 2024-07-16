import 'dart:async';

import 'package:postgres/postgres.dart';
import 'package:stockify_pos/database/db.dart';

class PostgreSql {
  Future<Connection> postgres = Connection.open(
    Endpoint(
        host: env.host,
        database: env.database,
        password: env.password,
        username: env.username),
    settings: ConnectionSettings(sslMode: SslMode.disable),
  );

  void run() async {
    postgres.then((value) async {
      var res = await value.execute('select * from a_table');
      print(res);
    });
  }
}
