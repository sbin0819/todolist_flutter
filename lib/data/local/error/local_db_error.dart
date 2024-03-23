import 'package:todolist/data/local/error/local_db_error_type.dart';

class LocalDBError {
  LocalDBErrorType localDBErrorType;
  String message;

  LocalDBError(
    this.localDBErrorType,
    this.message,
  );
}
