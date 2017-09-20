# destiny2_api.model.DestinyHistoricalStatsDestinyHistoricalStatsActivity

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**referenceId** | **int** | Hash ID that can be looked up in the DestinyActivityTable. | [optional] [default to null]
**directorActivityHash** | **int** |  | [optional] [default to null]
**instanceId** | **int** | This value can be used to get additional data about this activity such as who else was playing. | [optional] [default to null]
**mode** | [**Object**](Object.md) | Indicates the game mode of the activity. | [optional] [default to null]
**modes** | [**List&lt;DestinyHistoricalStatsDefinitionsDestinyActivityModeType&gt;**](DestinyHistoricalStatsDefinitionsDestinyActivityModeType.md) |  | [optional] [default to []]
**isPrivate** | **bool** | Whether or not the match was a private match. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


