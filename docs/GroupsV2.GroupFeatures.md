# destiny2_api.model.GroupsV2GroupFeatures

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**maximumMembers** | **int** |  | [optional] [default to null]
**maximumMembershipsOfGroupType** | **int** | Maximum number of groups of this type a typical membership may join. For example, a user may join about 50 General groups with their Bungie.net account. They may join one clan per Destiny membership. | [optional] [default to null]
**capabilities** | [**GroupsV2Capabilities**](GroupsV2Capabilities.md) |  | [optional] [default to null]
**membershipTypes** | [**List&lt;BungieMembershipType&gt;**](BungieMembershipType.md) |  | [optional] [default to []]
**invitePermissionOverride** | **bool** | Minimum Member Level allowed to invite new members to group  Always Allowed: Founder, Acting Founder  True means admins have this power, false means they don&#39;t  Default is false for clans, true for groups. | [optional] [default to null]
**updateCulturePermissionOverride** | **bool** | Minimum Member Level allowed to update group culture  Always Allowed: Founder, Acting Founder  True means admins have this power, false means they don&#39;t  Default is false for clans, true for groups. | [optional] [default to null]
**hostGuidedGamePermissionOverride** | [**Object**](Object.md) | Minimum Member Level allowed to host guided games  Always Allowed: Founder, Acting Founder, Admin  Allowed Overrides: None, Member, Beginner  Default is Member for clans, None for groups, although this means nothing for groups. | [optional] [default to null]
**updateBannerPermissionOverride** | **bool** | Minimum Member Level allowed to update banner  Always Allowed: Founder, Acting Founder  True means admins have this power, false means they don&#39;t  Default is false for clans, true for groups. | [optional] [default to null]
**joinLevel** | [**Object**](Object.md) | Level to join a member at when accepting an invite, application, or joining an open clan  Default is Beginner. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


