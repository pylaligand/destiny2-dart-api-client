# destiny2_api.model.DestinyDefinitionsDestinyLocationReleaseDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayProperties** | [**DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**](DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition.md) | Sadly, these don&#39;t appear to be populated anymore (ever?) | [optional] [default to null]
**spawnPoint** | **int** | If we had map information, this spawnPoint would be interesting. But sadly, we don&#39;t have that info. | [optional] [default to null]
**destinationHash** | **int** | The Destination being pointed to by this location. | [optional] [default to null]
**activityHash** | **int** | The Activity being pointed to by this location. | [optional] [default to null]
**activityGraphHash** | **int** | The Activity Graph being pointed to by this location. | [optional] [default to null]
**activityGraphNodeHash** | **int** | The Activity Graph Node being pointed to by this location. (Remember that Activity Graph Node hashes are only unique within an Activity Graph: so use the combination to find the node being spoken of) | [optional] [default to null]
**activityBubbleName** | **int** | The Activity Bubble within the Destination. Look this up in the DestinyDestinationDefinition&#39;s bubbles and bubbleSettings properties. | [optional] [default to null]
**activityPathBundle** | **int** | If we had map information, this would tell us something cool about the path this location wants you to take. I wish we had map information. | [optional] [default to null]
**activityPathDestination** | **int** | If we had map information, this would tell us about path information related to destination on the map. Sad. Maybe you can do something cool with it. Go to town man. | [optional] [default to null]
**navPointType** | [**DestinyDestinyActivityNavPointType**](DestinyDestinyActivityNavPointType.md) | The type of Nav Point that this represents. See the enumeration for more info. | [optional] [default to null]
**worldPosition** | **List&lt;int&gt;** | Looks like it should be the position on the map, but sadly it does not look populated... yet? | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


