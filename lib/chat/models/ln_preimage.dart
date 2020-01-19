import 'dart:math';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

/// A preimage object according to BOLT 02 of the lightning network spec.
class Preimage {
  /// Standard preimage size
  static const int size = 32;

  // bytes of the preimage
  List<int> _bytes;

  /// Creates a new Preimage object.
  ///
  /// If [bytes] is set it'll use these values to populate
  /// the preimage. Size of the list must be [size]
  ///
  /// Throws [ArgumentError] if bytes list is not the right size
  Preimage({Uint8List bytes}) {
    if (bytes == null) {
      final rand = Random.secure();
      _bytes = Uint8List(size);
      for (var i = 0; i < size; i++) {
        _bytes[i] = rand.nextInt(256);
      }
    } else if (bytes.length != size) {
      throw ArgumentError('Preimage size must be exactly $size bytes');
    } else {
      _bytes = [...bytes];
    }
  }

  /// Creates a Preimage object from an hex encoded String
  static Preimage fromString(String str) => Preimage(bytes: hex.decode(str));

  /// Encodes the Preimage to an hex encoded String
  String get hexString => hex.encode(_bytes);

  /// Converts the Preimage to a sha256 [Digest]
  Digest get sha256Hash => sha256.convert(_bytes);

  /// Get the preimage as a byte list
  List<int> get bytes => _bytes;

  @override
  int get hashCode => sha256Hash.bytes.hashCode;

  @override
  bool operator ==(dynamic other) =>
      other is Preimage && other.sha256Hash == sha256Hash;

  @override
  String toString() {
    return _bytes.toString();
  }
}
