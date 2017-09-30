part of destiny2_api.api;

@Entity()
class IgnoresIgnoreStatus {
  /// The underlying value of this enum member.
  final int value;

  const IgnoresIgnoreStatus._internal(this.value);

  static const IgnoresIgnoreStatus notIgnored = const IgnoresIgnoreStatus._internal(0);
  static const IgnoresIgnoreStatus ignoredUser = const IgnoresIgnoreStatus._internal(1);
  static const IgnoresIgnoreStatus ignoredGroup = const IgnoresIgnoreStatus._internal(2);
  static const IgnoresIgnoreStatus ignoredByGroup = const IgnoresIgnoreStatus._internal(4);
  static const IgnoresIgnoreStatus ignoredPost = const IgnoresIgnoreStatus._internal(8);
  static const IgnoresIgnoreStatus ignoredTag = const IgnoresIgnoreStatus._internal(16);
  static const IgnoresIgnoreStatus ignoredGlobal = const IgnoresIgnoreStatus._internal(32);
}

class IgnoresIgnoreStatusTypeTransformer extends TypeTransformer<IgnoresIgnoreStatus> {

  @override
  dynamic encode(IgnoresIgnoreStatus data) {
    return data.value;
  }

  @override
  IgnoresIgnoreStatus decode(dynamic data) {
    switch (data) {
      case 0: return IgnoresIgnoreStatus.notIgnored;
      case 1: return IgnoresIgnoreStatus.ignoredUser;
      case 2: return IgnoresIgnoreStatus.ignoredGroup;
      case 4: return IgnoresIgnoreStatus.ignoredByGroup;
      case 8: return IgnoresIgnoreStatus.ignoredPost;
      case 16: return IgnoresIgnoreStatus.ignoredTag;
      case 32: return IgnoresIgnoreStatus.ignoredGlobal;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

