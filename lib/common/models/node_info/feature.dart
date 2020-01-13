import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;

class Feature {
  final int key;
  final String name;
  final bool isRequired;
  final bool isKnown;

  Feature(this.key, this.name, this.isRequired, this.isKnown);

  Feature.fromGrpc(int key, grpc.Feature f)
      : key = key,
        name = f.name,
        isRequired = f.isRequired,
        isKnown = f.isKnown;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['is_required'] = isRequired;
    data['is_known'] = isKnown;
    return data;
  }
}
