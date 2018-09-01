# destiny2_api.api.PreviewApi

## Load the API package
```dart
import 'package:destiny2_api/api.dart';
```

All URIs are relative to *https://www.bungie.net/Platform*

Method | HTTP request | Description
------------- | ------------- | -------------
[**destiny2GetClanAggregateStats**](PreviewApi.md#destiny2GetClanAggregateStats) | **GET** /Destiny2/Stats/AggregateClanStats/{groupId}/ | 
[**destiny2GetClanLeaderboards**](PreviewApi.md#destiny2GetClanLeaderboards) | **GET** /Destiny2/Stats/Leaderboards/Clans/{groupId}/ | 
[**destiny2GetLeaderboards**](PreviewApi.md#destiny2GetLeaderboards) | **GET** /Destiny2/{membershipType}/Account/{destinyMembershipId}/Stats/Leaderboards/ | 
[**destiny2GetLeaderboardsForCharacter**](PreviewApi.md#destiny2GetLeaderboardsForCharacter) | **GET** /Destiny2/Stats/Leaderboards/{membershipType}/{destinyMembershipId}/{characterId}/ | 
[**destiny2InsertSocketPlug**](PreviewApi.md#destiny2InsertSocketPlug) | **POST** /Destiny2/Actions/Items/InsertSocketPlug/ | 


# **destiny2GetClanAggregateStats**
> InlineResponse20048 destiny2GetClanAggregateStats(groupId, modes)



Gets aggregated stats for a clan using the same categories as the clan leaderboards. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new PreviewApi();
var groupId = 789; // int | Group ID of the clan whose leaderboards you wish to fetch.
var modes = modes_example; // String | List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited.

try { 
    var result = api_instance.destiny2GetClanAggregateStats(groupId, modes);
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2GetClanAggregateStats: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| Group ID of the clan whose leaderboards you wish to fetch. | 
 **modes** | **String**| List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited. | [optional] 

### Return type

[**InlineResponse20048**](InlineResponse20048.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetClanLeaderboards**
> InlineResponse20047 destiny2GetClanLeaderboards(groupId, maxtop, modes, statid)



Gets leaderboards with the signed in user's friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new PreviewApi();
var groupId = 789; // int | Group ID of the clan whose leaderboards you wish to fetch.
var maxtop = 56; // int | Maximum number of top players to return. Use a large number to get entire leaderboard.
var modes = modes_example; // String | List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited.
var statid = statid_example; // String | ID of stat to return rather than returning all Leaderboard stats.

try { 
    var result = api_instance.destiny2GetClanLeaderboards(groupId, maxtop, modes, statid);
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2GetClanLeaderboards: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| Group ID of the clan whose leaderboards you wish to fetch. | 
 **maxtop** | **int**| Maximum number of top players to return. Use a large number to get entire leaderboard. | [optional] 
 **modes** | **String**| List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited. | [optional] 
 **statid** | **String**| ID of stat to return rather than returning all Leaderboard stats. | [optional] 

### Return type

[**InlineResponse20047**](InlineResponse20047.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetLeaderboards**
> InlineResponse20047 destiny2GetLeaderboards(destinyMembershipId, membershipType, maxtop, modes, statid)



Gets leaderboards with the signed in user's friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint has not yet been implemented. It is being returned for a preview of future functionality, and for public comment/suggestion/preparation.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new PreviewApi();
var destinyMembershipId = 789; // int | The Destiny membershipId of the user to retrieve.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var maxtop = 56; // int | Maximum number of top players to return. Use a large number to get entire leaderboard.
var modes = modes_example; // String | List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited.
var statid = statid_example; // String | ID of stat to return rather than returning all Leaderboard stats.

try { 
    var result = api_instance.destiny2GetLeaderboards(destinyMembershipId, membershipType, maxtop, modes, statid);
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2GetLeaderboards: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **destinyMembershipId** | **int**| The Destiny membershipId of the user to retrieve. | 
 **membershipType** | **int**| A valid non-BungieNet membership type. | 
 **maxtop** | **int**| Maximum number of top players to return. Use a large number to get entire leaderboard. | [optional] 
 **modes** | **String**| List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited. | [optional] 
 **statid** | **String**| ID of stat to return rather than returning all Leaderboard stats. | [optional] 

### Return type

[**InlineResponse20047**](InlineResponse20047.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetLeaderboardsForCharacter**
> InlineResponse20047 destiny2GetLeaderboardsForCharacter(characterId, destinyMembershipId, membershipType, maxtop, modes, statid)



Gets leaderboards with the signed in user's friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new PreviewApi();
var characterId = 789; // int | The specific character to build the leaderboard around for the provided Destiny Membership.
var destinyMembershipId = 789; // int | The Destiny membershipId of the user to retrieve.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var maxtop = 56; // int | Maximum number of top players to return. Use a large number to get entire leaderboard.
var modes = modes_example; // String | List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited.
var statid = statid_example; // String | ID of stat to return rather than returning all Leaderboard stats.

try { 
    var result = api_instance.destiny2GetLeaderboardsForCharacter(characterId, destinyMembershipId, membershipType, maxtop, modes, statid);
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2GetLeaderboardsForCharacter: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **characterId** | **int**| The specific character to build the leaderboard around for the provided Destiny Membership. | 
 **destinyMembershipId** | **int**| The Destiny membershipId of the user to retrieve. | 
 **membershipType** | **int**| A valid non-BungieNet membership type. | 
 **maxtop** | **int**| Maximum number of top players to return. Use a large number to get entire leaderboard. | [optional] 
 **modes** | **String**| List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited. | [optional] 
 **statid** | **String**| ID of stat to return rather than returning all Leaderboard stats. | [optional] 

### Return type

[**InlineResponse20047**](InlineResponse20047.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2InsertSocketPlug**
> InlineResponse20044 destiny2InsertSocketPlug()



Insert a plug into a socketed item. I know how it sounds, but I assure you it's much more G-rated than you might be guessing. We haven't decided yet whether this will be able to insert plugs that have side effects, but if we do it will require special scope permission for an application attempting to do so. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. Request must include proof of permission for 'InsertPlugs' from the account owner.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PreviewApi();

try { 
    var result = api_instance.destiny2InsertSocketPlug();
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2InsertSocketPlug: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20044**](InlineResponse20044.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

