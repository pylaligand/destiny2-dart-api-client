part of destiny2_api.api;

@Entity()
class IgnoresIgnoreLength {
  /// The underlying value of this enum member.
  final int value;

  const IgnoresIgnoreLength._internal(this.value);

  static const IgnoresIgnoreLength none = const IgnoresIgnoreLength._internal(0);
  static const IgnoresIgnoreLength week = const IgnoresIgnoreLength._internal(1);
  static const IgnoresIgnoreLength twoWeeks = const IgnoresIgnoreLength._internal(2);
  static const IgnoresIgnoreLength threeWeeks = const IgnoresIgnoreLength._internal(3);
  static const IgnoresIgnoreLength month = const IgnoresIgnoreLength._internal(4);
  static const IgnoresIgnoreLength threeMonths = const IgnoresIgnoreLength._internal(5);
  static const IgnoresIgnoreLength sixMonths = const IgnoresIgnoreLength._internal(6);
  static const IgnoresIgnoreLength year = const IgnoresIgnoreLength._internal(7);
  static const IgnoresIgnoreLength forever = const IgnoresIgnoreLength._internal(8);
  static const IgnoresIgnoreLength threeMinutes = const IgnoresIgnoreLength._internal(9);
  static const IgnoresIgnoreLength hour = const IgnoresIgnoreLength._internal(10);
  static const IgnoresIgnoreLength thirtyDays = const IgnoresIgnoreLength._internal(11);
}

class IgnoresIgnoreLengthTypeTransformer extends TypeTransformer<IgnoresIgnoreLength> {

  @override
  dynamic encode(IgnoresIgnoreLength data) {
    return data.value;
  }

  @override
  IgnoresIgnoreLength decode(dynamic data) {
    switch (data) {
      case 0: return IgnoresIgnoreLength.none;
      case 1: return IgnoresIgnoreLength.week;
      case 2: return IgnoresIgnoreLength.twoWeeks;
      case 3: return IgnoresIgnoreLength.threeWeeks;
      case 4: return IgnoresIgnoreLength.month;
      case 5: return IgnoresIgnoreLength.threeMonths;
      case 6: return IgnoresIgnoreLength.sixMonths;
      case 7: return IgnoresIgnoreLength.year;
      case 8: return IgnoresIgnoreLength.forever;
      case 9: return IgnoresIgnoreLength.threeMinutes;
      case 10: return IgnoresIgnoreLength.hour;
      case 11: return IgnoresIgnoreLength.thirtyDays;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

