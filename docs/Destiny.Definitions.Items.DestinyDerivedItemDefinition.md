# destiny2_api.model.DestinyDefinitionsItemsDestinyDerivedItemDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**itemHash** | **int** | The hash for the DestinyInventoryItemDefinition of this derived item, if there is one. Sometimes we are given this information as a manual override, in which case there won&#39;t be an actual DestinyInventoryItemDefinition for what we display, but you can still show the strings from this object itself. | [optional] [default to null]
**itemName** | **String** | The name of the derived item. | [optional] [default to null]
**itemDetail** | **String** | Additional details about the derived item, in addition to the description. | [optional] [default to null]
**itemDescription** | **String** | A brief description of the item. | [optional] [default to null]
**iconPath** | **String** | An icon for the item. | [optional] [default to null]
**vendorItemIndex** | **int** | If the item was derived from a \&quot;Preview Vendor\&quot;, this will be an index into the DestinyVendorDefinition&#39;s itemList property. Otherwise, -1. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


