part of destiny2_api.api;

@Entity()
class DestinyDestinyGender {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyGender._internal(this.value);

  static const DestinyDestinyGender male = const DestinyDestinyGender._internal(0);
  static const DestinyDestinyGender female = const DestinyDestinyGender._internal(1);
  static const DestinyDestinyGender unknown = const DestinyDestinyGender._internal(2);
}

class DestinyDestinyGenderTypeTransformer extends TypeTransformer<DestinyDestinyGender> {

  @override
  dynamic encode(DestinyDestinyGender data) {
    return data.value;
  }

  @override
  DestinyDestinyGender decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyGender.male;
      case 1: return DestinyDestinyGender.female;
      case 2: return DestinyDestinyGender.unknown;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

