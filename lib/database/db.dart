import 'package:postgres/postgres.dart';

const username = String.fromEnvironment("USERNAME");

final conn = Connection.open(Endpoint(
    host: "localhost",
    database: "db_stockify_pos",
    username: "postgres",
    password: "pgadmin"));
