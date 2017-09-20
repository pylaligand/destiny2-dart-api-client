# destiny2_api.model.GroupsV2GroupResponse

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**detail** | [**GroupsV2GroupV2**](GroupsV2GroupV2.md) |  | [optional] [default to null]
**founder** | [**GroupsV2GroupMember**](GroupsV2GroupMember.md) |  | [optional] [default to null]
**alliedIds** | **List&lt;int&gt;** |  | [optional] [default to []]
**parentGroup** | [**GroupsV2GroupV2**](GroupsV2GroupV2.md) |  | [optional] [default to null]
**allianceStatus** | [**GroupsV2GroupAllianceStatus**](GroupsV2GroupAllianceStatus.md) |  | [optional] [default to null]
**groupJoinInviteCount** | **int** |  | [optional] [default to null]
**currentUserMemberMap** | [**Map&lt;String, GroupsV2GroupMember&gt;**](GroupsV2GroupMember.md) | This property will be populated if the authenticated user is a member of the group. Note that because of account linking, a user can sometimes be part of a clan more than once. As such, this returns the highest member type available. | [optional] [default to {}]
**currentUserPotentialMemberMap** | [**Map&lt;String, GroupsV2GroupPotentialMember&gt;**](GroupsV2GroupPotentialMember.md) | This property will be populated if the authenticated user is an applicant or has an outstanding invitation to join. Note that because of account linking, a user can sometimes be part of a clan more than once. | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


