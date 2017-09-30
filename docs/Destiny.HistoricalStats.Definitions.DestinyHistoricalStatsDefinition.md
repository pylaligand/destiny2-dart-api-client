# destiny2_api.model.DestinyHistoricalStatsDefinitionsDestinyHistoricalStatsDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**statId** | **String** | Unique programmer friendly ID for this stat | [optional] [default to null]
**group** | [**DestinyHistoricalStatsDefinitionsDestinyStatsGroupType**](DestinyHistoricalStatsDefinitionsDestinyStatsGroupType.md) | Statistic group | [optional] [default to null]
**periodTypes** | [**List&lt;DestinyHistoricalStatsDefinitionsPeriodType&gt;**](DestinyHistoricalStatsDefinitionsPeriodType.md) | Time periods the statistic covers | [optional] [default to []]
**modes** | [**List&lt;DestinyHistoricalStatsDefinitionsDestinyActivityModeType&gt;**](DestinyHistoricalStatsDefinitionsDestinyActivityModeType.md) | Game modes where this statistic can be reported. | [optional] [default to []]
**category** | [**DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType**](DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.md) | Category for the stat. | [optional] [default to null]
**statName** | **String** | Display name | [optional] [default to null]
**statDescription** | **String** | Description of a stat if applicable. | [optional] [default to null]
**unitType** | [**DestinyHistoricalStatsDefinitionsUnitType**](DestinyHistoricalStatsDefinitionsUnitType.md) | Unit, if any, for the statistic | [optional] [default to null]
**iconImage** | **String** | Optional URI to an icon for the statistic | [optional] [default to null]
**mergeMethod** | **int** | Optional icon for the statistic | [optional] [default to null]
**unitLabel** | **String** | Localized Unit Name for the stat. | [optional] [default to null]
**weight** | **int** | Weight assigned to this stat indicating its relative impressiveness. | [optional] [default to null]
**medalTierHash** | **int** | The tier associated with this medal - be it implicitly or explicitly. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


