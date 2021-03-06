# destiny2_api.model.DestinyDefinitionsSocketsDestinySocketCategoryDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayProperties** | [**DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**](DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition.md) |  | [optional] [default to null]
**uiCategoryStyle** | **int** | A string hinting to the game&#39;s UI system about how the sockets in this category should be displayed.  BNet doesn&#39;t use it: it&#39;s up to you to find valid values and make your own special UI if you want to honor this category style. | [optional] [default to null]
**categoryStyle** | [**DestinyDestinySocketCategoryStyle**](DestinyDestinySocketCategoryStyle.md) | Same as uiCategoryStyle, but in a more usable enumeration form. | [optional] [default to null]
**hash** | **int** | The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. | [optional] [default to null]
**index** | **int** | The index of the entity as it was found in the investment tables. | [optional] [default to null]
**redacted** | **bool** | If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


