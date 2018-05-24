# destiny2_api.model.DestinyAdvancedAwaPermissionRequested

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**DestinyAdvancedAwaType**](DestinyAdvancedAwaType.md) | Type of advanced write action. | [optional] [default to null]
**affectedItemId** | **int** | Item instance ID the action shall be applied to. This is optional for all but a new AwaType values. Rule of thumb is to provide the item instance ID if one is available. | [optional] [default to null]
**membershipType** | [**BungieMembershipType**](BungieMembershipType.md) | Destiny membership type of the account to modify. | [optional] [default to null]
**characterId** | **int** | Destiny character ID, if applicable, that will be affected by the action. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


