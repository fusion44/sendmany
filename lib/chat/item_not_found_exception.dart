/// Thrown when the item was not found
class ItemNotFoundException implements Exception {
  ItemNotFoundException(this._s);
  String toString() => "ItemNotFoundException: '$_s'";
  final String _s;
}
