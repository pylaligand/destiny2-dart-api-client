# destiny2_api.model.DestinyDefinitionsDestinyVendorItemQuantity

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**itemHash** | **int** | The hash identifier for the item in question. Use it to look up the item&#39;s DestinyInventoryItemDefinition. | [optional] [default to null]
**itemInstanceId** | **int** | If this quantity is referring to a specific instance of an item, this will have the item&#39;s instance ID. Normally, this will be null. | [optional] [default to null]
**quantity** | **int** | The amount of the item needed/available depending on the context of where DestinyItemQuantity is being used. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


