class Success{
  int code;
  String body;
  Success({this.code = 200, required this.body});
}

class Failure{
  int code;
  Object errorResponse;
  Failure(this.code, this.errorResponse);
}