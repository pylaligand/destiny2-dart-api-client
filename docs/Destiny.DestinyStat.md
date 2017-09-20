# destiny2_api.model.DestinyDestinyStat

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**statHash** | **int** | The hash identifier for the Stat. Use it to look up the DestinyStatDefinition for static data about the stat. | [optional] [default to null]
**value** | **int** | The current value of the Stat. | [optional] [default to null]
**maximumValue** | **int** | The highest possible value for the stat, if we were able to compute it. (I wouldn&#39;t necessarily trust this value right now. I would like to improve its calculation in later iterations of the API. Consider this a placeholder for desired future functionality) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


