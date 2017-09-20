# destiny2_api.model.DestinyDefinitionsDestinyItemSourceBlockDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sourceHashes** | **List&lt;int&gt;** | The list of hash identifiers for Reward Sources that hint where the item can be found (DestinyRewardSourceDefinition). | [optional] [default to []]
**sources** | [**List&lt;DestinyDefinitionsSourcesDestinyItemSourceDefinition&gt;**](DestinyDefinitionsSourcesDestinyItemSourceDefinition.md) | A collection of details about the stats that were computed for the ways we found that the item could be spawned. | [optional] [default to []]
**exclusive** | [**Object**](Object.md) | If we found that this item is exclusive to a specific platform, this will be set to the BungieMembershipType enumeration that matches that platform. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


