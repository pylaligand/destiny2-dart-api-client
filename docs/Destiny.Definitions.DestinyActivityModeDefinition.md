# destiny2_api.model.DestinyDefinitionsDestinyActivityModeDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayProperties** | [**DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**](DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition.md) |  | [optional] [default to null]
**pgcrImage** | **String** |  | [optional] [default to null]
**modeType** | [**DestinyHistoricalStatsDefinitionsDestinyActivityModeType**](DestinyHistoricalStatsDefinitionsDestinyActivityModeType.md) |  | [optional] [default to null]
**activityModeCategory** | [**DestinyDestinyActivityModeCategory**](DestinyDestinyActivityModeCategory.md) |  | [optional] [default to null]
**isTeamBased** | **bool** |  | [optional] [default to null]
**isAggregateMode** | **bool** |  | [optional] [default to null]
**parentHashes** | **List&lt;int&gt;** |  | [optional] [default to []]
**friendlyName** | **String** |  | [optional] [default to null]
**activityModeMappings** | [**Map&lt;String, DestinyHistoricalStatsDefinitionsDestinyActivityModeType&gt;**](DestinyHistoricalStatsDefinitionsDestinyActivityModeType.md) |  | [optional] [default to {}]
**display** | **bool** | If FALSE, we want to ignore this type when we&#39;re showing activity modes in BNet UI. It will still be returned in case 3rd parties want to use it for any purpose. | [optional] [default to null]
**order** | **int** | The relative ordering of activity modes. | [optional] [default to null]
**hash** | **int** | The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. | [optional] [default to null]
**index** | **int** | The index of the entity as it was found in the investment tables. | [optional] [default to null]
**redacted** | **bool** | If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


