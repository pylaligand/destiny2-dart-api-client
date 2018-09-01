part of destiny2_api.api;

@Entity()
class DestinyDestinyRecordValueStyle {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyRecordValueStyle._internal(this.value);

  static const DestinyDestinyRecordValueStyle integer = const DestinyDestinyRecordValueStyle._internal(0);
  static const DestinyDestinyRecordValueStyle percentage = const DestinyDestinyRecordValueStyle._internal(1);
  static const DestinyDestinyRecordValueStyle milliseconds = const DestinyDestinyRecordValueStyle._internal(2);
  static const DestinyDestinyRecordValueStyle boolean = const DestinyDestinyRecordValueStyle._internal(3);
  static const DestinyDestinyRecordValueStyle decimal = const DestinyDestinyRecordValueStyle._internal(4);
}

class DestinyDestinyRecordValueStyleTypeTransformer extends TypeTransformer<DestinyDestinyRecordValueStyle> {

  @override
  dynamic encode(DestinyDestinyRecordValueStyle data) {
    return data.value;
  }

  @override
  DestinyDestinyRecordValueStyle decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyRecordValueStyle.integer;
      case 1: return DestinyDestinyRecordValueStyle.percentage;
      case 2: return DestinyDestinyRecordValueStyle.milliseconds;
      case 3: return DestinyDestinyRecordValueStyle.boolean;
      case 4: return DestinyDestinyRecordValueStyle.decimal;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

