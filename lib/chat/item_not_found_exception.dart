/// Thrown when the item was not found
class ItemNotFoundException implements Exception {
  final String _s;
  ItemNotFoundException(this._s);
  @override
  String toString() => "ItemNotFoundException: '$_s'";
}
