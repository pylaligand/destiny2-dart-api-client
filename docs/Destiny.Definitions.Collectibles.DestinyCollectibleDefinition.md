# destiny2_api.model.DestinyDefinitionsCollectiblesDestinyCollectibleDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayProperties** | [**DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**](DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition.md) |  | [optional] [default to null]
**scope** | [**DestinyDestinyScope**](DestinyDestinyScope.md) | Indicates whether this Collectible&#39;s state is determined on a per-character or on an account-wide basis. | [optional] [default to null]
**sourceString** | **String** |  | [optional] [default to null]
**itemHash** | **int** |  | [optional] [default to null]
**acquisitionInfo** | [**DestinyDefinitionsCollectiblesDestinyCollectibleAcquisitionBlock**](DestinyDefinitionsCollectiblesDestinyCollectibleAcquisitionBlock.md) |  | [optional] [default to null]
**stateInfo** | [**DestinyDefinitionsCollectiblesDestinyCollectibleStateBlock**](DestinyDefinitionsCollectiblesDestinyCollectibleStateBlock.md) |  | [optional] [default to null]
**presentationInfo** | [**DestinyDefinitionsPresentationDestinyPresentationChildBlock**](DestinyDefinitionsPresentationDestinyPresentationChildBlock.md) |  | [optional] [default to null]
**hash** | **int** | The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. | [optional] [default to null]
**index** | **int** | The index of the entity as it was found in the investment tables. | [optional] [default to null]
**redacted** | **bool** | If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


