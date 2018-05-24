part of destiny2_api.api;

@Entity()
class DestinyAdvancedAwaType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyAdvancedAwaType._internal(this.value);

  static const DestinyAdvancedAwaType none = const DestinyAdvancedAwaType._internal(0);
  /// Insert plugs into sockets.
  static const DestinyAdvancedAwaType insertPlugs = const DestinyAdvancedAwaType._internal(1);
}

class DestinyAdvancedAwaTypeTypeTransformer extends TypeTransformer<DestinyAdvancedAwaType> {

  @override
  dynamic encode(DestinyAdvancedAwaType data) {
    return data.value;
  }

  @override
  DestinyAdvancedAwaType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyAdvancedAwaType.none;
      case 1: return DestinyAdvancedAwaType.insertPlugs;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

