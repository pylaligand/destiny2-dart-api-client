part of destiny2_api.api;

@Entity()
class DestinyRequestsActionsDestinySocketArrayType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyRequestsActionsDestinySocketArrayType._internal(this.value);

  /// If you look in the DestinyInventoryItemDefinition's \"sockets\" property, you'll see that there are two types of sockets: intrinsic, and \"socketEntry.\"  Unfortunately, because Intrinsic sockets are a whole separate array, it is no longer sufficient to know the index into that array to know which socket we're talking about. You have to know whether it's in the default \"socketEntries\" or if it's in the \"intrinsic\" list.
  static const DestinyRequestsActionsDestinySocketArrayType default_ = const DestinyRequestsActionsDestinySocketArrayType._internal(0);
  /// If you look in the DestinyInventoryItemDefinition's \"sockets\" property, you'll see that there are two types of sockets: intrinsic, and \"socketEntry.\"  Unfortunately, because Intrinsic sockets are a whole separate array, it is no longer sufficient to know the index into that array to know which socket we're talking about. You have to know whether it's in the default \"socketEntries\" or if it's in the \"intrinsic\" list.
  static const DestinyRequestsActionsDestinySocketArrayType intrinsic = const DestinyRequestsActionsDestinySocketArrayType._internal(1);
}

class DestinyRequestsActionsDestinySocketArrayTypeTypeTransformer extends TypeTransformer<DestinyRequestsActionsDestinySocketArrayType> {

  @override
  dynamic encode(DestinyRequestsActionsDestinySocketArrayType data) {
    return data.value;
  }

  @override
  DestinyRequestsActionsDestinySocketArrayType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyRequestsActionsDestinySocketArrayType.default_;
      case 1: return DestinyRequestsActionsDestinySocketArrayType.intrinsic;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

