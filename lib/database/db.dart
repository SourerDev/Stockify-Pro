import 'package:postgres/postgres.dart';
import 'package:stockify_pos/utils/env.dart';

final env = Env();

void dataBase() async {
  final conn = await Connection.open(
    Endpoint(
        host: env.host,
        database: env.database,
        username: env.username,
        password: env.password),
    settings: ConnectionSettings(sslMode: SslMode.disable),
  );
  await conn.execute('CREATE TABLE IF NOT EXISTS a_table ('
      '  id TEXT NOT NULL, '
      '  totals INTEGER NOT NULL DEFAULT 0'
      ')');
}
