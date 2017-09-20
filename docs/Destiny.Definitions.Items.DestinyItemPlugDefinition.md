# destiny2_api.model.DestinyDefinitionsItemsDestinyItemPlugDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**insertionRules** | [**List&lt;DestinyDefinitionsItemsDestinyPlugRuleDefinition&gt;**](DestinyDefinitionsItemsDestinyPlugRuleDefinition.md) | The rules around when this plug can be inserted into a socket, aside from the socket&#39;s individual restrictions.  The live data DestinyItemPlugComponent.insertFailIndexes will be an index into this array, so you can pull out the failure strings appropriate for the user. | [optional] [default to []]
**plugCategoryIdentifier** | **String** | The string identifier for the plug&#39;s category. Use the socket&#39;s DestinySocketTypeDefinition.plugWhitelist to determine whether this plug can be inserted into the socket. | [optional] [default to null]
**plugCategoryHash** | **int** | The hash for the plugCategoryIdentifier. You can use this instead if you wish: I put both in the definition for debugging purposes. | [optional] [default to null]
**onActionRecreateSelf** | **bool** | If you successfully socket the item, this will determine whether or not you get \&quot;refunded\&quot; on the plug. | [optional] [default to null]
**insertionMaterialRequirementHash** | **int** | If inserting this plug requires materials, this is the hash identifier for looking up the DestinyMaterialRequirementSetDefinition for those requirements. | [optional] [default to null]
**previewItemOverrideHash** | **int** | In the game, if you&#39;re inspecting a plug item directly, this will be the item shown with the plug attached. Look up the DestinyInventoryItemDefinition for this hash for the item. | [optional] [default to null]
**enabledMaterialRequirementHash** | **int** | It&#39;s not enough for the plug to be inserted. It has to be enabled as well. For it to be enabled, it may require materials. This is the hash identifier for the DestinyMaterialRequirementSetDefinition for those requirements, if there is one. | [optional] [default to null]
**enabledRules** | [**List&lt;DestinyDefinitionsItemsDestinyPlugRuleDefinition&gt;**](DestinyDefinitionsItemsDestinyPlugRuleDefinition.md) | The rules around whether the plug, once inserted, is enabled and providing its benefits.  The live data DestinyItemPlugComponent.enableFailIndexes will be an index into this array, so you can pull out the failure strings appropriate for the user. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


