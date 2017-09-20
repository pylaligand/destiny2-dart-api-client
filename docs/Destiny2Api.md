# destiny2_api.api.Destiny2Api

## Load the API package
```dart
import 'package:destiny2_api/api.dart';
```

All URIs are relative to *https://www.bungie.net/Platform*

Method | HTTP request | Description
------------- | ------------- | -------------
[**destiny2ActivateTalentNode**](Destiny2Api.md#destiny2ActivateTalentNode) | **POST** /Destiny2/Actions/Items/ActivateTalentNode/ | 
[**destiny2EquipItem**](Destiny2Api.md#destiny2EquipItem) | **POST** /Destiny2/Actions/Items/EquipItem/ | 
[**destiny2EquipItems**](Destiny2Api.md#destiny2EquipItems) | **POST** /Destiny2/Actions/Items/EquipItems/ | 
[**destiny2GetActivityHistory**](Destiny2Api.md#destiny2GetActivityHistory) | **GET** /Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/Activities/ | 
[**destiny2GetCharacter**](Destiny2Api.md#destiny2GetCharacter) | **GET** /Destiny2/{membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/ | 
[**destiny2GetClanAggregateStats**](Destiny2Api.md#destiny2GetClanAggregateStats) | **GET** /Destiny2/Stats/AggregateClanStats/{groupId}/ | 
[**destiny2GetClanLeaderboards**](Destiny2Api.md#destiny2GetClanLeaderboards) | **GET** /Destiny2/Stats/Leaderboards/Clans/{groupId}/ | 
[**destiny2GetClanWeeklyRewardState**](Destiny2Api.md#destiny2GetClanWeeklyRewardState) | **GET** /Destiny2/Clan/{groupId}/WeeklyRewardState/ | 
[**destiny2GetDestinyAggregateActivityStats**](Destiny2Api.md#destiny2GetDestinyAggregateActivityStats) | **GET** /Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/AggregateActivityStats/ | 
[**destiny2GetDestinyEntityDefinition**](Destiny2Api.md#destiny2GetDestinyEntityDefinition) | **GET** /Destiny2/Manifest/{entityType}/{hashIdentifier}/ | 
[**destiny2GetDestinyManifest**](Destiny2Api.md#destiny2GetDestinyManifest) | **GET** /Destiny2/Manifest/ | 
[**destiny2GetHistoricalStats**](Destiny2Api.md#destiny2GetHistoricalStats) | **GET** /Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/ | 
[**destiny2GetHistoricalStatsDefinition**](Destiny2Api.md#destiny2GetHistoricalStatsDefinition) | **GET** /Destiny2/Stats/Definition/ | 
[**destiny2GetHistoricalStatsForAccount**](Destiny2Api.md#destiny2GetHistoricalStatsForAccount) | **GET** /Destiny2/{membershipType}/Account/{destinyMembershipId}/Stats/ | 
[**destiny2GetItem**](Destiny2Api.md#destiny2GetItem) | **GET** /Destiny2/{membershipType}/Profile/{destinyMembershipId}/Item/{itemInstanceId}/ | 
[**destiny2GetLeaderboards**](Destiny2Api.md#destiny2GetLeaderboards) | **GET** /Destiny2/{membershipType}/Account/{destinyMembershipId}/Stats/Leaderboards/ | 
[**destiny2GetLeaderboardsForCharacter**](Destiny2Api.md#destiny2GetLeaderboardsForCharacter) | **GET** /Destiny2/Stats/Leaderboards/{membershipType}/{destinyMembershipId}/{characterId}/ | 
[**destiny2GetPostGameCarnageReport**](Destiny2Api.md#destiny2GetPostGameCarnageReport) | **GET** /Destiny2/Stats/PostGameCarnageReport/{activityId}/ | 
[**destiny2GetProfile**](Destiny2Api.md#destiny2GetProfile) | **GET** /Destiny2/{membershipType}/Profile/{destinyMembershipId}/ | 
[**destiny2GetPublicMilestoneContent**](Destiny2Api.md#destiny2GetPublicMilestoneContent) | **GET** /Destiny2/Milestones/{milestoneHash}/Content/ | 
[**destiny2GetPublicMilestones**](Destiny2Api.md#destiny2GetPublicMilestones) | **GET** /Destiny2/Milestones/ | 
[**destiny2GetUniqueWeaponHistory**](Destiny2Api.md#destiny2GetUniqueWeaponHistory) | **GET** /Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/UniqueWeapons/ | 
[**destiny2GetVendor**](Destiny2Api.md#destiny2GetVendor) | **GET** /Destiny2/{membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/Vendors/{vendorHash}/ | 
[**destiny2GetVendors**](Destiny2Api.md#destiny2GetVendors) | **GET** /Destiny2/{membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/Vendors/ | 
[**destiny2InsertSocketPlug**](Destiny2Api.md#destiny2InsertSocketPlug) | **POST** /Destiny2/Actions/Items/InsertSocketPlug/ | 
[**destiny2SearchDestinyEntities**](Destiny2Api.md#destiny2SearchDestinyEntities) | **GET** /Destiny2/Armory/Search/{type}/{searchTerm}/ | 
[**destiny2SearchDestinyPlayer**](Destiny2Api.md#destiny2SearchDestinyPlayer) | **GET** /Destiny2/SearchDestinyPlayer/{membershipType}/{displayName}/ | 
[**destiny2SetItemLockState**](Destiny2Api.md#destiny2SetItemLockState) | **POST** /Destiny2/Actions/Items/SetLockState/ | 
[**destiny2TransferItem**](Destiny2Api.md#destiny2TransferItem) | **POST** /Destiny2/Actions/Items/TransferItem/ | 


# **destiny2ActivateTalentNode**
> InlineResponse20015 destiny2ActivateTalentNode()



Activate a Talent Node. Chill out, everyone: we haven't decided yet whether this will be able to activate nodes with costs, but if we do it will require special scope permission for an application attempting to do so. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. PREVIEW: This service is not actually implemented yet, but we are returning the planned schema of the endpoint for review, comment, and preparation for its eventual implementation.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Destiny2Api();

try { 
    var result = api_instance.destiny2ActivateTalentNode();
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2ActivateTalentNode: $e\n");
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

# **destiny2EquipItem**
> InlineResponse20015 destiny2EquipItem()



Equip an item. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Destiny2Api();

try { 
    var result = api_instance.destiny2EquipItem();
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2EquipItem: $e\n");
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

# **destiny2EquipItems**
> InlineResponse20037 destiny2EquipItems()



Equip a list of items by itemInstanceIds. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. Any items not found on your character will be ignored.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Destiny2Api();

try { 
    var result = api_instance.destiny2EquipItems();
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2EquipItems: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20037**](InlineResponse20037.md)

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

var api_instance = new Destiny2Api();
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
    print("Exception when calling Destiny2Api->destiny2GetActivityHistory: $e\n");
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

# **destiny2GetCharacter**
> InlineResponse20032 destiny2GetCharacter(characterId, destinyMembershipId, membershipType, components)



Returns character information for the supplied character.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new Destiny2Api();
var characterId = 789; // int | ID of the character.
var destinyMembershipId = 789; // int | Destiny membership ID.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var components = []; // List<DestinyDestinyComponentType> | A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results.

try { 
    var result = api_instance.destiny2GetCharacter(characterId, destinyMembershipId, membershipType, components);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetCharacter: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **characterId** | **int**| ID of the character. | 
 **destinyMembershipId** | **int**| Destiny membership ID. | 
 **membershipType** | **int**| A valid non-BungieNet membership type. | 
 **components** | [**List&lt;DestinyDestinyComponentType&gt;**](DestinyDestinyComponentType.md)| A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results. | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

var api_instance = new Destiny2Api();
var groupId = 789; // int | Group ID of the clan whose leaderboards you wish to fetch.
var modes = modes_example; // String | List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited.

try { 
    var result = api_instance.destiny2GetClanAggregateStats(groupId, modes);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetClanAggregateStats: $e\n");
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

var api_instance = new Destiny2Api();
var groupId = 789; // int | Group ID of the clan whose leaderboards you wish to fetch.
var maxtop = 56; // int | Maximum number of top players to return. Use a large number to get entire leaderboard.
var modes = modes_example; // String | List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited.
var statid = statid_example; // String | ID of stat to return rather than returning all Leaderboard stats.

try { 
    var result = api_instance.destiny2GetClanLeaderboards(groupId, maxtop, modes, statid);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetClanLeaderboards: $e\n");
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

# **destiny2GetClanWeeklyRewardState**
> InlineResponse20033 destiny2GetClanWeeklyRewardState(groupId)



Returns information on the weekly clan rewards and if the clan has earned them or not. Note that this will always report rewards as not redeemed.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new Destiny2Api();
var groupId = 789; // int | A valid group id of clan.

try { 
    var result = api_instance.destiny2GetClanWeeklyRewardState(groupId);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetClanWeeklyRewardState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| A valid group id of clan. | 

### Return type

[**InlineResponse20033**](InlineResponse20033.md)

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

var api_instance = new Destiny2Api();
var characterId = 789; // int | The specific character whose activities should be returned.
var destinyMembershipId = 789; // int | The Destiny membershipId of the user to retrieve.
var membershipType = 56; // int | A valid non-BungieNet membership type.

try { 
    var result = api_instance.destiny2GetDestinyAggregateActivityStats(characterId, destinyMembershipId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetDestinyAggregateActivityStats: $e\n");
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

# **destiny2GetDestinyEntityDefinition**
> InlineResponse20029 destiny2GetDestinyEntityDefinition(entityType, hashIdentifier)



Returns the static definition of an entity of the given Type and hash identifier. Examine the API Documentation for the Type Names of entities that have their own definitions. Note that the return type will always *inherit from* DestinyDefinition, but the specific type returned will be the requested entity type if it can be found. Please don't use this as a chatty alternative to the Manifest database if you require large sets of data, but for simple and one-off accesses this should be handy.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new Destiny2Api();
var entityType = entityType_example; // String | The type of entity for whom you would like results. These correspond to the entity's definition contract name. For instance, if you are looking for items, this property should be 'DestinyInventoryItemDefinition'. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is tentatively in final form, but there may be bugs that prevent desirable operation.
var hashIdentifier = 56; // int | The hash identifier for the specific Entity you want returned.

try { 
    var result = api_instance.destiny2GetDestinyEntityDefinition(entityType, hashIdentifier);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetDestinyEntityDefinition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| The type of entity for whom you would like results. These correspond to the entity&#39;s definition contract name. For instance, if you are looking for items, this property should be &#39;DestinyInventoryItemDefinition&#39;. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is tentatively in final form, but there may be bugs that prevent desirable operation. | 
 **hashIdentifier** | **int**| The hash identifier for the specific Entity you want returned. | 

### Return type

[**InlineResponse20029**](InlineResponse20029.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetDestinyManifest**
> InlineResponse20028 destiny2GetDestinyManifest()



Returns the current version of the manifest as a json object.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new Destiny2Api();

try { 
    var result = api_instance.destiny2GetDestinyManifest();
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetDestinyManifest: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

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

var api_instance = new Destiny2Api();
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
    print("Exception when calling Destiny2Api->destiny2GetHistoricalStats: $e\n");
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

# **destiny2GetHistoricalStatsDefinition**
> InlineResponse20039 destiny2GetHistoricalStatsDefinition()



Gets historical stats definitions.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new Destiny2Api();

try { 
    var result = api_instance.destiny2GetHistoricalStatsDefinition();
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetHistoricalStatsDefinition: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20039**](InlineResponse20039.md)

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

var api_instance = new Destiny2Api();
var destinyMembershipId = 789; // int | The Destiny membershipId of the user to retrieve.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var groups = []; // List<DestinyHistoricalStatsDefinitionsDestinyStatsGroupType> | Groups of stats to include, otherwise only general stats are returned. Comma separated list is allowed. Values: General, Weapons, Medals.

try { 
    var result = api_instance.destiny2GetHistoricalStatsForAccount(destinyMembershipId, membershipType, groups);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetHistoricalStatsForAccount: $e\n");
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

# **destiny2GetItem**
> InlineResponse20034 destiny2GetItem(destinyMembershipId, itemInstanceId, membershipType, components)



Retrieve the details of an instanced Destiny Item. An instanced Destiny item is one with an ItemInstanceId. Non-instanced items, such as materials, have no useful instance-specific details and thus are not queryable here.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new Destiny2Api();
var destinyMembershipId = 789; // int | The membership ID of the destiny profile.
var itemInstanceId = 789; // int | The Instance ID of the destiny item.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var components = []; // List<DestinyDestinyComponentType> | A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results.

try { 
    var result = api_instance.destiny2GetItem(destinyMembershipId, itemInstanceId, membershipType, components);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **destinyMembershipId** | **int**| The membership ID of the destiny profile. | 
 **itemInstanceId** | **int**| The Instance ID of the destiny item. | 
 **membershipType** | **int**| A valid non-BungieNet membership type. | 
 **components** | [**List&lt;DestinyDestinyComponentType&gt;**](DestinyDestinyComponentType.md)| A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results. | [optional] 

### Return type

[**InlineResponse20034**](InlineResponse20034.md)

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

var api_instance = new Destiny2Api();
var destinyMembershipId = 789; // int | The Destiny membershipId of the user to retrieve.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var maxtop = 56; // int | Maximum number of top players to return. Use a large number to get entire leaderboard.
var modes = modes_example; // String | List of game modes for which to get leaderboards. See the documentation for DestinyActivityModeType for valid values, and pass in string representation, comma delimited.
var statid = statid_example; // String | ID of stat to return rather than returning all Leaderboard stats.

try { 
    var result = api_instance.destiny2GetLeaderboards(destinyMembershipId, membershipType, maxtop, modes, statid);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetLeaderboards: $e\n");
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

var api_instance = new Destiny2Api();
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
    print("Exception when calling Destiny2Api->destiny2GetLeaderboardsForCharacter: $e\n");
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

# **destiny2GetPostGameCarnageReport**
> InlineResponse20038 destiny2GetPostGameCarnageReport(activityId)



Gets the available post game carnage report for the activity ID.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new Destiny2Api();
var activityId = 789; // int | The ID of the activity whose PGCR is requested.

try { 
    var result = api_instance.destiny2GetPostGameCarnageReport(activityId);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetPostGameCarnageReport: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **int**| The ID of the activity whose PGCR is requested. | 

### Return type

[**InlineResponse20038**](InlineResponse20038.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetProfile**
> InlineResponse20031 destiny2GetProfile(destinyMembershipId, membershipType, components)



Returns Destiny Profile information for the supplied membership.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new Destiny2Api();
var destinyMembershipId = 789; // int | Destiny membership ID.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var components = []; // List<DestinyDestinyComponentType> | A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results.

try { 
    var result = api_instance.destiny2GetProfile(destinyMembershipId, membershipType, components);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetProfile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **destinyMembershipId** | **int**| Destiny membership ID. | 
 **membershipType** | **int**| A valid non-BungieNet membership type. | 
 **components** | [**List&lt;DestinyDestinyComponentType&gt;**](DestinyDestinyComponentType.md)| A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results. | [optional] 

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetPublicMilestoneContent**
> InlineResponse20048 destiny2GetPublicMilestoneContent(milestoneHash)



Gets custom localized content for the milestone of the given hash, if it exists.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new Destiny2Api();
var milestoneHash = 56; // int | The identifier for the milestone to be returned.

try { 
    var result = api_instance.destiny2GetPublicMilestoneContent(milestoneHash);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetPublicMilestoneContent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **milestoneHash** | **int**| The identifier for the milestone to be returned. | 

### Return type

[**InlineResponse20048**](InlineResponse20048.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2GetPublicMilestones**
> InlineResponse20049 destiny2GetPublicMilestones()



Gets public information about currently available Milestones.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new Destiny2Api();

try { 
    var result = api_instance.destiny2GetPublicMilestones();
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetPublicMilestones: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20049**](InlineResponse20049.md)

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

var api_instance = new Destiny2Api();
var characterId = 789; // int | The id of the character to retrieve.
var destinyMembershipId = 789; // int | The Destiny membershipId of the user to retrieve.
var membershipType = 56; // int | A valid non-BungieNet membership type.

try { 
    var result = api_instance.destiny2GetUniqueWeaponHistory(characterId, destinyMembershipId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetUniqueWeaponHistory: $e\n");
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

var api_instance = new Destiny2Api();
var characterId = 789; // int | The Destiny Character ID of the character for whom we're getting vendor info.
var destinyMembershipId = 789; // int | Destiny membership ID of another user. You may be denied.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var vendorHash = 56; // int | The Hash identifier of the Vendor to be returned.
var components = []; // List<DestinyDestinyComponentType> | A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results.

try { 
    var result = api_instance.destiny2GetVendor(characterId, destinyMembershipId, membershipType, vendorHash, components);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetVendor: $e\n");
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

var api_instance = new Destiny2Api();
var characterId = 789; // int | The Destiny Character ID of the character for whom we're getting vendor info.
var destinyMembershipId = 789; // int | Destiny membership ID of another user. You may be denied.
var membershipType = 56; // int | A valid non-BungieNet membership type.
var components = []; // List<DestinyDestinyComponentType> | A comma separated list of components to return (as strings or numeric values). See the DestinyComponentType enum for valid components to request. You must request at least one component to receive results.

try { 
    var result = api_instance.destiny2GetVendors(characterId, destinyMembershipId, membershipType, components);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2GetVendors: $e\n");
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

var api_instance = new Destiny2Api();

try { 
    var result = api_instance.destiny2InsertSocketPlug();
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2InsertSocketPlug: $e\n");
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

var api_instance = new Destiny2Api();
var searchTerm = searchTerm_example; // String | The string to use when searching for Destiny entities.
var type = type_example; // String | The type of entity for whom you would like results. These correspond to the entity's definition contract name. For instance, if you are looking for items, this property should be 'DestinyInventoryItemDefinition'. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is tentatively in final form, but there may be bugs that prevent desirable operation.
var page = 56; // int | Page number to return, starting with 0.

try { 
    var result = api_instance.destiny2SearchDestinyEntities(searchTerm, type, page);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2SearchDestinyEntities: $e\n");
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

# **destiny2SearchDestinyPlayer**
> InlineResponse20030 destiny2SearchDestinyPlayer(displayName, membershipType)



Returns a list of Destiny memberships given a full Gamertag or PSN ID.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new Destiny2Api();
var displayName = displayName_example; // String | The full gamertag or PSN id of the player. Spaces and case are ignored.
var membershipType = 56; // int | A valid non-BungieNet membership type, or All.

try { 
    var result = api_instance.destiny2SearchDestinyPlayer(displayName, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2SearchDestinyPlayer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **displayName** | **String**| The full gamertag or PSN id of the player. Spaces and case are ignored. | 
 **membershipType** | **int**| A valid non-BungieNet membership type, or All. | 

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destiny2SetItemLockState**
> InlineResponse20015 destiny2SetItemLockState()



Set the Lock State for an instanced item. You must have a valid Destiny Account.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Destiny2Api();

try { 
    var result = api_instance.destiny2SetItemLockState();
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2SetItemLockState: $e\n");
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

# **destiny2TransferItem**
> InlineResponse20015 destiny2TransferItem()



Transfer an item to/from your vault. You must have a valid Destiny account. You must also pass BOTH a reference AND an instance ID if it's an instanced item. itshappening.gif

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new Destiny2Api();

try { 
    var result = api_instance.destiny2TransferItem();
    print(result);
} catch (e) {
    print("Exception when calling Destiny2Api->destiny2TransferItem: $e\n");
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

