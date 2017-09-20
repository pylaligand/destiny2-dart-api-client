# destiny2_api.model.DestinyDefinitionsDestinyItemActionRequiredItemDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **int** | The minimum quantity of the item you have to have. | [optional] [default to null]
**itemHash** | **int** | The hash identifier of the item you need to have. Use it to look up the DestinyInventoryItemDefinition for more info. | [optional] [default to null]
**deleteOnAction** | **bool** | If true, the item/quantity will be deleted from your inventory when the action is performed. Otherwise, you&#39;ll retain these required items after the action is complete. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


