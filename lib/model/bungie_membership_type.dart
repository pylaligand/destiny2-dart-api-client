part of destiny2_api.api;

@Entity()
class BungieMembershipType {
  /// The underlying value of this enum member.
  final int value;

  const BungieMembershipType._internal(this.value);

  /// The types of membership the Accounts system supports. This is the external facing enum used in place of the internal-only Bungie.SharedDefinitions.MembershipType.
  static const BungieMembershipType none = const BungieMembershipType._internal(0);
  /// The types of membership the Accounts system supports. This is the external facing enum used in place of the internal-only Bungie.SharedDefinitions.MembershipType.
  static const BungieMembershipType tigerXbox = const BungieMembershipType._internal(1);
  /// The types of membership the Accounts system supports. This is the external facing enum used in place of the internal-only Bungie.SharedDefinitions.MembershipType.
  static const BungieMembershipType tigerPsn = const BungieMembershipType._internal(2);
  /// The types of membership the Accounts system supports. This is the external facing enum used in place of the internal-only Bungie.SharedDefinitions.MembershipType.
  static const BungieMembershipType tigerBlizzard = const BungieMembershipType._internal(4);
  /// The types of membership the Accounts system supports. This is the external facing enum used in place of the internal-only Bungie.SharedDefinitions.MembershipType.
  static const BungieMembershipType tigerDemon = const BungieMembershipType._internal(10);
  /// The types of membership the Accounts system supports. This is the external facing enum used in place of the internal-only Bungie.SharedDefinitions.MembershipType.
  static const BungieMembershipType bungieNext = const BungieMembershipType._internal(254);
  /// The types of membership the Accounts system supports. This is the external facing enum used in place of the internal-only Bungie.SharedDefinitions.MembershipType.
  static const BungieMembershipType all = const BungieMembershipType._internal(-1);
}

class BungieMembershipTypeTypeTransformer extends TypeTransformer<BungieMembershipType> {

  @override
  dynamic encode(BungieMembershipType data) {
    return data.value;
  }

  @override
  BungieMembershipType decode(dynamic data) {
    switch (data) {
      case 0: return BungieMembershipType.none;
      case 1: return BungieMembershipType.tigerXbox;
      case 2: return BungieMembershipType.tigerPsn;
      case 4: return BungieMembershipType.tigerBlizzard;
      case 10: return BungieMembershipType.tigerDemon;
      case 254: return BungieMembershipType.bungieNext;
      case -1: return BungieMembershipType.all;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

