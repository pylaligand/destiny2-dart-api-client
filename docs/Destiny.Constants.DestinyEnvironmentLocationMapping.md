# destiny2_api.model.DestinyConstantsDestinyEnvironmentLocationMapping

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**locationHash** | **int** | The location that is revealed on the director by this mapping. | [optional] [default to null]
**activationSource** | **String** | A hint that the UI uses to figure out how this location is activated by the player. | [optional] [default to null]
**itemHash** | **int** | If this is populated, it is the item that you must possess for this location to be active because of this mapping. (theoretically, a location can have multiple mappings, and some might require an item while others don&#39;t) | [optional] [default to null]
**objectiveHash** | **int** | If this is populated, this is an objective related to the location. | [optional] [default to null]
**activityHash** | **int** | If this is populated, this is the activity you have to be playing in order to see this location appear because of this mapping. (theoretically, a location can have multiple mappings, and some might require you to be in a specific activity when others don&#39;t) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


