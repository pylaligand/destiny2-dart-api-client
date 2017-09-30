part of destiny2_api.api;

@Entity()
class DestinyDestinyClass {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyClass._internal(this.value);

  static const DestinyDestinyClass titan = const DestinyDestinyClass._internal(0);
  static const DestinyDestinyClass hunter = const DestinyDestinyClass._internal(1);
  static const DestinyDestinyClass warlock = const DestinyDestinyClass._internal(2);
  static const DestinyDestinyClass unknown = const DestinyDestinyClass._internal(3);
}

class DestinyDestinyClassTypeTransformer extends TypeTransformer<DestinyDestinyClass> {

  @override
  dynamic encode(DestinyDestinyClass data) {
    return data.value;
  }

  @override
  DestinyDestinyClass decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyClass.titan;
      case 1: return DestinyDestinyClass.hunter;
      case 2: return DestinyDestinyClass.warlock;
      case 3: return DestinyDestinyClass.unknown;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

