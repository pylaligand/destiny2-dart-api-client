# destiny2_api.model.DestinyVendorsDestinyVendorReceipt

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currencyPaid** | [**List&lt;DestinyDestinyItemQuantity&gt;**](DestinyDestinyItemQuantity.md) | The amount paid for the item, in terms of items that were consumed in the purchase and their quantity. | [optional] [default to []]
**itemReceived** | [**Object**](Object.md) | The item that was received, and its quantity. | [optional] [default to null]
**licenseUnlockHash** | **int** | The unlock flag used to determine whether you still have the purchased item. | [optional] [default to null]
**purchasedByCharacterId** | **int** | The ID of the character who made the purchase. | [optional] [default to null]
**refundPolicy** | [**Object**](Object.md) | Whether you can get a refund, and what happens in order for the refund to be received. See the DestinyVendorItemRefundPolicy enum for details. | [optional] [default to null]
**sequenceNumber** | **int** | The identifier of this receipt. | [optional] [default to null]
**timeToExpiration** | **int** | The seconds since epoch at which this receipt is rendered invalid. | [optional] [default to null]
**expiresOn** | [**DateTime**](DateTime.md) | The date at which this receipt is rendered invalid. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


