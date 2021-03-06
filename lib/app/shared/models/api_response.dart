import 'dart:convert' as convert;

// Saves the return access to the backend.
class ApiResponse {

  final bool _ok;
  final _response;
  final String _error;

  // static method to create ApiResponse instance
  static create(dynamic response, String error) {
    return response != null && isOk(response.statusCode) ?
      ApiResponse._ok(response):
        ApiResponse._error(response, error);
  }

  // static method to compare code.
  static bool isOk(int code) {
    return code == 200 || code == 201;
  }

  // named constructor, isOK == true
  ApiResponse._ok(this._response):
    _ok = true, _error = null;


  // named constructor, isOK == false
  ApiResponse._error(this._response, this._error,):
    _ok = false;

  bool get ok {
    return _ok;
  }

  int get statusCode {
    return _response.statusCode;
  }

  dynamic get result {
    dynamic data = _response.data;
    try {
      if(data is String)
        return convert.jsonDecode(data);
    }catch(e) {}
    return data;
  }

  @override
  String toString() {
    return 'ApiResponse{ok: $ok, result: $result, _error: $_error}';
  }
}

class ResponseMock {
  final int statusCode;
  final dynamic data;

  ResponseMock({
    this.statusCode, this.data
  }):
    assert(statusCode != null),
    assert(data != null);
}