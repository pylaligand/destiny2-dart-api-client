# destiny2_api.api.FireteamApi

## Load the API package
```dart
import 'package:destiny2_api/api.dart';
```

All URIs are relative to *https://www.bungie.net/Platform*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fireteamGetActivePrivateClanFireteamCount**](FireteamApi.md#fireteamGetActivePrivateClanFireteamCount) | **GET** /Fireteam/Clan/{groupId}/ActiveCount/ | 
[**fireteamGetAvailableClanFireteams**](FireteamApi.md#fireteamGetAvailableClanFireteams) | **GET** /Fireteam/Clan/{groupId}/Available/{platform}/{activityType}/{dateRange}/{slotFilter}/{publicOnly}/{page}/ | 
[**fireteamGetClanFireteam**](FireteamApi.md#fireteamGetClanFireteam) | **GET** /Fireteam/Clan/{groupId}/Summary/{fireteamId}/ | 
[**fireteamGetMyClanFireteams**](FireteamApi.md#fireteamGetMyClanFireteams) | **GET** /Fireteam/Clan/{groupId}/My/{platform}/{includeClosed}/{page}/ | 
[**fireteamSearchPublicAvailableClanFireteams**](FireteamApi.md#fireteamSearchPublicAvailableClanFireteams) | **GET** /Fireteam/Search/Available/{platform}/{activityType}/{dateRange}/{slotFilter}/{page}/ | 


# **fireteamGetActivePrivateClanFireteamCount**
> InlineResponse20019 fireteamGetActivePrivateClanFireteamCount(groupId)



Gets a count of all active non-public fireteams for the specified clan. Maximum value returned is 25.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FireteamApi();
var groupId = 789; // int | The group id of the clan.

try { 
    var result = api_instance.fireteamGetActivePrivateClanFireteamCount(groupId);
    print(result);
} catch (e) {
    print("Exception when calling FireteamApi->fireteamGetActivePrivateClanFireteamCount: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| The group id of the clan. | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fireteamGetAvailableClanFireteams**
> InlineResponse20064 fireteamGetAvailableClanFireteams(activityType, dateRange, groupId, page, platform, publicOnly, slotFilter, langFilter)



Gets a listing of all of this clan's fireteams that are have available slots. Caller is not checked for join criteria so caching is maximized.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FireteamApi();
var activityType = 56; // int | The activity type to filter by.
var dateRange = 56; // int | The date range to grab available fireteams.
var groupId = 789; // int | The group id of the clan.
var page = 56; // int | Zero based page
var platform = 56; // int | The platform filter.
var publicOnly = 56; // int | Determines public/private filtering.
var slotFilter = 56; // int | Filters based on available slots
var langFilter = langFilter_example; // String | An optional language filter.

try { 
    var result = api_instance.fireteamGetAvailableClanFireteams(activityType, dateRange, groupId, page, platform, publicOnly, slotFilter, langFilter);
    print(result);
} catch (e) {
    print("Exception when calling FireteamApi->fireteamGetAvailableClanFireteams: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityType** | **int**| The activity type to filter by. | 
 **dateRange** | **int**| The date range to grab available fireteams. | 
 **groupId** | **int**| The group id of the clan. | 
 **page** | **int**| Zero based page | 
 **platform** | **int**| The platform filter. | 
 **publicOnly** | **int**| Determines public/private filtering. | 
 **slotFilter** | **int**| Filters based on available slots | 
 **langFilter** | **String**| An optional language filter. | [optional] 

### Return type

[**InlineResponse20064**](InlineResponse20064.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fireteamGetClanFireteam**
> InlineResponse20066 fireteamGetClanFireteam(fireteamId, groupId)



Gets a specific clan fireteam.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FireteamApi();
var fireteamId = 789; // int | The unique id of the fireteam.
var groupId = 789; // int | The group id of the clan.

try { 
    var result = api_instance.fireteamGetClanFireteam(fireteamId, groupId);
    print(result);
} catch (e) {
    print("Exception when calling FireteamApi->fireteamGetClanFireteam: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fireteamId** | **int**| The unique id of the fireteam. | 
 **groupId** | **int**| The group id of the clan. | 

### Return type

[**InlineResponse20066**](InlineResponse20066.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fireteamGetMyClanFireteams**
> InlineResponse20065 fireteamGetMyClanFireteams(groupId, includeClosed, page, platform, groupFilter, langFilter)



Gets a listing of all clan fireteams that caller is an applicant, a member, or an alternate of.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FireteamApi();
var groupId = 789; // int | The group id of the clan. (This parameter is ignored unless the optional query parameter groupFilter is true).
var includeClosed = true; // bool | If true, return fireteams that have been closed.
var page = 56; // int | Deprecated parameter, ignored.
var platform = 56; // int | The platform filter.
var groupFilter = true; // bool | If true, filter by clan. Otherwise, ignore the clan and show all of the user's fireteams.
var langFilter = langFilter_example; // String | An optional language filter.

try { 
    var result = api_instance.fireteamGetMyClanFireteams(groupId, includeClosed, page, platform, groupFilter, langFilter);
    print(result);
} catch (e) {
    print("Exception when calling FireteamApi->fireteamGetMyClanFireteams: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| The group id of the clan. (This parameter is ignored unless the optional query parameter groupFilter is true). | 
 **includeClosed** | **bool**| If true, return fireteams that have been closed. | 
 **page** | **int**| Deprecated parameter, ignored. | 
 **platform** | **int**| The platform filter. | 
 **groupFilter** | **bool**| If true, filter by clan. Otherwise, ignore the clan and show all of the user&#39;s fireteams. | [optional] 
 **langFilter** | **String**| An optional language filter. | [optional] 

### Return type

[**InlineResponse20065**](InlineResponse20065.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fireteamSearchPublicAvailableClanFireteams**
> InlineResponse20064 fireteamSearchPublicAvailableClanFireteams(activityType, dateRange, page, platform, slotFilter, langFilter)



Gets a listing of all public fireteams starting now with open slots. Caller is not checked for join criteria so caching is maximized.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FireteamApi();
var activityType = 56; // int | The activity type to filter by.
var dateRange = 56; // int | The date range to grab available fireteams.
var page = 56; // int | Zero based page
var platform = 56; // int | The platform filter.
var slotFilter = 56; // int | Filters based on available slots
var langFilter = langFilter_example; // String | An optional language filter.

try { 
    var result = api_instance.fireteamSearchPublicAvailableClanFireteams(activityType, dateRange, page, platform, slotFilter, langFilter);
    print(result);
} catch (e) {
    print("Exception when calling FireteamApi->fireteamSearchPublicAvailableClanFireteams: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityType** | **int**| The activity type to filter by. | 
 **dateRange** | **int**| The date range to grab available fireteams. | 
 **page** | **int**| Zero based page | 
 **platform** | **int**| The platform filter. | 
 **slotFilter** | **int**| Filters based on available slots | 
 **langFilter** | **String**| An optional language filter. | [optional] 

### Return type

[**InlineResponse20064**](InlineResponse20064.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

