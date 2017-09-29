part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyRewardSourceCategory {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDefinitionsDestinyRewardSourceCategory._internal(this.value);

  /// The source doesn't fit well into any of the other types.
  static const DestinyDefinitionsDestinyRewardSourceCategory none = const DestinyDefinitionsDestinyRewardSourceCategory._internal(0);
  /// The source is directly related to the rewards gained by playing an activity or set of activities. This currently includes Quests and other action in-game.
  static const DestinyDefinitionsDestinyRewardSourceCategory activity = const DestinyDefinitionsDestinyRewardSourceCategory._internal(1);
  /// This source is directly related to items that Vendors sell.
  static const DestinyDefinitionsDestinyRewardSourceCategory vendor = const DestinyDefinitionsDestinyRewardSourceCategory._internal(2);
  /// This source is a custom aggregation of items that can be earned in many ways, but that share some other property in common that is useful to share. For instance, in Destiny 1 we would make "Reward Sources" for every game expansion: that way, you could search reward sources to see what items became available with any given Expansion.
  static const DestinyDefinitionsDestinyRewardSourceCategory aggregate = const DestinyDefinitionsDestinyRewardSourceCategory._internal(3);
}

class DestinyDefinitionsDestinyRewardSourceCategoryTypeTransformer extends TypeTransformer<DestinyDefinitionsDestinyRewardSourceCategory> {

  @override
  dynamic encode(DestinyDefinitionsDestinyRewardSourceCategory data) {
    return data.value;
  }

  @override
  DestinyDefinitionsDestinyRewardSourceCategory decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsDestinyRewardSourceCategory.none;
      case 1: return DestinyDefinitionsDestinyRewardSourceCategory.activity;
      case 2: return DestinyDefinitionsDestinyRewardSourceCategory.vendor;
      case 3: return DestinyDefinitionsDestinyRewardSourceCategory.aggregate;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

