part of destiny2_api.api;

@Entity()
class DestinySocketPlugSources {
  /// The underlying value of this enum member.
  final int value;

  const DestinySocketPlugSources._internal(this.value);

  /// If there's no way we can detect to insert new plugs.
  static const DestinySocketPlugSources none = const DestinySocketPlugSources._internal(0);
  /// Use plugs found in the player's inventory, based on the socket type rules (see DestinySocketTypeDefinition for more info)
  static const DestinySocketPlugSources inventorySourced = const DestinySocketPlugSources._internal(1);
  /// Use the DestinyItemSocketsComponent.sockets.reusablePlugs property to determine which plugs are valid for this socket.
  static const DestinySocketPlugSources reusablePlugItems = const DestinySocketPlugSources._internal(2);
  /// Use the ProfilePlugSets component data to determine which plugs are valid for this socket.
  static const DestinySocketPlugSources profilePlugSet = const DestinySocketPlugSources._internal(4);
  /// Use the CharacterPlugSets component data to determine which plugs are valid for this socket.
  static const DestinySocketPlugSources characterPlugSet = const DestinySocketPlugSources._internal(8);
}

class DestinySocketPlugSourcesTypeTransformer extends TypeTransformer<DestinySocketPlugSources> {

  @override
  dynamic encode(DestinySocketPlugSources data) {
    return data.value;
  }

  @override
  DestinySocketPlugSources decode(dynamic data) {
    switch (data) {
      case 0: return DestinySocketPlugSources.none;
      case 1: return DestinySocketPlugSources.inventorySourced;
      case 2: return DestinySocketPlugSources.reusablePlugItems;
      case 4: return DestinySocketPlugSources.profilePlugSet;
      case 8: return DestinySocketPlugSources.characterPlugSet;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

