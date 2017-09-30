# destiny2_api.model.DestinyHistoricalStatsDestinyPostGameCarnageReportEntry

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**standing** | **int** | Standing of the player | [optional] [default to null]
**score** | [**DestinyHistoricalStatsDestinyHistoricalStatsValue**](DestinyHistoricalStatsDestinyHistoricalStatsValue.md) | Score of the player if available | [optional] [default to null]
**player** | [**DestinyHistoricalStatsDestinyPlayer**](DestinyHistoricalStatsDestinyPlayer.md) | Identity details of the player | [optional] [default to null]
**characterId** | **int** | ID of the player&#39;s character used in the activity. | [optional] [default to null]
**values** | [**Map&lt;String, DestinyHistoricalStatsDestinyHistoricalStatsValue&gt;**](DestinyHistoricalStatsDestinyHistoricalStatsValue.md) | Collection of stats for the player in this activity. | [optional] [default to {}]
**extended** | [**DestinyHistoricalStatsDestinyPostGameCarnageReportExtendedData**](DestinyHistoricalStatsDestinyPostGameCarnageReportExtendedData.md) | Extended data extracted from the activity blob. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


