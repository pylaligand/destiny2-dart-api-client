# destiny2_api.model.ApplicationsApiUsage

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**range** | [**DatesDateRange**](DatesDateRange.md) | The date range for the data being reported. | [optional] [default to null]
**apiCalls** | [**List&lt;ApplicationsSeries&gt;**](ApplicationsSeries.md) | Counts for on API calls made for the time range. | [optional] [default to []]
**throttledRequests** | [**List&lt;ApplicationsSeries&gt;**](ApplicationsSeries.md) | Instances of blocked requests or requests that crossed the warn threshold during the time range. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


