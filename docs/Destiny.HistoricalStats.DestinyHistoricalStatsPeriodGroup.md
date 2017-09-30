# destiny2_api.model.DestinyHistoricalStatsDestinyHistoricalStatsPeriodGroup

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**period** | [**DateTime**](DateTime.md) | Period for the group. If the stat periodType is day, then this will have a specific day. If the type is monthly, then this value will be the first day of the applicable month. This value is not set when the periodType is &#39;all time&#39;. | [optional] [default to null]
**activityDetails** | [**DestinyHistoricalStatsDestinyHistoricalStatsActivity**](DestinyHistoricalStatsDestinyHistoricalStatsActivity.md) | If the period group is for a specific activity, this property will be set. | [optional] [default to null]
**values** | [**Map&lt;String, DestinyHistoricalStatsDestinyHistoricalStatsValue&gt;**](DestinyHistoricalStatsDestinyHistoricalStatsValue.md) | Collection of stats for the period. | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


