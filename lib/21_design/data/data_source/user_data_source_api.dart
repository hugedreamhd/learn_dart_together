import 'dart:convert';

final String jsonString = '''[
    {
      "id": 1,
      "name": "한석봉",
      "address": "서울 중구 신당동",
      "gender": "male"
    },
    {
      "id": 2,
      "name": "김석봉",
      "address": "서울 중구 당동",
      "gender": "male"
    },
    {
      "id": 3,
      "name": "한채이",
      "address": "서울 강서구 신월동",
      "gender": "female"
    }
  ]''';
// JSON 문자열을 List로 변환
List<dynamic> jsonList = jsonDecode(jsonString);
