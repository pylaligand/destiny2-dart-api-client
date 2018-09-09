# destiny2_api.model.DestinyEntitiesItemsDestinyItemComponent

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**itemHash** | **int** | The identifier for the item&#39;s definition, which is where most of the useful static information for the item can be found. | [optional] [default to null]
**itemInstanceId** | **int** | If the item is instanced, it will have an instance ID. Lack of an instance ID implies that the item has no distinct local qualities aside from stack size. | [optional] [default to null]
**quantity** | **int** | The quantity of the item in this stack. Note that Instanced items cannot stack. If an instanced item, this value will always be 1 (as the stack has exactly one item in it) | [optional] [default to null]
**bindStatus** | [**DestinyItemBindStatus**](DestinyItemBindStatus.md) | If the item is bound to a location, it will be specified in this enum. | [optional] [default to null]
**location** | [**DestinyItemLocation**](DestinyItemLocation.md) | An easy reference for where the item is located. Redundant if you got the item from an Inventory, but useful when making detail calls on specific items. | [optional] [default to null]
**bucketHash** | **int** | The hash identifier for the specific inventory bucket in which the item is located. | [optional] [default to null]
**transferStatus** | [**DestinyTransferStatuses**](DestinyTransferStatuses.md) | If there is a known error state that would cause this item to not be transferable, this Flags enum will indicate all of those error states. Otherwise, it will be 0 (CanTransfer). | [optional] [default to null]
**lockable** | **bool** | If the item can be locked, this will indicate that state. | [optional] [default to null]
**state** | [**DestinyItemState**](DestinyItemState.md) | A flags enumeration indicating the transient/custom states of the item that affect how it is rendered: whether it&#39;s tracked or locked for example, or whether it has a masterwork plug inserted. | [optional] [default to null]
**overrideStyleItemHash** | **int** | If populated, this is the hash of the item whose icon (and other secondary styles, but *not* the human readable strings) should override whatever icons/styles are on the item being sold.  If you don&#39;t do this, certain items whose styles are being overridden by socketed items - such as the \&quot;Recycle Shader\&quot; item - would show whatever their default icon/style is, and it wouldn&#39;t be pretty or look accurate. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


