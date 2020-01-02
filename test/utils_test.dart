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

  test('convertMilliSatTo should convert correctly', () {
    var oneBTCinSat = 100000000.0;
    var oneBTCinMSat = oneBTCinSat * 1000.0;

    var result = convertMilliSatTo(BitcoinDenom.MilliSat, oneBTCinMSat);
    expect(result, oneBTCinMSat);

    result = convertMilliSatTo(BitcoinDenom.Satoshi, oneBTCinMSat);
    expect(result, oneBTCinSat);

    result = convertMilliSatTo(BitcoinDenom.Millibit, oneBTCinMSat);
    expect(result, 1000000.0);

    result = convertMilliSatTo(BitcoinDenom.Bitcoin, oneBTCinMSat);
    expect(result, 1.0);
  });

  test('convertSatTo should convert correctly', () {
    var oneBTCinSat = 100000000.0;
    var oneBTCinMSat = oneBTCinSat * 1000.0;

    var result = convertSatTo(BitcoinDenom.MilliSat, oneBTCinSat);
    expect(result, oneBTCinMSat);

    result = convertSatTo(BitcoinDenom.Satoshi, oneBTCinSat);
    expect(result, oneBTCinSat);

    result = convertSatTo(BitcoinDenom.Millibit, oneBTCinSat);
    expect(result, 1000.0);

    result = convertSatTo(BitcoinDenom.Bitcoin, oneBTCinSat);
    expect(result, 1.0);
  });
}
