part of destiny2_api.api;

@Entity()
class DestinyDestinyRecordToastStyle {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyRecordToastStyle._internal(this.value);

  static const DestinyDestinyRecordToastStyle none = const DestinyDestinyRecordToastStyle._internal(0);
  static const DestinyDestinyRecordToastStyle record = const DestinyDestinyRecordToastStyle._internal(1);
  static const DestinyDestinyRecordToastStyle lore = const DestinyDestinyRecordToastStyle._internal(2);
  static const DestinyDestinyRecordToastStyle badge = const DestinyDestinyRecordToastStyle._internal(3);
  static const DestinyDestinyRecordToastStyle metaRecord = const DestinyDestinyRecordToastStyle._internal(4);
  static const DestinyDestinyRecordToastStyle medalComplete = const DestinyDestinyRecordToastStyle._internal(5);
}

class DestinyDestinyRecordToastStyleTypeTransformer extends TypeTransformer<DestinyDestinyRecordToastStyle> {

  @override
  dynamic encode(DestinyDestinyRecordToastStyle data) {
    return data.value;
  }

  @override
  DestinyDestinyRecordToastStyle decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyRecordToastStyle.none;
      case 1: return DestinyDestinyRecordToastStyle.record;
      case 2: return DestinyDestinyRecordToastStyle.lore;
      case 3: return DestinyDestinyRecordToastStyle.badge;
      case 4: return DestinyDestinyRecordToastStyle.metaRecord;
      case 5: return DestinyDestinyRecordToastStyle.medalComplete;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

