part of destiny2_api.api;

@Entity()
class DestinyDestinyProgressionScope {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyProgressionScope._internal(this.value);

  /// There are many Progressions in Destiny (think Character Level, or Reputation). These are the various \"Scopes\" of Progressions, which affect many things: * Where/if they are stored * How they are calculated * Where they can be used in other game logic
  static const DestinyDestinyProgressionScope account = const DestinyDestinyProgressionScope._internal(0);
  /// There are many Progressions in Destiny (think Character Level, or Reputation). These are the various \"Scopes\" of Progressions, which affect many things: * Where/if they are stored * How they are calculated * Where they can be used in other game logic
  static const DestinyDestinyProgressionScope character = const DestinyDestinyProgressionScope._internal(1);
  /// There are many Progressions in Destiny (think Character Level, or Reputation). These are the various \"Scopes\" of Progressions, which affect many things: * Where/if they are stored * How they are calculated * Where they can be used in other game logic
  static const DestinyDestinyProgressionScope clan = const DestinyDestinyProgressionScope._internal(2);
  /// There are many Progressions in Destiny (think Character Level, or Reputation). These are the various \"Scopes\" of Progressions, which affect many things: * Where/if they are stored * How they are calculated * Where they can be used in other game logic
  static const DestinyDestinyProgressionScope item = const DestinyDestinyProgressionScope._internal(3);
  /// There are many Progressions in Destiny (think Character Level, or Reputation). These are the various \"Scopes\" of Progressions, which affect many things: * Where/if they are stored * How they are calculated * Where they can be used in other game logic
  static const DestinyDestinyProgressionScope implicitFromEquipment = const DestinyDestinyProgressionScope._internal(4);
  /// There are many Progressions in Destiny (think Character Level, or Reputation). These are the various \"Scopes\" of Progressions, which affect many things: * Where/if they are stored * How they are calculated * Where they can be used in other game logic
  static const DestinyDestinyProgressionScope mapped = const DestinyDestinyProgressionScope._internal(5);
  /// There are many Progressions in Destiny (think Character Level, or Reputation). These are the various \"Scopes\" of Progressions, which affect many things: * Where/if they are stored * How they are calculated * Where they can be used in other game logic
  static const DestinyDestinyProgressionScope mappedAggregate = const DestinyDestinyProgressionScope._internal(6);
  /// There are many Progressions in Destiny (think Character Level, or Reputation). These are the various \"Scopes\" of Progressions, which affect many things: * Where/if they are stored * How they are calculated * Where they can be used in other game logic
  static const DestinyDestinyProgressionScope mappedStat = const DestinyDestinyProgressionScope._internal(7);
  /// There are many Progressions in Destiny (think Character Level, or Reputation). These are the various \"Scopes\" of Progressions, which affect many things: * Where/if they are stored * How they are calculated * Where they can be used in other game logic
  static const DestinyDestinyProgressionScope mappedUnlockValue = const DestinyDestinyProgressionScope._internal(8);
}

class DestinyDestinyProgressionScopeTypeTransformer extends TypeTransformer<DestinyDestinyProgressionScope> {

  @override
  dynamic encode(DestinyDestinyProgressionScope data) {
    return data.value;
  }

  @override
  DestinyDestinyProgressionScope decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyProgressionScope.account;
      case 1: return DestinyDestinyProgressionScope.character;
      case 2: return DestinyDestinyProgressionScope.clan;
      case 3: return DestinyDestinyProgressionScope.item;
      case 4: return DestinyDestinyProgressionScope.implicitFromEquipment;
      case 5: return DestinyDestinyProgressionScope.mapped;
      case 6: return DestinyDestinyProgressionScope.mappedAggregate;
      case 7: return DestinyDestinyProgressionScope.mappedStat;
      case 8: return DestinyDestinyProgressionScope.mappedUnlockValue;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

