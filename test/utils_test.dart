import 'package:flutter_test/flutter_test.dart';
import 'package:sendmany/common/utils.dart';

void main() {
  test('fillString should fill strings correctly', () {
    var len1 = 'a';
    var len2 = 'aa';
    var len3 = 'aaa';
    var len4 = 'aaaa';
    var len13 = 'aaaaaaaaaaaaa';

    var result = fillString(len1); // Default values
    expect(result, 'a===');

    result = fillString(len2); // Default values
    expect(result, 'aa==');

    result = fillString(len3); // Default values
    expect(result, 'aaa=');

    result = fillString(len4); // Default values
    expect(result, 'aaaa');

    result = fillString(len13); // Default values
    expect(result, 'aaaaaaaaaaaaa===');

    result = fillString(len2, powerOf: 6, fillerChar: '!');
    expect(result, 'aa!!!!');
  });
}
