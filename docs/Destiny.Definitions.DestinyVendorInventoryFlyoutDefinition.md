# destiny2_api.model.DestinyDefinitionsDestinyVendorInventoryFlyoutDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lockedDescription** | **String** | If the flyout is locked, this is the reason why. | [optional] [default to null]
**displayProperties** | [**DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**](DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition.md) | The title and other common properties of the flyout. | [optional] [default to null]
**buckets** | [**List&lt;DestinyDefinitionsDestinyVendorInventoryFlyoutBucketDefinition&gt;**](DestinyDefinitionsDestinyVendorInventoryFlyoutBucketDefinition.md) | A list of inventory buckets and other metadata to show on the screen. | [optional] [default to []]
**flyoutId** | **int** | An identifier for the flyout, in case anything else needs to refer to them. | [optional] [default to null]
**suppressNewness** | **bool** | If this is true, don&#39;t show any of the glistening \&quot;this is a new item\&quot; UI elements, like we show on the inventory items themselves in in-game UI. | [optional] [default to null]
**equipmentSlotHash** | **int** | If this flyout is meant to show you the contents of the player&#39;s equipment slot, this is the slot to show. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


