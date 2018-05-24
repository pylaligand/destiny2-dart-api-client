# destiny2_api.model.DestinyDefinitionsSocketsDestinySocketTypeDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayProperties** | [**DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**](DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition.md) | There are fields for this display data, but they appear to be unpopulated as of now. I am not sure where in the UI these would show if they even were populated, but I will continue to return this data in case it becomes useful. | [optional] [default to null]
**insertAction** | [**DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition**](DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition.md) | Defines what happens when a plug is inserted into sockets of this type. | [optional] [default to null]
**plugWhitelist** | [**List&lt;DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition&gt;**](DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition.md) | A list of Plug \&quot;Categories\&quot; that are allowed to be plugged into sockets of this type.  These should be compared against a given plug item&#39;s DestinyInventoryItemDefinition.plug.plugCategoryHash, which indicates the plug item&#39;s category.  If the plug&#39;s category matches any whitelisted plug, or if the whitelist is empty, it is allowed to be inserted. | [optional] [default to []]
**socketCategoryHash** | **int** |  | [optional] [default to null]
**visibility** | [**DestinyDestinySocketVisibility**](DestinyDestinySocketVisibility.md) |  | [optional] [default to null]
**alwaysRandomizeSockets** | **bool** |  | [optional] [default to null]
**isPreviewEnabled** | **bool** |  | [optional] [default to null]
**hideDuplicateReusablePlugs** | **bool** |  | [optional] [default to null]
**overridesUiAppearance** | **bool** | This property indicates if the socket type determines whether Emblem icons and nameplates should be overridden by the inserted plug item&#39;s icon and nameplate. | [optional] [default to null]
**avoidDuplicatesOnInitialization** | **bool** |  | [optional] [default to null]
**currencyScalars** | [**List&lt;DestinyDefinitionsSocketsDestinySocketTypeScalarMaterialRequirementEntry&gt;**](DestinyDefinitionsSocketsDestinySocketTypeScalarMaterialRequirementEntry.md) |  | [optional] [default to []]
**hash** | **int** | The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. | [optional] [default to null]
**index** | **int** | The index of the entity as it was found in the investment tables. | [optional] [default to null]
**redacted** | **bool** | If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


