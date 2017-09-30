part of destiny2_api.api;

@Entity()
class DestinyDestinyUnlockValueUIStyle {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyUnlockValueUIStyle._internal(this.value);

  /// Generally, Automatic means "Just show the number"
  static const DestinyDestinyUnlockValueUIStyle automatic = const DestinyDestinyUnlockValueUIStyle._internal(0);
  /// Show the number as a fractional value. For this to make sense, the value being displayed should have a comparable upper bound, like the progress to the next level of a Progression.
  static const DestinyDestinyUnlockValueUIStyle fraction = const DestinyDestinyUnlockValueUIStyle._internal(1);
  /// Show the number as a checkbox. 0 Will mean unchecked, any other value will mean checked.
  static const DestinyDestinyUnlockValueUIStyle checkbox = const DestinyDestinyUnlockValueUIStyle._internal(2);
  /// Show the number as a percentage. For this to make sense, the value being displayed should have a comparable upper bound, like the progress to the next level of a Progression.
  static const DestinyDestinyUnlockValueUIStyle percentage = const DestinyDestinyUnlockValueUIStyle._internal(3);
  /// Show the number as a date and time. The number will be the number of seconds since the Unix Epoch (January 1st, 1970 at midnight UTC). It'll be up to you to convert this into a date and time format understandable to the user in their time zone.
  static const DestinyDestinyUnlockValueUIStyle dateTime = const DestinyDestinyUnlockValueUIStyle._internal(4);
  /// Show the number as a floating point value that represents a fraction, where 0 is min and 1 is max. For this to make sense, the value being displayed should have a comparable upper bound, like the progress to the next level of a Progression.
  static const DestinyDestinyUnlockValueUIStyle fractionFloat = const DestinyDestinyUnlockValueUIStyle._internal(5);
  /// Show the number as a straight-up integer.
  static const DestinyDestinyUnlockValueUIStyle integer = const DestinyDestinyUnlockValueUIStyle._internal(6);
  /// Show the number as a time duration. The value will be returned as seconds.
  static const DestinyDestinyUnlockValueUIStyle timeDuration = const DestinyDestinyUnlockValueUIStyle._internal(7);
  /// Don't bother showing the value at all, it's not easily human-interpretable, and used for some internal purpose.
  static const DestinyDestinyUnlockValueUIStyle hidden = const DestinyDestinyUnlockValueUIStyle._internal(8);
}

class DestinyDestinyUnlockValueUIStyleTypeTransformer extends TypeTransformer<DestinyDestinyUnlockValueUIStyle> {

  @override
  dynamic encode(DestinyDestinyUnlockValueUIStyle data) {
    return data.value;
  }

  @override
  DestinyDestinyUnlockValueUIStyle decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyUnlockValueUIStyle.automatic;
      case 1: return DestinyDestinyUnlockValueUIStyle.fraction;
      case 2: return DestinyDestinyUnlockValueUIStyle.checkbox;
      case 3: return DestinyDestinyUnlockValueUIStyle.percentage;
      case 4: return DestinyDestinyUnlockValueUIStyle.dateTime;
      case 5: return DestinyDestinyUnlockValueUIStyle.fractionFloat;
      case 6: return DestinyDestinyUnlockValueUIStyle.integer;
      case 7: return DestinyDestinyUnlockValueUIStyle.timeDuration;
      case 8: return DestinyDestinyUnlockValueUIStyle.hidden;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

