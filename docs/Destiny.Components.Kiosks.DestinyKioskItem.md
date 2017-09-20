# destiny2_api.model.DestinyComponentsKiosksDestinyKioskItem

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | **int** | The index of the item in the related DestinyVendorDefintion&#39;s itemList property, representing the sale. | [optional] [default to null]
**canAcquire** | **bool** | If true, the user can not only see the item, but they can acquire it. It is possible that a user can see a kiosk item and not be able to acquire it. | [optional] [default to null]
**failureIndexes** | **List&lt;int&gt;** | Indexes into failureStrings for the Vendor, indicating the reasons why it failed if any. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


