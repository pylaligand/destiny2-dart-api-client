# destiny2_api.model.DestinyRequestsActionsDestinyInsertPlugsActionRequest

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actionToken** | **String** | Action token provided by the AwaGetActionToken API call. | [optional] [default to null]
**itemInstanceId** | **int** | The instance ID of the item having a plug inserted. Only instanced items can have sockets. | [optional] [default to null]
**plug** | [**DestinyRequestsActionsDestinyInsertPlugsRequestEntry**](DestinyRequestsActionsDestinyInsertPlugsRequestEntry.md) | The plugs being inserted. | [optional] [default to null]
**characterId** | **int** |  | [optional] [default to null]
**membershipType** | [**BungieMembershipType**](BungieMembershipType.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


