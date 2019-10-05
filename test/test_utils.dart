import 'package:test/test.dart';
import 'package:torden/common/utils.dart';

void main() {
  test('fillString should fill strings correctly', () {
    String len1 = 'a';
    String len2 = 'aa';
    String len3 = 'aaa';
    String len4 = 'aaaa';
    String len13 = 'aaaaaaaaaaaaa';

    String result = fillString(len1); // Default values
    expect(result, "a===");

    result = fillString(len2); // Default values
    expect(result, "aa==");

    result = fillString(len3); // Default values
    expect(result, "aaa=");

    result = fillString(len4); // Default values
    expect(result, "aaaa");

    result = fillString(len13); // Default values
    expect(result, "aaaaaaaaaaaaa===");

    result = fillString(len2, powerOf: 6, fillerChar: '!');
    expect(result, "aa!!!!");
  });
}
