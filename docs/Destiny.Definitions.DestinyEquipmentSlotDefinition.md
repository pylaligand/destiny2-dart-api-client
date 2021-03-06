# destiny2_api.model.DestinyDefinitionsDestinyEquipmentSlotDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayProperties** | [**DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**](DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition.md) |  | [optional] [default to null]
**equipmentCategoryHash** | **int** | These technically point to \&quot;Equipment Category Definitions\&quot;. But don&#39;t get excited. There&#39;s nothing of significant value in those definitions, so I didn&#39;t bother to expose them. You can use the hash here to group equipment slots by common functionality, which serves the same purpose as if we had the Equipment Category definitions exposed. | [optional] [default to null]
**bucketTypeHash** | **int** | The inventory bucket that owns this equipment slot. | [optional] [default to null]
**applyCustomArtDyes** | **bool** | If True, equipped items should have their custom art dyes applied when rendering the item. Otherwise, custom art dyes on an item should be ignored if the item is equipped in this slot. | [optional] [default to null]
**artDyeChannels** | [**List&lt;DestinyDefinitionsDestinyArtDyeReference&gt;**](DestinyDefinitionsDestinyArtDyeReference.md) | The Art Dye Channels that apply to this equipment slot. | [optional] [default to []]
**hash** | **int** | The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. | [optional] [default to null]
**index** | **int** | The index of the entity as it was found in the investment tables. | [optional] [default to null]
**redacted** | **bool** | If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


