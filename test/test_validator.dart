import 'package:test/test.dart';
import 'package:torden/common/validator.dart';

void main() {
  group("Validator", () {
    test('should validate onion addresses', () {
      Validator v = Validator();

      String invalid1 = "";
      bool result = v.onionAddress(invalid1);
      expect(result, false);

      String invalid2 = "1bcdefghijklmnop.onion"; // contains a 1
      result = v.onionAddress(invalid2);
      expect(result, false);

      String invalid3 = "abcdefghijklmnopq.onion"; // not 16 or 56 chars
      result = v.onionAddress(invalid3);
      expect(result, false);

      String invalid4 = "abcdefghijklmnopq"; // not 16 or 56 chars
      result = v.onionAddress(invalid4);
      expect(result, false);

      String onionv2Char = "abcdefghijklmnop.onion";
      result = v.onionAddress(onionv2Char);
      expect(result, true);

      String onionv2Num = "abcdefghijklmnop.onion";
      result = v.onionAddress(onionv2Num);
      expect(result, true);

      String onionv2Mix = "a2c3e4g6i5k7mnop.onion";
      result = v.onionAddress(onionv2Mix);
      expect(result, true);

      String onionv3 =
          "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd.onion";
      result = v.onionAddress(onionv3);
      expect(result, true);
    });
  });
}
