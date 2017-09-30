part of destiny2_api.api;

@Entity()
class DestinyTransferStatuses {
  /// The underlying value of this enum member.
  final int value;

  const DestinyTransferStatuses._internal(this.value);

  /// The item can be transferred.
  static const DestinyTransferStatuses canTransfer = const DestinyTransferStatuses._internal(0);
  /// You can't transfer the item because it is equipped on a character.
  static const DestinyTransferStatuses itemIsEquipped = const DestinyTransferStatuses._internal(1);
  /// The item is defined as not transferrable in its DestinyInventoryItemDefinition.nonTransferrable property.
  static const DestinyTransferStatuses notTransferrable = const DestinyTransferStatuses._internal(2);
  /// You could transfer the item, but the place you're trying to put it has run out of room! Check your remaining Vault and/or character space.
  static const DestinyTransferStatuses noRoomInDestination = const DestinyTransferStatuses._internal(4);
}

class DestinyTransferStatusesTypeTransformer extends TypeTransformer<DestinyTransferStatuses> {

  @override
  dynamic encode(DestinyTransferStatuses data) {
    return data.value;
  }

  @override
  DestinyTransferStatuses decode(dynamic data) {
    switch (data) {
      case 0: return DestinyTransferStatuses.canTransfer;
      case 1: return DestinyTransferStatuses.itemIsEquipped;
      case 2: return DestinyTransferStatuses.notTransferrable;
      case 4: return DestinyTransferStatuses.noRoomInDestination;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

