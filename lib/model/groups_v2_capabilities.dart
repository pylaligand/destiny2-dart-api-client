part of destiny2_api.api;

@Entity()
class GroupsV2Capabilities {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2Capabilities._internal(this.value);

  static const GroupsV2Capabilities none = const GroupsV2Capabilities._internal(0);
  static const GroupsV2Capabilities leaderboards = const GroupsV2Capabilities._internal(1);
  static const GroupsV2Capabilities callsign = const GroupsV2Capabilities._internal(2);
  static const GroupsV2Capabilities optionalConversations = const GroupsV2Capabilities._internal(4);
  static const GroupsV2Capabilities clanBanner = const GroupsV2Capabilities._internal(8);
  static const GroupsV2Capabilities d2InvestmentData = const GroupsV2Capabilities._internal(16);
  static const GroupsV2Capabilities tags = const GroupsV2Capabilities._internal(32);
  static const GroupsV2Capabilities alliances = const GroupsV2Capabilities._internal(64);
}

class GroupsV2CapabilitiesTypeTransformer extends TypeTransformer<GroupsV2Capabilities> {

  @override
  dynamic encode(GroupsV2Capabilities data) {
    return data.value;
  }

  @override
  GroupsV2Capabilities decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2Capabilities.none;
      case 1: return GroupsV2Capabilities.leaderboards;
      case 2: return GroupsV2Capabilities.callsign;
      case 4: return GroupsV2Capabilities.optionalConversations;
      case 8: return GroupsV2Capabilities.clanBanner;
      case 16: return GroupsV2Capabilities.d2InvestmentData;
      case 32: return GroupsV2Capabilities.tags;
      case 64: return GroupsV2Capabilities.alliances;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

