part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDefinitionsDestinyHistoricalStatsDefinition {
  /* Unique programmer friendly ID for this stat */
  @Property(name: 'statId')
  String statId = null;
  
/* Statistic group */
  @Property(name: 'group')
  DestinyHistoricalStatsDefinitionsDestinyStatsGroupType group = null;
  
/* Time periods the statistic covers */
  @Property(name: 'periodTypes')
  List<DestinyHistoricalStatsDefinitionsPeriodType> periodTypes = [];
  
/* Game modes where this statistic can be reported. */
  @Property(name: 'modes')
  List<DestinyHistoricalStatsDefinitionsDestinyActivityModeType> modes = [];
  
/* Category for the stat. */
  @Property(name: 'category')
  DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType category = null;
  
/* Display name */
  @Property(name: 'statName')
  String statName = null;
  
/* Description of a stat if applicable. */
  @Property(name: 'statDescription')
  String statDescription = null;
  
/* Unit, if any, for the statistic */
  @Property(name: 'unitType')
  DestinyHistoricalStatsDefinitionsUnitType unitType = null;
  
/* Optional URI to an icon for the statistic */
  @Property(name: 'iconImage')
  String iconImage = null;
  
/* Optional icon for the statistic */
  @Property(name: 'mergeMethod')
  int mergeMethod = null;
  //enum mergeMethodEnum {  0,  1,  2,  };
/* Localized Unit Name for the stat. */
  @Property(name: 'unitLabel')
  String unitLabel = null;
  
/* Weight assigned to this stat indicating its relative impressiveness. */
  @Property(name: 'weight')
  int weight = null;
  
/* The tier associated with this medal - be it implicitly or explicitly. */
  @Property(name: 'medalTierHash')
  int medalTierHash = null;
  
  DestinyHistoricalStatsDefinitionsDestinyHistoricalStatsDefinition();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDefinitionsDestinyHistoricalStatsDefinition[statId=$statId, group=$group, periodTypes=$periodTypes, modes=$modes, category=$category, statName=$statName, statDescription=$statDescription, unitType=$unitType, iconImage=$iconImage, mergeMethod=$mergeMethod, unitLabel=$unitLabel, weight=$weight, medalTierHash=$medalTierHash, ]';
  }
}

