# destiny2_api.model.GroupsV2GroupAction

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**groupType** | [**Object**](Object.md) | Type of group, either Bungie.net hosted group, or a game services hosted clan. | [optional] [default to null]
**name** | **String** |  | [optional] [default to null]
**about** | **String** |  | [optional] [default to null]
**motto** | **String** |  | [optional] [default to null]
**theme** | **String** |  | [optional] [default to null]
**avatarImageIndex** | **int** |  | [optional] [default to null]
**tags** | **String** |  | [optional] [default to null]
**isPublic** | **bool** |  | [optional] [default to null]
**membershipOption** | [**GroupsV2MembershipOption**](GroupsV2MembershipOption.md) |  | [optional] [default to null]
**isPublicTopicAdminOnly** | **bool** |  | [optional] [default to null]
**isDefaultPostPublic** | **bool** |  | [optional] [default to null]
**allowChat** | **bool** |  | [optional] [default to null]
**isDefaultPostAlliance** | **bool** |  | [optional] [default to null]
**chatSecurity** | [**GroupsV2ChatSecuritySetting**](GroupsV2ChatSecuritySetting.md) |  | [optional] [default to null]
**callsign** | **String** |  | [optional] [default to null]
**locale** | **String** |  | [optional] [default to null]
**homepage** | [**GroupsV2GroupHomepage**](GroupsV2GroupHomepage.md) |  | [optional] [default to null]
**platformMembershipType** | [**Object**](Object.md) | When operation needs a platform specific account ID for the present user, use this property. In particular, groupType of Clan requires this value to be set. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


