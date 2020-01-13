import 'package:fixnum/fixnum.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as lngrpc;
import 'mpp_record.dart';

class Hop {
  /// The unique channel ID for the channel. The first 3 bytes are
  /// the block height, the next 3 the index within the block, and
  /// the last 2 bytes are the output index for the channel.
  final Int64 chanId;

  final Int64 chanCapacity;
  final int expiry;
  final Int64 amtToForwardMsat;
  final Int64 feeMsat;

  /// An optional public key of the hop. If the public key is given,
  /// the payment can be executed without relying on a copy of the
  /// channel graph.
  final String pubKey;

  /// If set to true, then this hop will be encoded using the new variable
  /// length TLV format. Note that if any custom tlv_records below are
  /// specified, then this field MUST be set to true for them to be encoded
  /// properly.
  final bool tlvPayload;

  /// An optional TLV record that signals the use of an MPP payment.
  /// If present, the receiver will enforce that that the same mpp_record
  /// is included in the final hop payload of all non-zero payments in the
  /// HTLC set. If empty, a regular single-shot payment is or was attempted.
  final MPPRecord mppRecord;

  /// An optional set of key-value TLV records. This is useful within the
  /// context of the SendToRoute call as it allows callers to specify
  /// arbitrary K-V pairs to drop off at each hop within the onion.
  final Map<Int64, List<int>> customRecords;

  Hop({
    this.chanId,
    this.chanCapacity,
    this.expiry,
    this.amtToForwardMsat,
    this.feeMsat,
    this.pubKey,
    this.tlvPayload,
    this.mppRecord,
    this.customRecords,
  });

  Hop.fromGrpc(lngrpc.Hop h)
      : chanId = h.chanId,
        chanCapacity = h.chanCapacity,
        expiry = h.expiry,
        amtToForwardMsat = h.amtToForwardMsat,
        feeMsat = h.feeMsat,
        pubKey = h.pubKey,
        tlvPayload = h.tlvPayload,
        mppRecord =
            h.mppRecord != null ? MPPRecord.fromGrpc(h.mppRecord) : null,
        customRecords = h.customRecords;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['chan_id'] = chanId;
    data['chan_capacity'] = chanCapacity;
    data['expiry'] = expiry;
    data['amt_to_forward_msat'] = amtToForwardMsat;
    data['fee_msat'] = feeMsat;
    data['pub_key'] = pubKey;
    data['tlv_payload'] = tlvPayload;
    data['mpp_record'] = mppRecord;
    if (customRecords != null) {
      data['custom_records'] = customRecords;
    }
    return data;
  }
}
