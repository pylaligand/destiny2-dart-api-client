part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod {
  /// The underlying value of this enum member.
  final int value;

  const DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod._internal(this.value);

  /// When collapsing multiple instances of the stat together, add the values.
  static const DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod add = const DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod._internal(0);
  /// When collapsing multiple instances of the stat together, take the lower value.
  static const DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod min = const DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod._internal(1);
  /// When collapsing multiple instances of the stat together, take the higher value.
  static const DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod max = const DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod._internal(2);
}

class DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethodTypeTransformer extends TypeTransformer<DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod> {

  @override
  dynamic encode(DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod data) {
    return data.value;
  }

  @override
  DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod decode(dynamic data) {
    switch (data) {
      case 0: return DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod.add;
      case 1: return DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod.min;
      case 2: return DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod.max;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

