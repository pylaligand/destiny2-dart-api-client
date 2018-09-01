part of destiny2_api.api;

@Entity()
class GlobalAlertType {
  /// The underlying value of this enum member.
  final int value;

  const GlobalAlertType._internal(this.value);

  static const GlobalAlertType globalAlert = const GlobalAlertType._internal(0);
  static const GlobalAlertType streamingAlert = const GlobalAlertType._internal(1);
}

class GlobalAlertTypeTypeTransformer extends TypeTransformer<GlobalAlertType> {

  @override
  dynamic encode(GlobalAlertType data) {
    return data.value;
  }

  @override
  GlobalAlertType decode(dynamic data) {
    switch (data) {
      case 0: return GlobalAlertType.globalAlert;
      case 1: return GlobalAlertType.streamingAlert;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

