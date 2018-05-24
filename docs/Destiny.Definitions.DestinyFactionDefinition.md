# destiny2_api.model.DestinyDefinitionsDestinyFactionDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayProperties** | [**DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**](DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition.md) |  | [optional] [default to null]
**progressionHash** | **int** | The hash identifier for the DestinyProgressionDefinition that indicates the character&#39;s relationship with this faction in terms of experience and levels. | [optional] [default to null]
**tokenValues** | **Map&lt;String, int&gt;** | The faction token item hashes, and their respective progression values. | [optional] [default to {}]
**rewardItemHash** | **int** | The faction reward item hash, usually an engram. | [optional] [default to null]
**rewardVendorHash** | **int** | The faction reward vendor hash, used for faction engram previews. | [optional] [default to null]
**vendors** | [**List&lt;DestinyDefinitionsDestinyFactionVendorDefinition&gt;**](DestinyDefinitionsDestinyFactionVendorDefinition.md) | List of vendors that are associated with this faction. The last vendor that passes the unlock flag checks is the one that should be shown. | [optional] [default to []]
**hash** | **int** | The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. | [optional] [default to null]
**index** | **int** | The index of the entity as it was found in the investment tables. | [optional] [default to null]
**redacted** | **bool** | If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


