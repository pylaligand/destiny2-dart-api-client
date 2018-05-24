part of destiny2_api.api;

@Entity()
class DestinySocketTypeActionType {
  /// The underlying value of this enum member.
  final int value;

  const DestinySocketTypeActionType._internal(this.value);

  /// Indicates the type of actions that can be performed
  static const DestinySocketTypeActionType insertPlug = const DestinySocketTypeActionType._internal(0);
  /// Indicates the type of actions that can be performed
  static const DestinySocketTypeActionType infuseItem = const DestinySocketTypeActionType._internal(1);
  /// Indicates the type of actions that can be performed
  static const DestinySocketTypeActionType reinitializeSocket = const DestinySocketTypeActionType._internal(2);
}

class DestinySocketTypeActionTypeTypeTransformer extends TypeTransformer<DestinySocketTypeActionType> {

  @override
  dynamic encode(DestinySocketTypeActionType data) {
    return data.value;
  }

  @override
  DestinySocketTypeActionType decode(dynamic data) {
    switch (data) {
      case 0: return DestinySocketTypeActionType.insertPlug;
      case 1: return DestinySocketTypeActionType.infuseItem;
      case 2: return DestinySocketTypeActionType.reinitializeSocket;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

