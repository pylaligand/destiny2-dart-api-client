part of destiny2_api.api;

@Entity()
class DestinyDestinyGatingScope {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyGatingScope._internal(this.value);

  /// This enumeration represents the most restrictive type of gating that is being performed by an entity. This is useful as a shortcut to avoid a lot of lookups when determining whether the gating on an Entity applies to everyone equally, or to their specific Profile or Character states.  None = There is no gating on this item. Global = The gating on this item is based entirely on global game state. It will be gated the same for everyone. Clan = The gating on this item is at the Clan level. For instance, if you're gated by Clan level this will be the case. Profile = The gating includes Profile-specific checks, but not on the Profile's characters. An example of this might be when you acquire an Emblem: the Emblem will be available in your Kiosk for all characters in your Profile from that point onward. Character = The gating includes Character-specific checks, including character level restrictions. An example of this might be an item that you can't purchase from a Vendor until you reach a specific Character Level. Item = The gating includes item-specific checks. For BNet, this generally implies that we'll show this data only on a character level or deeper. AssumedWorstCase = The unlocks and checks being used for this calculation are of an unknown type and are used for unknown purposes. For instance, if some great person decided that an unlock value should be globally scoped, but then the game changes it using character-specific data in a way that BNet doesn't know about. Because of the open-ended potential for this to occur, many unlock checks for \"globally\" scoped unlock data may be assumed as the worst case unless it has been specifically whitelisted as otherwise. That sucks, but them's the breaks.
  static const DestinyDestinyGatingScope none = const DestinyDestinyGatingScope._internal(0);
  /// This enumeration represents the most restrictive type of gating that is being performed by an entity. This is useful as a shortcut to avoid a lot of lookups when determining whether the gating on an Entity applies to everyone equally, or to their specific Profile or Character states.  None = There is no gating on this item. Global = The gating on this item is based entirely on global game state. It will be gated the same for everyone. Clan = The gating on this item is at the Clan level. For instance, if you're gated by Clan level this will be the case. Profile = The gating includes Profile-specific checks, but not on the Profile's characters. An example of this might be when you acquire an Emblem: the Emblem will be available in your Kiosk for all characters in your Profile from that point onward. Character = The gating includes Character-specific checks, including character level restrictions. An example of this might be an item that you can't purchase from a Vendor until you reach a specific Character Level. Item = The gating includes item-specific checks. For BNet, this generally implies that we'll show this data only on a character level or deeper. AssumedWorstCase = The unlocks and checks being used for this calculation are of an unknown type and are used for unknown purposes. For instance, if some great person decided that an unlock value should be globally scoped, but then the game changes it using character-specific data in a way that BNet doesn't know about. Because of the open-ended potential for this to occur, many unlock checks for \"globally\" scoped unlock data may be assumed as the worst case unless it has been specifically whitelisted as otherwise. That sucks, but them's the breaks.
  static const DestinyDestinyGatingScope global = const DestinyDestinyGatingScope._internal(1);
  /// This enumeration represents the most restrictive type of gating that is being performed by an entity. This is useful as a shortcut to avoid a lot of lookups when determining whether the gating on an Entity applies to everyone equally, or to their specific Profile or Character states.  None = There is no gating on this item. Global = The gating on this item is based entirely on global game state. It will be gated the same for everyone. Clan = The gating on this item is at the Clan level. For instance, if you're gated by Clan level this will be the case. Profile = The gating includes Profile-specific checks, but not on the Profile's characters. An example of this might be when you acquire an Emblem: the Emblem will be available in your Kiosk for all characters in your Profile from that point onward. Character = The gating includes Character-specific checks, including character level restrictions. An example of this might be an item that you can't purchase from a Vendor until you reach a specific Character Level. Item = The gating includes item-specific checks. For BNet, this generally implies that we'll show this data only on a character level or deeper. AssumedWorstCase = The unlocks and checks being used for this calculation are of an unknown type and are used for unknown purposes. For instance, if some great person decided that an unlock value should be globally scoped, but then the game changes it using character-specific data in a way that BNet doesn't know about. Because of the open-ended potential for this to occur, many unlock checks for \"globally\" scoped unlock data may be assumed as the worst case unless it has been specifically whitelisted as otherwise. That sucks, but them's the breaks.
  static const DestinyDestinyGatingScope clan = const DestinyDestinyGatingScope._internal(2);
  /// This enumeration represents the most restrictive type of gating that is being performed by an entity. This is useful as a shortcut to avoid a lot of lookups when determining whether the gating on an Entity applies to everyone equally, or to their specific Profile or Character states.  None = There is no gating on this item. Global = The gating on this item is based entirely on global game state. It will be gated the same for everyone. Clan = The gating on this item is at the Clan level. For instance, if you're gated by Clan level this will be the case. Profile = The gating includes Profile-specific checks, but not on the Profile's characters. An example of this might be when you acquire an Emblem: the Emblem will be available in your Kiosk for all characters in your Profile from that point onward. Character = The gating includes Character-specific checks, including character level restrictions. An example of this might be an item that you can't purchase from a Vendor until you reach a specific Character Level. Item = The gating includes item-specific checks. For BNet, this generally implies that we'll show this data only on a character level or deeper. AssumedWorstCase = The unlocks and checks being used for this calculation are of an unknown type and are used for unknown purposes. For instance, if some great person decided that an unlock value should be globally scoped, but then the game changes it using character-specific data in a way that BNet doesn't know about. Because of the open-ended potential for this to occur, many unlock checks for \"globally\" scoped unlock data may be assumed as the worst case unless it has been specifically whitelisted as otherwise. That sucks, but them's the breaks.
  static const DestinyDestinyGatingScope profile = const DestinyDestinyGatingScope._internal(3);
  /// This enumeration represents the most restrictive type of gating that is being performed by an entity. This is useful as a shortcut to avoid a lot of lookups when determining whether the gating on an Entity applies to everyone equally, or to their specific Profile or Character states.  None = There is no gating on this item. Global = The gating on this item is based entirely on global game state. It will be gated the same for everyone. Clan = The gating on this item is at the Clan level. For instance, if you're gated by Clan level this will be the case. Profile = The gating includes Profile-specific checks, but not on the Profile's characters. An example of this might be when you acquire an Emblem: the Emblem will be available in your Kiosk for all characters in your Profile from that point onward. Character = The gating includes Character-specific checks, including character level restrictions. An example of this might be an item that you can't purchase from a Vendor until you reach a specific Character Level. Item = The gating includes item-specific checks. For BNet, this generally implies that we'll show this data only on a character level or deeper. AssumedWorstCase = The unlocks and checks being used for this calculation are of an unknown type and are used for unknown purposes. For instance, if some great person decided that an unlock value should be globally scoped, but then the game changes it using character-specific data in a way that BNet doesn't know about. Because of the open-ended potential for this to occur, many unlock checks for \"globally\" scoped unlock data may be assumed as the worst case unless it has been specifically whitelisted as otherwise. That sucks, but them's the breaks.
  static const DestinyDestinyGatingScope character = const DestinyDestinyGatingScope._internal(4);
  /// This enumeration represents the most restrictive type of gating that is being performed by an entity. This is useful as a shortcut to avoid a lot of lookups when determining whether the gating on an Entity applies to everyone equally, or to their specific Profile or Character states.  None = There is no gating on this item. Global = The gating on this item is based entirely on global game state. It will be gated the same for everyone. Clan = The gating on this item is at the Clan level. For instance, if you're gated by Clan level this will be the case. Profile = The gating includes Profile-specific checks, but not on the Profile's characters. An example of this might be when you acquire an Emblem: the Emblem will be available in your Kiosk for all characters in your Profile from that point onward. Character = The gating includes Character-specific checks, including character level restrictions. An example of this might be an item that you can't purchase from a Vendor until you reach a specific Character Level. Item = The gating includes item-specific checks. For BNet, this generally implies that we'll show this data only on a character level or deeper. AssumedWorstCase = The unlocks and checks being used for this calculation are of an unknown type and are used for unknown purposes. For instance, if some great person decided that an unlock value should be globally scoped, but then the game changes it using character-specific data in a way that BNet doesn't know about. Because of the open-ended potential for this to occur, many unlock checks for \"globally\" scoped unlock data may be assumed as the worst case unless it has been specifically whitelisted as otherwise. That sucks, but them's the breaks.
  static const DestinyDestinyGatingScope item = const DestinyDestinyGatingScope._internal(5);
  /// This enumeration represents the most restrictive type of gating that is being performed by an entity. This is useful as a shortcut to avoid a lot of lookups when determining whether the gating on an Entity applies to everyone equally, or to their specific Profile or Character states.  None = There is no gating on this item. Global = The gating on this item is based entirely on global game state. It will be gated the same for everyone. Clan = The gating on this item is at the Clan level. For instance, if you're gated by Clan level this will be the case. Profile = The gating includes Profile-specific checks, but not on the Profile's characters. An example of this might be when you acquire an Emblem: the Emblem will be available in your Kiosk for all characters in your Profile from that point onward. Character = The gating includes Character-specific checks, including character level restrictions. An example of this might be an item that you can't purchase from a Vendor until you reach a specific Character Level. Item = The gating includes item-specific checks. For BNet, this generally implies that we'll show this data only on a character level or deeper. AssumedWorstCase = The unlocks and checks being used for this calculation are of an unknown type and are used for unknown purposes. For instance, if some great person decided that an unlock value should be globally scoped, but then the game changes it using character-specific data in a way that BNet doesn't know about. Because of the open-ended potential for this to occur, many unlock checks for \"globally\" scoped unlock data may be assumed as the worst case unless it has been specifically whitelisted as otherwise. That sucks, but them's the breaks.
  static const DestinyDestinyGatingScope assumedWorstCase = const DestinyDestinyGatingScope._internal(6);
}

class DestinyDestinyGatingScopeTypeTransformer extends TypeTransformer<DestinyDestinyGatingScope> {

  @override
  dynamic encode(DestinyDestinyGatingScope data) {
    return data.value;
  }

  @override
  DestinyDestinyGatingScope decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyGatingScope.none;
      case 1: return DestinyDestinyGatingScope.global;
      case 2: return DestinyDestinyGatingScope.clan;
      case 3: return DestinyDestinyGatingScope.profile;
      case 4: return DestinyDestinyGatingScope.character;
      case 5: return DestinyDestinyGatingScope.item;
      case 6: return DestinyDestinyGatingScope.assumedWorstCase;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

