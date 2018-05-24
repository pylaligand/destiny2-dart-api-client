# destiny2_api.api.GroupV2Api

## Load the API package
```dart
import 'package:destiny2_api/api.dart';
```

All URIs are relative to *https://www.bungie.net/Platform*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groupV2AbdicateFoundership**](GroupV2Api.md#groupV2AbdicateFoundership) | **POST** /GroupV2/{groupId}/Admin/AbdicateFoundership/{membershipType}/{founderIdNew}/ | 
[**groupV2AddOptionalConversation**](GroupV2Api.md#groupV2AddOptionalConversation) | **POST** /GroupV2/{groupId}/OptionalConversations/Add/ | 
[**groupV2ApproveAllPending**](GroupV2Api.md#groupV2ApproveAllPending) | **POST** /GroupV2/{groupId}/Members/ApproveAll/ | 
[**groupV2ApprovePending**](GroupV2Api.md#groupV2ApprovePending) | **POST** /GroupV2/{groupId}/Members/Approve/{membershipType}/{membershipId}/ | 
[**groupV2ApprovePendingForList**](GroupV2Api.md#groupV2ApprovePendingForList) | **POST** /GroupV2/{groupId}/Members/ApproveList/ | 
[**groupV2BanMember**](GroupV2Api.md#groupV2BanMember) | **POST** /GroupV2/{groupId}/Members/{membershipType}/{membershipId}/Ban/ | 
[**groupV2CreateGroup**](GroupV2Api.md#groupV2CreateGroup) | **POST** /GroupV2/Create/ | 
[**groupV2DenyAllPending**](GroupV2Api.md#groupV2DenyAllPending) | **POST** /GroupV2/{groupId}/Members/DenyAll/ | 
[**groupV2DenyPendingForList**](GroupV2Api.md#groupV2DenyPendingForList) | **POST** /GroupV2/{groupId}/Members/DenyList/ | 
[**groupV2EditClanBanner**](GroupV2Api.md#groupV2EditClanBanner) | **POST** /GroupV2/{groupId}/EditClanBanner/ | 
[**groupV2EditFounderOptions**](GroupV2Api.md#groupV2EditFounderOptions) | **POST** /GroupV2/{groupId}/EditFounderOptions/ | 
[**groupV2EditGroup**](GroupV2Api.md#groupV2EditGroup) | **POST** /GroupV2/{groupId}/Edit/ | 
[**groupV2EditGroupMembership**](GroupV2Api.md#groupV2EditGroupMembership) | **POST** /GroupV2/{groupId}/Members/{membershipType}/{membershipId}/SetMembershipType/{memberType}/ | 
[**groupV2EditOptionalConversation**](GroupV2Api.md#groupV2EditOptionalConversation) | **POST** /GroupV2/{groupId}/OptionalConversations/Edit/{conversationId}/ | 
[**groupV2GetAdminsAndFounderOfGroup**](GroupV2Api.md#groupV2GetAdminsAndFounderOfGroup) | **GET** /GroupV2/{groupId}/AdminsAndFounder/ | 
[**groupV2GetAvailableAvatars**](GroupV2Api.md#groupV2GetAvailableAvatars) | **GET** /GroupV2/GetAvailableAvatars/ | 
[**groupV2GetAvailableThemes**](GroupV2Api.md#groupV2GetAvailableThemes) | **GET** /GroupV2/GetAvailableThemes/ | 
[**groupV2GetBannedMembersOfGroup**](GroupV2Api.md#groupV2GetBannedMembersOfGroup) | **GET** /GroupV2/{groupId}/Banned/ | 
[**groupV2GetGroup**](GroupV2Api.md#groupV2GetGroup) | **GET** /GroupV2/{groupId}/ | 
[**groupV2GetGroupByName**](GroupV2Api.md#groupV2GetGroupByName) | **GET** /GroupV2/Name/{groupName}/{groupType}/ | 
[**groupV2GetGroupOptionalConversations**](GroupV2Api.md#groupV2GetGroupOptionalConversations) | **GET** /GroupV2/{groupId}/OptionalConversations/ | 
[**groupV2GetGroupsForMember**](GroupV2Api.md#groupV2GetGroupsForMember) | **GET** /GroupV2/User/{membershipType}/{membershipId}/{filter}/{groupType}/ | 
[**groupV2GetInvitedIndividuals**](GroupV2Api.md#groupV2GetInvitedIndividuals) | **GET** /GroupV2/{groupId}/Members/InvitedIndividuals/ | 
[**groupV2GetMembersOfGroup**](GroupV2Api.md#groupV2GetMembersOfGroup) | **GET** /GroupV2/{groupId}/Members/ | 
[**groupV2GetPendingMemberships**](GroupV2Api.md#groupV2GetPendingMemberships) | **GET** /GroupV2/{groupId}/Members/Pending/ | 
[**groupV2GetPotentialGroupsForMember**](GroupV2Api.md#groupV2GetPotentialGroupsForMember) | **GET** /GroupV2/User/Potential/{membershipType}/{membershipId}/{filter}/{groupType}/ | 
[**groupV2GetRecommendedGroups**](GroupV2Api.md#groupV2GetRecommendedGroups) | **POST** /GroupV2/Recommended/{groupType}/{createDateRange}/ | 
[**groupV2GetUserClanInviteSetting**](GroupV2Api.md#groupV2GetUserClanInviteSetting) | **GET** /GroupV2/GetUserClanInviteSetting/{mType}/ | 
[**groupV2GroupSearch**](GroupV2Api.md#groupV2GroupSearch) | **POST** /GroupV2/Search/ | 
[**groupV2IndividualGroupInvite**](GroupV2Api.md#groupV2IndividualGroupInvite) | **POST** /GroupV2/{groupId}/Members/IndividualInvite/{membershipType}/{membershipId}/ | 
[**groupV2IndividualGroupInviteCancel**](GroupV2Api.md#groupV2IndividualGroupInviteCancel) | **POST** /GroupV2/{groupId}/Members/IndividualInviteCancel/{membershipType}/{membershipId}/ | 
[**groupV2KickMember**](GroupV2Api.md#groupV2KickMember) | **POST** /GroupV2/{groupId}/Members/{membershipType}/{membershipId}/Kick/ | 
[**groupV2RequestGroupMembership**](GroupV2Api.md#groupV2RequestGroupMembership) | **POST** /GroupV2/{groupId}/Members/Apply/{membershipType}/ | 
[**groupV2RescindGroupMembership**](GroupV2Api.md#groupV2RescindGroupMembership) | **POST** /GroupV2/{groupId}/Members/Rescind/{membershipType}/ | 
[**groupV2SetUserClanInviteSetting**](GroupV2Api.md#groupV2SetUserClanInviteSetting) | **POST** /GroupV2/SetUserClanInviteSetting/{mType}/{allowInvites}/ | 
[**groupV2UnbanMember**](GroupV2Api.md#groupV2UnbanMember) | **POST** /GroupV2/{groupId}/Members/{membershipType}/{membershipId}/Unban/ | 


# **groupV2AbdicateFoundership**
> InlineResponse20015 groupV2AbdicateFoundership(founderIdNew, groupId, membershipType)



An administrative method to allow the founder of a group or clan to give up their position to another admin permanently.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new GroupV2Api();
var founderIdNew = 789; // int | The new founder for this group. Must already be a group admin.
var groupId = 789; // int | The target group id.
var membershipType = 56; // int | Membership type of the provided founderIdNew.

try { 
    var result = api_instance.groupV2AbdicateFoundership(founderIdNew, groupId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2AbdicateFoundership: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **founderIdNew** | **int**| The new founder for this group. Must already be a group admin. | 
 **groupId** | **int**| The target group id. | 
 **membershipType** | **int**| Membership type of the provided founderIdNew. | 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2AddOptionalConversation**
> InlineResponse2008 groupV2AddOptionalConversation(groupId)



Add a new optional conversation/chat channel. Requires admin permissions to the group.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | Group ID of the group to edit.

try { 
    var result = api_instance.groupV2AddOptionalConversation(groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2AddOptionalConversation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| Group ID of the group to edit. | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2ApproveAllPending**
> InlineResponse20027 groupV2ApproveAllPending(groupId)



Approve all of the pending users for the given group.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | ID of the group.

try { 
    var result = api_instance.groupV2ApproveAllPending(groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2ApproveAllPending: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| ID of the group. | 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2ApprovePending**
> InlineResponse20015 groupV2ApprovePending(groupId, membershipId, membershipType)



Approve the given membershipId to join the group/clan as long as they have applied.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | ID of the group.
var membershipId = 789; // int | The membership id being approved.
var membershipType = 56; // int | Membership type of the supplied membership ID.

try { 
    var result = api_instance.groupV2ApprovePending(groupId, membershipId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2ApprovePending: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| ID of the group. | 
 **membershipId** | **int**| The membership id being approved. | 
 **membershipType** | **int**| Membership type of the supplied membership ID. | 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2ApprovePendingForList**
> InlineResponse20027 groupV2ApprovePendingForList(groupId)



Approve all of the pending users for the given group.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | ID of the group.

try { 
    var result = api_instance.groupV2ApprovePendingForList(groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2ApprovePendingForList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| ID of the group. | 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2BanMember**
> InlineResponse20016 groupV2BanMember(groupId, membershipId, membershipType)



Bans the requested member from the requested group for the specified period of time.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | Group ID that has the member to ban.
var membershipId = 789; // int | Membership ID of the member to ban from the group.
var membershipType = 56; // int | Membership type of the provided membership ID.

try { 
    var result = api_instance.groupV2BanMember(groupId, membershipId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2BanMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| Group ID that has the member to ban. | 
 **membershipId** | **int**| Membership ID of the member to ban from the group. | 
 **membershipType** | **int**| Membership type of the provided membership ID. | 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2CreateGroup**
> InlineResponse20021 groupV2CreateGroup()



Create a new group.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();

try { 
    var result = api_instance.groupV2CreateGroup();
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2CreateGroup: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2DenyAllPending**
> InlineResponse20027 groupV2DenyAllPending(groupId)



Deny all of the pending users for the given group.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | ID of the group.

try { 
    var result = api_instance.groupV2DenyAllPending(groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2DenyAllPending: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| ID of the group. | 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2DenyPendingForList**
> InlineResponse20027 groupV2DenyPendingForList(groupId)



Deny all of the pending users for the given group that match the passed-in .

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | ID of the group.

try { 
    var result = api_instance.groupV2DenyPendingForList(groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2DenyPendingForList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| ID of the group. | 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2EditClanBanner**
> InlineResponse20016 groupV2EditClanBanner(groupId)



Edit an existing group's clan banner. You must have suitable permissions in the group to perform this operation. All fields are required.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | Group ID of the group to edit.

try { 
    var result = api_instance.groupV2EditClanBanner(groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2EditClanBanner: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| Group ID of the group to edit. | 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2EditFounderOptions**
> InlineResponse20016 groupV2EditFounderOptions(groupId)



Edit group options only available to a founder. You must have suitable permissions in the group to perform this operation.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | Group ID of the group to edit.

try { 
    var result = api_instance.groupV2EditFounderOptions(groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2EditFounderOptions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| Group ID of the group to edit. | 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2EditGroup**
> InlineResponse20016 groupV2EditGroup(groupId)



Edit an existing group. You must have suitable permissions in the group to perform this operation. This latest revision will only edit the fields you pass in - pass null for properties you want to leave unaltered.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | Group ID of the group to edit.

try { 
    var result = api_instance.groupV2EditGroup(groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2EditGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| Group ID of the group to edit. | 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2EditGroupMembership**
> InlineResponse20016 groupV2EditGroupMembership(groupId, membershipId, membershipType, memberType)



Edit the membership type of a given member. You must have suitable permissions in the group to perform this operation.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | ID of the group to which the member belongs.
var membershipId = 789; // int | Membership ID to modify.
var membershipType = 56; // int | Membership type of the provide membership ID.
var memberType = 56; // int | New membertype for the specified member.

try { 
    var result = api_instance.groupV2EditGroupMembership(groupId, membershipId, membershipType, memberType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2EditGroupMembership: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| ID of the group to which the member belongs. | 
 **membershipId** | **int**| Membership ID to modify. | 
 **membershipType** | **int**| Membership type of the provide membership ID. | 
 **memberType** | **int**| New membertype for the specified member. | 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2EditOptionalConversation**
> InlineResponse2008 groupV2EditOptionalConversation(conversationId, groupId)



Edit the settings of an optional conversation/chat channel. Requires admin permissions to the group.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var conversationId = 789; // int | Conversation Id of the channel being edited.
var groupId = 789; // int | Group ID of the group to edit.

try { 
    var result = api_instance.groupV2EditOptionalConversation(conversationId, groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2EditOptionalConversation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **int**| Conversation Id of the channel being edited. | 
 **groupId** | **int**| Group ID of the group to edit. | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetAdminsAndFounderOfGroup**
> InlineResponse20022 groupV2GetAdminsAndFounderOfGroup(currentpage, groupId)



Get the list of members in a given group who are of admin level or higher.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new GroupV2Api();
var currentpage = 56; // int | Page number (starting with 1). Each page has a fixed size of 50 items per page.
var groupId = 789; // int | The ID of the group.

try { 
    var result = api_instance.groupV2GetAdminsAndFounderOfGroup(currentpage, groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetAdminsAndFounderOfGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currentpage** | **int**| Page number (starting with 1). Each page has a fixed size of 50 items per page. | 
 **groupId** | **int**| The ID of the group. | 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetAvailableAvatars**
> InlineResponse20013 groupV2GetAvailableAvatars()



Returns a list of all available group avatars for the signed-in user.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new GroupV2Api();

try { 
    var result = api_instance.groupV2GetAvailableAvatars();
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetAvailableAvatars: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetAvailableThemes**
> InlineResponse20014 groupV2GetAvailableThemes()



Returns a list of all available group themes.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new GroupV2Api();

try { 
    var result = api_instance.groupV2GetAvailableThemes();
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetAvailableThemes: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetBannedMembersOfGroup**
> InlineResponse20024 groupV2GetBannedMembersOfGroup(currentpage, groupId)



Get the list of banned members in a given group. Only accessible to group Admins and above. Not applicable to all groups. Check group features.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var currentpage = 56; // int | Page number (starting with 1). Each page has a fixed size of 50 entries.
var groupId = 789; // int | Group ID whose banned members you are fetching

try { 
    var result = api_instance.groupV2GetBannedMembersOfGroup(currentpage, groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetBannedMembersOfGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currentpage** | **int**| Page number (starting with 1). Each page has a fixed size of 50 entries. | 
 **groupId** | **int**| Group ID whose banned members you are fetching | 

### Return type

[**InlineResponse20024**](InlineResponse20024.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetGroup**
> InlineResponse20019 groupV2GetGroup(groupId)



Get information about a specific group of the given ID.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new GroupV2Api();
var groupId = 789; // int | Requested group's id.

try { 
    var result = api_instance.groupV2GetGroup(groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| Requested group&#39;s id. | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetGroupByName**
> InlineResponse20019 groupV2GetGroupByName(groupName, groupType)



Get information about a specific group with the given name and type.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new GroupV2Api();
var groupName = groupName_example; // String | Exact name of the group to find.
var groupType = 56; // int | Type of group to find.

try { 
    var result = api_instance.groupV2GetGroupByName(groupName, groupType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetGroupByName: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupName** | **String**| Exact name of the group to find. | 
 **groupType** | **int**| Type of group to find. | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetGroupOptionalConversations**
> InlineResponse20020 groupV2GetGroupOptionalConversations(groupId)



Gets a list of available optional conversation channels and their settings.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new GroupV2Api();
var groupId = 789; // int | Requested group's id.

try { 
    var result = api_instance.groupV2GetGroupOptionalConversations(groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetGroupOptionalConversations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| Requested group&#39;s id. | 

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetGroupsForMember**
> InlineResponse20028 groupV2GetGroupsForMember(filter, groupType, membershipId, membershipType)



Get information about the groups that a given member has joined.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new GroupV2Api();
var filter = 56; // int | Filter apply to list of joined groups.
var groupType = 56; // int | Type of group the supplied member founded.
var membershipId = 789; // int | Membership ID to for which to find founded groups.
var membershipType = 56; // int | Membership type of the supplied membership ID.

try { 
    var result = api_instance.groupV2GetGroupsForMember(filter, groupType, membershipId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetGroupsForMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **int**| Filter apply to list of joined groups. | 
 **groupType** | **int**| Type of group the supplied member founded. | 
 **membershipId** | **int**| Membership ID to for which to find founded groups. | 
 **membershipType** | **int**| Membership type of the supplied membership ID. | 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetInvitedIndividuals**
> InlineResponse20026 groupV2GetInvitedIndividuals(currentpage, groupId)



Get the list of users who have been invited into the group.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var currentpage = 56; // int | Page number (starting with 1). Each page has a fixed size of 50 items per page.
var groupId = 789; // int | ID of the group.

try { 
    var result = api_instance.groupV2GetInvitedIndividuals(currentpage, groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetInvitedIndividuals: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currentpage** | **int**| Page number (starting with 1). Each page has a fixed size of 50 items per page. | 
 **groupId** | **int**| ID of the group. | 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetMembersOfGroup**
> InlineResponse20022 groupV2GetMembersOfGroup(currentpage, groupId, memberType, nameSearch)



Get the list of members in a given group.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new GroupV2Api();
var currentpage = 56; // int | Page number (starting with 1). Each page has a fixed size of 50 items per page.
var groupId = 789; // int | The ID of the group.
var memberType = 56; // int | Filter out other member types. Use None for all members.
var nameSearch = nameSearch_example; // String | The name fragment upon which a search should be executed for members with matching display or unique names.

try { 
    var result = api_instance.groupV2GetMembersOfGroup(currentpage, groupId, memberType, nameSearch);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetMembersOfGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currentpage** | **int**| Page number (starting with 1). Each page has a fixed size of 50 items per page. | 
 **groupId** | **int**| The ID of the group. | 
 **memberType** | **int**| Filter out other member types. Use None for all members. | [optional] 
 **nameSearch** | **String**| The name fragment upon which a search should be executed for members with matching display or unique names. | [optional] 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetPendingMemberships**
> InlineResponse20026 groupV2GetPendingMemberships(currentpage, groupId)



Get the list of users who are awaiting a decision on their application to join a given group. Modified to include application info.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var currentpage = 56; // int | Page number (starting with 1). Each page has a fixed size of 50 items per page.
var groupId = 789; // int | ID of the group.

try { 
    var result = api_instance.groupV2GetPendingMemberships(currentpage, groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetPendingMemberships: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currentpage** | **int**| Page number (starting with 1). Each page has a fixed size of 50 items per page. | 
 **groupId** | **int**| ID of the group. | 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetPotentialGroupsForMember**
> InlineResponse20029 groupV2GetPotentialGroupsForMember(filter, groupType, membershipId, membershipType)



Get information about the groups that a given member has applied to or been invited to.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new GroupV2Api();
var filter = 56; // int | Filter apply to list of potential joined groups.
var groupType = 56; // int | Type of group the supplied member applied.
var membershipId = 789; // int | Membership ID to for which to find applied groups.
var membershipType = 56; // int | Membership type of the supplied membership ID.

try { 
    var result = api_instance.groupV2GetPotentialGroupsForMember(filter, groupType, membershipId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetPotentialGroupsForMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **int**| Filter apply to list of potential joined groups. | 
 **groupType** | **int**| Type of group the supplied member applied. | 
 **membershipId** | **int**| Membership ID to for which to find applied groups. | 
 **membershipType** | **int**| Membership type of the supplied membership ID. | 

### Return type

[**InlineResponse20029**](InlineResponse20029.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetRecommendedGroups**
> InlineResponse20017 groupV2GetRecommendedGroups(createDateRange, groupType)



Gets groups recommended for you based on the groups to whom those you follow belong.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var createDateRange = 56; // int | Requested range in which to pull recommended groups
var groupType = 56; // int | Type of groups requested

try { 
    var result = api_instance.groupV2GetRecommendedGroups(createDateRange, groupType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetRecommendedGroups: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDateRange** | **int**| Requested range in which to pull recommended groups | 
 **groupType** | **int**| Type of groups requested | 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GetUserClanInviteSetting**
> InlineResponse20015 groupV2GetUserClanInviteSetting(mType)



Gets the state of the user's clan invite preferences for a particular membership type - true if they wish to be invited to clans, false otherwise.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var mType = 56; // int | The Destiny membership type of the account we wish to access settings.

try { 
    var result = api_instance.groupV2GetUserClanInviteSetting(mType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GetUserClanInviteSetting: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mType** | **int**| The Destiny membership type of the account we wish to access settings. | 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2GroupSearch**
> InlineResponse20018 groupV2GroupSearch()



Search for Groups.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new GroupV2Api();

try { 
    var result = api_instance.groupV2GroupSearch();
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2GroupSearch: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2IndividualGroupInvite**
> InlineResponse20025 groupV2IndividualGroupInvite(groupId, membershipId, membershipType)



Invite a user to join this group.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | ID of the group you would like to join.
var membershipId = 789; // int | Membership id of the account being invited.
var membershipType = 56; // int | MembershipType of the account being invited.

try { 
    var result = api_instance.groupV2IndividualGroupInvite(groupId, membershipId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2IndividualGroupInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| ID of the group you would like to join. | 
 **membershipId** | **int**| Membership id of the account being invited. | 
 **membershipType** | **int**| MembershipType of the account being invited. | 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2IndividualGroupInviteCancel**
> InlineResponse20025 groupV2IndividualGroupInviteCancel(groupId, membershipId, membershipType)



Cancels a pending invitation to join a group.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | ID of the group you would like to join.
var membershipId = 789; // int | Membership id of the account being cancelled.
var membershipType = 56; // int | MembershipType of the account being cancelled.

try { 
    var result = api_instance.groupV2IndividualGroupInviteCancel(groupId, membershipId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2IndividualGroupInviteCancel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| ID of the group you would like to join. | 
 **membershipId** | **int**| Membership id of the account being cancelled. | 
 **membershipType** | **int**| MembershipType of the account being cancelled. | 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2KickMember**
> InlineResponse20023 groupV2KickMember(groupId, membershipId, membershipType)



Kick a member from the given group, forcing them to reapply if they wish to re-join the group. You must have suitable permissions in the group to perform this operation.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | Group ID to kick the user from.
var membershipId = 789; // int | Membership ID to kick.
var membershipType = 56; // int | Membership type of the provided membership ID.

try { 
    var result = api_instance.groupV2KickMember(groupId, membershipId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2KickMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| Group ID to kick the user from. | 
 **membershipId** | **int**| Membership ID to kick. | 
 **membershipType** | **int**| Membership type of the provided membership ID. | 

### Return type

[**InlineResponse20023**](InlineResponse20023.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2RequestGroupMembership**
> InlineResponse20025 groupV2RequestGroupMembership(groupId, membershipType)



Request permission to join the given group.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | ID of the group you would like to join.
var membershipType = 56; // int | MembershipType of the account to use when joining.

try { 
    var result = api_instance.groupV2RequestGroupMembership(groupId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2RequestGroupMembership: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| ID of the group you would like to join. | 
 **membershipType** | **int**| MembershipType of the account to use when joining. | 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2RescindGroupMembership**
> InlineResponse20023 groupV2RescindGroupMembership(groupId, membershipType)



Rescind your application to join the given group or leave the group if you are already a member..

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | ID of the group.
var membershipType = 56; // int | MembershipType of the account to leave.

try { 
    var result = api_instance.groupV2RescindGroupMembership(groupId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2RescindGroupMembership: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| ID of the group. | 
 **membershipType** | **int**| MembershipType of the account to leave. | 

### Return type

[**InlineResponse20023**](InlineResponse20023.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2SetUserClanInviteSetting**
> InlineResponse20016 groupV2SetUserClanInviteSetting(allowInvites, mType)



Sets the state of the user's clan invite preferences - true if they wish to be invited to clans, false otherwise.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var allowInvites = true; // bool | True to allow invites of this user to clans, false otherwise.
var mType = 56; // int | The Destiny membership type of linked account we are manipulating.

try { 
    var result = api_instance.groupV2SetUserClanInviteSetting(allowInvites, mType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2SetUserClanInviteSetting: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allowInvites** | **bool**| True to allow invites of this user to clans, false otherwise. | 
 **mType** | **int**| The Destiny membership type of linked account we are manipulating. | 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupV2UnbanMember**
> InlineResponse20016 groupV2UnbanMember(groupId, membershipId, membershipType)



Unbans the requested member, allowing them to re-apply for membership.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new GroupV2Api();
var groupId = 789; // int | 
var membershipId = 789; // int | Membership ID of the member to unban from the group
var membershipType = 56; // int | Membership type of the provided membership ID.

try { 
    var result = api_instance.groupV2UnbanMember(groupId, membershipId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling GroupV2Api->groupV2UnbanMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**|  | 
 **membershipId** | **int**| Membership ID of the member to unban from the group | 
 **membershipType** | **int**| Membership type of the provided membership ID. | 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

