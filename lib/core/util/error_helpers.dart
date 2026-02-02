import 'dart:convert';

String getErrorMessage(err) {
  String message = '';
  try {
    String jsonString = err.toString().replaceAll('Exception: ', '');
    Map e = jsonDecode(jsonString);
    e.forEach((key, value) {
      if (value is List) {
        for (var element in value) {
          message += '$element ';
        }
      } else {
        message += '$value ';
      }
    });
  } catch (e) {
    message = err.toString().replaceAll('Exception: ', '');
  }
  return message;
}
