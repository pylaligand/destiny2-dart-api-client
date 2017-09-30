part of destiny2_api.api;

@Entity()
class DestinyDestinyStatAggregationType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyStatAggregationType._internal(this.value);

  /// When a Stat (DestinyStatDefinition) is aggregated, this is the rules used for determining the level and formula used for aggregation.  * CharacterAverage = apply a weighted average using the related DestinyStatGroupDefinition on the DestinyInventoryItemDefinition across the character's equipped items. See both of those definitions for details. * Character = don't aggregate: the stat should be located and used directly on the character. * Item = don't aggregate: the stat should be located and used directly on the item.
  static const DestinyDestinyStatAggregationType characterAverage = const DestinyDestinyStatAggregationType._internal(0);
  /// When a Stat (DestinyStatDefinition) is aggregated, this is the rules used for determining the level and formula used for aggregation.  * CharacterAverage = apply a weighted average using the related DestinyStatGroupDefinition on the DestinyInventoryItemDefinition across the character's equipped items. See both of those definitions for details. * Character = don't aggregate: the stat should be located and used directly on the character. * Item = don't aggregate: the stat should be located and used directly on the item.
  static const DestinyDestinyStatAggregationType character = const DestinyDestinyStatAggregationType._internal(1);
  /// When a Stat (DestinyStatDefinition) is aggregated, this is the rules used for determining the level and formula used for aggregation.  * CharacterAverage = apply a weighted average using the related DestinyStatGroupDefinition on the DestinyInventoryItemDefinition across the character's equipped items. See both of those definitions for details. * Character = don't aggregate: the stat should be located and used directly on the character. * Item = don't aggregate: the stat should be located and used directly on the item.
  static const DestinyDestinyStatAggregationType item = const DestinyDestinyStatAggregationType._internal(2);
}

class DestinyDestinyStatAggregationTypeTypeTransformer extends TypeTransformer<DestinyDestinyStatAggregationType> {

  @override
  dynamic encode(DestinyDestinyStatAggregationType data) {
    return data.value;
  }

  @override
  DestinyDestinyStatAggregationType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyStatAggregationType.characterAverage;
      case 1: return DestinyDestinyStatAggregationType.character;
      case 2: return DestinyDestinyStatAggregationType.item;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

