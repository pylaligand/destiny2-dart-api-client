part of destiny2_api.api;

@Entity()
class GlobalAlertLevel {
  /// The underlying value of this enum member.
  final int value;

  const GlobalAlertLevel._internal(this.value);

  static const GlobalAlertLevel unknown = const GlobalAlertLevel._internal(0);
  static const GlobalAlertLevel blue = const GlobalAlertLevel._internal(1);
  static const GlobalAlertLevel yellow = const GlobalAlertLevel._internal(2);
  static const GlobalAlertLevel red = const GlobalAlertLevel._internal(3);
}

class GlobalAlertLevelTypeTransformer extends TypeTransformer<GlobalAlertLevel> {

  @override
  dynamic encode(GlobalAlertLevel data) {
    return data.value;
  }

  @override
  GlobalAlertLevel decode(dynamic data) {
    switch (data) {
      case 0: return GlobalAlertLevel.unknown;
      case 1: return GlobalAlertLevel.blue;
      case 2: return GlobalAlertLevel.yellow;
      case 3: return GlobalAlertLevel.red;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

