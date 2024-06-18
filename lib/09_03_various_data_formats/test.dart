import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/09_03_various_data_formats/training.dart';
import 'package:test/test.dart';

void main() {
  test('Employee 객체를 직렬화, 역직렬화 테스트, 파일 쓰기 테스트', () {
    //employee 객체 생성
    Employee employee = Employee(name: '홍길동', age: 41);

    //객체를 Json으로 직렬화
    String serialJsonString = jsonEncode(employee.toJson());

    //Json을 객체로 역직렬화
    Employee reverseSerialString =
        Employee.fromJson(jsonDecode(serialJsonString));

    //직렬화된 파일이 company.txt에 저장
    File file = File('company.txt');
    file.writeAsStringSync(serialJsonString);

    //원본객체와 역직렬화된 객체가 동일한지 확인
    expect(reverseSerialString.name, equals(employee.name));
    expect(reverseSerialString.age, equals(employee.age));

    //파일의 내용과 직렬화된 파일이 같은지 비교
    String fileContent = file.readAsStringSync();
    expect(fileContent, equals(serialJsonString));
  });
}
