# destiny2_api.model.DestinyHistoricalStatsDestinyHistoricalStatsValue

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**statId** | **String** | Unique ID for this stat | [optional] [default to null]
**basic** | [**DestinyHistoricalStatsDestinyHistoricalStatsValuePair**](DestinyHistoricalStatsDestinyHistoricalStatsValuePair.md) | Basic stat value. | [optional] [default to null]
**pga** | [**DestinyHistoricalStatsDestinyHistoricalStatsValuePair**](DestinyHistoricalStatsDestinyHistoricalStatsValuePair.md) | Per game average for the statistic, if applicable | [optional] [default to null]
**weighted** | [**DestinyHistoricalStatsDestinyHistoricalStatsValuePair**](DestinyHistoricalStatsDestinyHistoricalStatsValuePair.md) | Weighted value of the stat if a weight greater than 1 has been assigned. | [optional] [default to null]
**activityId** | **int** | When a stat represents the best, most, longest, fastest or some other personal best, the actual activity ID where that personal best was established is available on this property. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


