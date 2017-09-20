# destiny2_api.api.PreviewApi

## Load the API package
```dart
import 'package:destiny2_api/api.dart';
```

All URIs are relative to *https://www.bungie.net/Platform*

Method | HTTP request | Description
------------- | ------------- | -------------
[**destiny2ActivateTalentNode**](PreviewApi.md#destiny2ActivateTalentNode) | **POST** /Destiny2/Actions/Items/ActivateTalentNode/ | 
[**destiny2GetActivityHistory**](PreviewApi.md#destiny2GetActivityHistory) | **GET** /Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/Activities/ | 
[**destiny2GetClanAggregateStats**](PreviewApi.md#destiny2GetClanAggregateStats) | **GET** /Destiny2/Stats/AggregateClanStats/{groupId}/ | 
[**destiny2GetClanLeaderboards**](PreviewApi.md#destiny2GetClanLeaderboards) | **GET** /Destiny2/Stats/Leaderboards/Clans/{groupId}/ | 
[**destiny2GetDestinyAggregateActivityStats**](PreviewApi.md#destiny2GetDestinyAggregateActivityStats) | **GET** /Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/AggregateActivityStats/ | 
[**destiny2GetHistoricalStats**](PreviewApi.md#destiny2GetHistoricalStats) | **GET** /Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/ | 
[**destiny2GetHistoricalStatsForAccount**](PreviewApi.md#destiny2GetHistoricalStatsForAccount) | **GET** /Destiny2/{membershipType}/Account/{destinyMembershipId}/Stats/ | 
[**destiny2GetLeaderboards**](PreviewApi.md#destiny2GetLeaderboards) | **GET** /Destiny2/{membershipType}/Account/{destinyMembershipId}/Stats/Leaderboards/ | 
[**destiny2GetLeaderboardsForCharacter**](PreviewApi.md#destiny2GetLeaderboardsForCharacter) | **GET** /Destiny2/Stats/Leaderboards/{membershipType}/{destinyMembershipId}/{characterId}/ | 
[**destiny2GetUniqueWeaponHistory**](PreviewApi.md#destiny2GetUniqueWeaponHistory) | **GET** /Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/UniqueWeapons/ | 
[**destiny2GetVendor**](PreviewApi.md#destiny2GetVendor) | **GET** /Destiny2/{membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/Vendors/{vendorHash}/ | 
[**destiny2GetVendors**](PreviewApi.md#destiny2GetVendors) | **GET** /Destiny2/{membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/Vendors/ | 
[**destiny2InsertSocketPlug**](PreviewApi.md#destiny2InsertSocketPlug) | **POST** /Destiny2/Actions/Items/InsertSocketPlug/ | 
[**destiny2SearchDestinyEntities**](PreviewApi.md#destiny2SearchDestinyEntities) | **GET** /Destiny2/Armory/Search/{type}/{searchTerm}/ | 


# **destiny2ActivateTalentNode**
> InlineResponse20015 destiny2ActivateTalentNode()



Activate a Talent Node. Chill out, everyone: we haven't decided yet whether this will be able to activate nodes with costs, but if we do it will require special scope permission for an application attempting to do so. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. PREVIEW: This service is not actually implemented yet, but we are returning the planned schema of the endpoint for review, comment, and preparation for its eventual implementation.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PreviewApi();

try { 
    var result = api_instance.destiny2ActivateTalentNode();
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2ActivateTalentNode: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetActivityHistory**
> InlineResponse20045 destiny2GetActivityHistory(characterId, destinyMembershipId, membershipType, count, mode, page)



Gets activity history stats for indicated character. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new PreviewApi();
var characterId = 789; // int | The id of the character to retrieve.
var destinyMembershipId = 789; // int | The Destiny membershipId of the user to retrieve.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var count = 56; // int | Number of rows to return
var mode = 56; // int | A filter for the activity mode to be returned. None returns all activities. See the documentation for DestinyActivityModeType for valid values, and pass in string representation.
var page = 56; // int | Page number to return, starting with 0.

try { 
    var result = api_instance.destiny2GetActivityHistory(characterId, destinyMembershipId, membershipType, count, mode, page);
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2GetActivityHistory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **characterId** | **int**| The id of the character to retrieve. | 
 **destinyMembershipId** | **int**| The Destiny membershipId of the user to retrieve. | 
 **membershipType** | **int**| A valid non-BungieNet membership type. | 
 **count** | **int**| Number of rows to return | [optional] 
 **mode** | **int**| A filter for the activity mode to be returned. None returns all activities. See the documentation for DestinyActivityModeType for valid values, and pass in string representation. | [optional] 
 **page** | **int**| Page number to return, starting with 0. | [optional] 

### Return type

[**InlineResponse20045**](InlineResponse20045.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetClanAggregateStats**
> InlineResponse20041 destiny2GetClanAggregateStats(groupId, modes)



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

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetClanLeaderboards**
> InlineResponse20040 destiny2GetClanLeaderboards(groupId, maxtop, modes, statid)



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

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetDestinyAggregateActivityStats**
> InlineResponse20047 destiny2GetDestinyAggregateActivityStats(characterId, destinyMembershipId, membershipType)



Gets all activities the character has participated in together with aggregate statistics for those activities. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new PreviewApi();
var characterId = 789; // int | The specific character whose activities should be returned.
var destinyMembershipId = 789; // int | The Destiny membershipId of the user to retrieve.
var membershipType = 56; // int | A valid non-BungieNet membership type.

try { 
    var result = api_instance.destiny2GetDestinyAggregateActivityStats(characterId, destinyMembershipId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2GetDestinyAggregateActivityStats: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **characterId** | **int**| The specific character whose activities should be returned. | 
 **destinyMembershipId** | **int**| The Destiny membershipId of the user to retrieve. | 
 **membershipType** | **int**| A valid non-BungieNet membership type. | 

### Return type

[**InlineResponse20047**](InlineResponse20047.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetHistoricalStats**
> InlineResponse20043 destiny2GetHistoricalStats(characterId, destinyMembershipId, membershipType, dayend, daystart, groups, modes, periodType)



Gets historical stats for indicated character. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new PreviewApi();
var characterId = 789; // int | The id of the character to retrieve. You can omit this character ID or set it to 0 to get aggregate stats across all characters.
var destinyMembershipId = 789; // int | The Destiny membershipId of the user to retrieve.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var dayend = 2013-10-20T19:20:30+01:00; // DateTime | Last day to return when daily stats are requested. Use the format YYYY-MM-DD.
var daystart = 2013-10-20T19:20:30+01:00; // DateTime | First day to return when daily stats are requested. Use the format YYYY-MM-DD
var groups = []; // List<DestinyHistoricalStatsDefinitionsDestinyStatsGroupType> | Group of stats to include, otherwise only general stats are returned. Comma separated list is allowed. Values: General, Weapons, Medals
var modes = []; // List<DestinyHistoricalStatsDefinitionsDestinyActivityModeType> | Game modes to return. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited.
var periodType = 56; // int | Indicates a specific period type to return. Optional. May be: Daily, AllTime, or Activity

try { 
    var result = api_instance.destiny2GetHistoricalStats(characterId, destinyMembershipId, membershipType, dayend, daystart, groups, modes, periodType);
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2GetHistoricalStats: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **characterId** | **int**| The id of the character to retrieve. You can omit this character ID or set it to 0 to get aggregate stats across all characters. | 
 **destinyMembershipId** | **int**| The Destiny membershipId of the user to retrieve. | 
 **membershipType** | **int**| A valid non-BungieNet membership type. | 
 **dayend** | **DateTime**| Last day to return when daily stats are requested. Use the format YYYY-MM-DD. | [optional] 
 **daystart** | **DateTime**| First day to return when daily stats are requested. Use the format YYYY-MM-DD | [optional] 
 **groups** | [**List&lt;DestinyHistoricalStatsDefinitionsDestinyStatsGroupType&gt;**](DestinyHistoricalStatsDefinitionsDestinyStatsGroupType.md)| Group of stats to include, otherwise only general stats are returned. Comma separated list is allowed. Values: General, Weapons, Medals | [optional] 
 **modes** | [**List&lt;DestinyHistoricalStatsDefinitionsDestinyActivityModeType&gt;**](DestinyHistoricalStatsDefinitionsDestinyActivityModeType.md)| Game modes to return. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited. | [optional] 
 **periodType** | **int**| Indicates a specific period type to return. Optional. May be: Daily, AllTime, or Activity | [optional] 

### Return type

[**InlineResponse20043**](InlineResponse20043.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetHistoricalStatsForAccount**
> InlineResponse20044 destiny2GetHistoricalStatsForAccount(destinyMembershipId, membershipType, groups)



Gets aggregate historical stats organized around each character for a given account. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new PreviewApi();
var destinyMembershipId = 789; // int | The Destiny membershipId of the user to retrieve.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var groups = []; // List<DestinyHistoricalStatsDefinitionsDestinyStatsGroupType> | Groups of stats to include, otherwise only general stats are returned. Comma separated list is allowed. Values: General, Weapons, Medals.

try { 
    var result = api_instance.destiny2GetHistoricalStatsForAccount(destinyMembershipId, membershipType, groups);
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2GetHistoricalStatsForAccount: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **destinyMembershipId** | **int**| The Destiny membershipId of the user to retrieve. | 
 **membershipType** | **int**| A valid non-BungieNet membership type. | 
 **groups** | [**List&lt;DestinyHistoricalStatsDefinitionsDestinyStatsGroupType&gt;**](DestinyHistoricalStatsDefinitionsDestinyStatsGroupType.md)| Groups of stats to include, otherwise only general stats are returned. Comma separated list is allowed. Values: General, Weapons, Medals. | [optional] 

### Return type

[**InlineResponse20044**](InlineResponse20044.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetLeaderboards**
> InlineResponse20040 destiny2GetLeaderboards(destinyMembershipId, membershipType, maxtop, modes, statid)



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

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetLeaderboardsForCharacter**
> InlineResponse20040 destiny2GetLeaderboardsForCharacter(characterId, destinyMembershipId, membershipType, maxtop, modes, statid)



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

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetUniqueWeaponHistory**
> InlineResponse20046 destiny2GetUniqueWeaponHistory(characterId, destinyMembershipId, membershipType)



Gets details about unique weapon usage, including all exotic weapons. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new PreviewApi();
var characterId = 789; // int | The id of the character to retrieve.
var destinyMembershipId = 789; // int | The Destiny membershipId of the user to retrieve.
var membershipType = 56; // int | A valid non-BungieNet membership type.

try { 
    var result = api_instance.destiny2GetUniqueWeaponHistory(characterId, destinyMembershipId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2GetUniqueWeaponHistory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **characterId** | **int**| The id of the character to retrieve. | 
 **destinyMembershipId** | **int**| The Destiny membershipId of the user to retrieve. | 
 **membershipType** | **int**| A valid non-BungieNet membership type. | 

### Return type

[**InlineResponse20046**](InlineResponse20046.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetVendor**
> InlineResponse20036 destiny2GetVendor(characterId, destinyMembershipId, membershipType, vendorHash, components)



Get the details of a specific Vendor. PREVIEW: This service is not yet active, but we are returning the planned schema of the endpoint for review, comment, and preparation for its eventual implementation.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new PreviewApi();
var characterId = 789; // int | The Destiny Character ID of the character for whom we're getting vendor info.
var destinyMembershipId = 789; // int | Destiny membership ID of another user. You may be denied.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var vendorHash = 56; // int | The Hash identifier of the Vendor to be returned.
var components = []; // List<DestinyDestinyComponentType> | A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results.

try { 
    var result = api_instance.destiny2GetVendor(characterId, destinyMembershipId, membershipType, vendorHash, components);
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2GetVendor: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **characterId** | **int**| The Destiny Character ID of the character for whom we&#39;re getting vendor info. | 
 **destinyMembershipId** | **int**| Destiny membership ID of another user. You may be denied. | 
 **membershipType** | **int**| A valid non-BungieNet membership type. | 
 **vendorHash** | **int**| The Hash identifier of the Vendor to be returned. | 
 **components** | [**List&lt;DestinyDestinyComponentType&gt;**](DestinyDestinyComponentType.md)| A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results. | [optional] 

### Return type

[**InlineResponse20036**](InlineResponse20036.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetVendors**
> InlineResponse20035 destiny2GetVendors(characterId, destinyMembershipId, membershipType, components)



Get currently available vendors. PREVIEW: This service is not yet active, but we are returning the planned schema of the endpoint for review, comment, and preparation for its eventual implementation.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new PreviewApi();
var characterId = 789; // int | The Destiny Character ID of the character for whom we're getting vendor info.
var destinyMembershipId = 789; // int | Destiny membership ID of another user. You may be denied.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var components = []; // List<DestinyDestinyComponentType> | A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results.

try { 
    var result = api_instance.destiny2GetVendors(characterId, destinyMembershipId, membershipType, components);
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2GetVendors: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **characterId** | **int**| The Destiny Character ID of the character for whom we&#39;re getting vendor info. | 
 **destinyMembershipId** | **int**| Destiny membership ID of another user. You may be denied. | 
 **membershipType** | **int**| A valid non-BungieNet membership type. | 
 **components** | [**List&lt;DestinyDestinyComponentType&gt;**](DestinyDestinyComponentType.md)| A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results. | [optional] 

### Return type

[**InlineResponse20035**](InlineResponse20035.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2InsertSocketPlug**
> InlineResponse20015 destiny2InsertSocketPlug()



Insert a plug into a socketed item. I know how it sounds, but I assure you it's much more G-rated than you might be guessing. We haven't decided yet whether this will be able to insert plugs that have side effects, but if we do it will require special scope permission for an application attempting to do so. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. PREVIEW: This service is not yet active, but we are returning the planned schema of the endpoint for review, comment, and preparation for its eventual implementation.

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

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2SearchDestinyEntities**
> InlineResponse20042 destiny2SearchDestinyEntities(searchTerm, type, page)



Gets a page list of Destiny items.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new PreviewApi();
var searchTerm = searchTerm_example; // String | The string to use when searching for Destiny entities.
var type = type_example; // String | The type of entity for whom you would like results. These correspond to the entity's definition contract name. For instance, if you are looking for items, this property should be 'DestinyInventoryItemDefinition'. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is tentatively in final form, but there may be bugs that prevent desirable operation.
var page = 56; // int | Page number to return, starting with 0.

try { 
    var result = api_instance.destiny2SearchDestinyEntities(searchTerm, type, page);
    print(result);
} catch (e) {
    print("Exception when calling PreviewApi->destiny2SearchDestinyEntities: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | **String**| The string to use when searching for Destiny entities. | 
 **type** | **String**| The type of entity for whom you would like results. These correspond to the entity&#39;s definition contract name. For instance, if you are looking for items, this property should be &#39;DestinyInventoryItemDefinition&#39;. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is tentatively in final form, but there may be bugs that prevent desirable operation. | 
 **page** | **int**| Page number to return, starting with 0. | [optional] 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

