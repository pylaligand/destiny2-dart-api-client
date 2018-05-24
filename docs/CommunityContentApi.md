# destiny2_api.api.CommunityContentApi

## Load the API package
```dart
import 'package:destiny2_api/api.dart';
```

All URIs are relative to *https://www.bungie.net/Platform*

Method | HTTP request | Description
------------- | ------------- | -------------
[**communityContentGetCommunityContent**](CommunityContentApi.md#communityContentGetCommunityContent) | **GET** /CommunityContent/Get/{sort}/{mediaFilter}/{page}/ | 
[**communityContentGetCommunityLiveStatuses**](CommunityContentApi.md#communityContentGetCommunityLiveStatuses) | **GET** /CommunityContent/Live/All/{partnershipType}/{sort}/{page}/ | 
[**communityContentGetCommunityLiveStatusesForClanmates**](CommunityContentApi.md#communityContentGetCommunityLiveStatusesForClanmates) | **GET** /CommunityContent/Live/Clan/{partnershipType}/{sort}/{page}/ | 
[**communityContentGetCommunityLiveStatusesForFriends**](CommunityContentApi.md#communityContentGetCommunityLiveStatusesForFriends) | **GET** /CommunityContent/Live/Friends/{partnershipType}/{sort}/{page}/ | 
[**communityContentGetFeaturedCommunityLiveStatuses**](CommunityContentApi.md#communityContentGetFeaturedCommunityLiveStatuses) | **GET** /CommunityContent/Live/Featured/{partnershipType}/{sort}/{page}/ | 
[**communityContentGetStreamingStatusForMember**](CommunityContentApi.md#communityContentGetStreamingStatusForMember) | **GET** /CommunityContent/Live/Users/{partnershipType}/{membershipType}/{membershipId}/ | 


# **communityContentGetCommunityContent**
> InlineResponse2007 communityContentGetCommunityContent(mediaFilter, page, sort)



Returns community content.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new CommunityContentApi();
var mediaFilter = 56; // int | The type of media to get
var page = 56; // int | Zero based page
var sort = 56; // int | The sort mode.

try { 
    var result = api_instance.communityContentGetCommunityContent(mediaFilter, page, sort);
    print(result);
} catch (e) {
    print("Exception when calling CommunityContentApi->communityContentGetCommunityContent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mediaFilter** | **int**| The type of media to get | 
 **page** | **int**| Zero based page | 
 **sort** | **int**| The sort mode. | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communityContentGetCommunityLiveStatuses**
> InlineResponse20055 communityContentGetCommunityLiveStatuses(page, partnershipType, sort, modeHash, streamLocale)



Returns info about community members who are live streaming.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new CommunityContentApi();
var page = 56; // int | Zero based page.
var partnershipType = 56; // int | The type of partnership for which the status should be returned.
var sort = 56; // int | The sort mode.
var modeHash = 56; // int | The hash of the Activity Mode for which streams should be retrieved. Don't pass it in or pass 0 to not filter by mode.
var streamLocale = streamLocale_example; // String | The locale for streams you'd like to see. Don't pass this to fall back on your BNet locale. Pass 'ALL' to not filter by locale.

try { 
    var result = api_instance.communityContentGetCommunityLiveStatuses(page, partnershipType, sort, modeHash, streamLocale);
    print(result);
} catch (e) {
    print("Exception when calling CommunityContentApi->communityContentGetCommunityLiveStatuses: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Zero based page. | 
 **partnershipType** | **int**| The type of partnership for which the status should be returned. | 
 **sort** | **int**| The sort mode. | 
 **modeHash** | **int**| The hash of the Activity Mode for which streams should be retrieved. Don&#39;t pass it in or pass 0 to not filter by mode. | [optional] 
 **streamLocale** | **String**| The locale for streams you&#39;d like to see. Don&#39;t pass this to fall back on your BNet locale. Pass &#39;ALL&#39; to not filter by locale. | [optional] 

### Return type

[**InlineResponse20055**](InlineResponse20055.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communityContentGetCommunityLiveStatusesForClanmates**
> InlineResponse20055 communityContentGetCommunityLiveStatusesForClanmates(page, partnershipType, sort)



Returns info about community members who are live streaming in your clans.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new CommunityContentApi();
var page = 56; // int | Zero based page.
var partnershipType = 56; // int | The type of partnership for which the status should be returned.
var sort = 56; // int | The sort mode.

try { 
    var result = api_instance.communityContentGetCommunityLiveStatusesForClanmates(page, partnershipType, sort);
    print(result);
} catch (e) {
    print("Exception when calling CommunityContentApi->communityContentGetCommunityLiveStatusesForClanmates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Zero based page. | 
 **partnershipType** | **int**| The type of partnership for which the status should be returned. | 
 **sort** | **int**| The sort mode. | 

### Return type

[**InlineResponse20055**](InlineResponse20055.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communityContentGetCommunityLiveStatusesForFriends**
> InlineResponse20055 communityContentGetCommunityLiveStatusesForFriends(page, partnershipType, sort)



Returns info about community members who are live streaming among your friends.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new CommunityContentApi();
var page = 56; // int | Zero based page.
var partnershipType = 56; // int | The type of partnership for which the status should be returned.
var sort = 56; // int | The sort mode.

try { 
    var result = api_instance.communityContentGetCommunityLiveStatusesForFriends(page, partnershipType, sort);
    print(result);
} catch (e) {
    print("Exception when calling CommunityContentApi->communityContentGetCommunityLiveStatusesForFriends: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Zero based page. | 
 **partnershipType** | **int**| The type of partnership for which the status should be returned. | 
 **sort** | **int**| The sort mode. | 

### Return type

[**InlineResponse20055**](InlineResponse20055.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communityContentGetFeaturedCommunityLiveStatuses**
> InlineResponse20055 communityContentGetFeaturedCommunityLiveStatuses(page, partnershipType, sort, streamLocale)



Returns info about Featured live streams.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new CommunityContentApi();
var page = 56; // int | Zero based page.
var partnershipType = 56; // int | The type of partnership for which the status should be returned.
var sort = 56; // int | The sort mode.
var streamLocale = streamLocale_example; // String | The locale for streams you'd like to see. Don't pass this to fall back on your BNet locale. Pass 'ALL' to not filter by locale.

try { 
    var result = api_instance.communityContentGetFeaturedCommunityLiveStatuses(page, partnershipType, sort, streamLocale);
    print(result);
} catch (e) {
    print("Exception when calling CommunityContentApi->communityContentGetFeaturedCommunityLiveStatuses: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Zero based page. | 
 **partnershipType** | **int**| The type of partnership for which the status should be returned. | 
 **sort** | **int**| The sort mode. | 
 **streamLocale** | **String**| The locale for streams you&#39;d like to see. Don&#39;t pass this to fall back on your BNet locale. Pass &#39;ALL&#39; to not filter by locale. | [optional] 

### Return type

[**InlineResponse20055**](InlineResponse20055.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communityContentGetStreamingStatusForMember**
> InlineResponse20056 communityContentGetStreamingStatusForMember(membershipId, membershipType, partnershipType)



Gets the Live Streaming status of a particular Account and Membership Type.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new CommunityContentApi();
var membershipId = 789; // int | The membershipId related to that type.
var membershipType = 56; // int | The type of account for which info will be extracted.
var partnershipType = 56; // int | The type of partnership for which info will be extracted.

try { 
    var result = api_instance.communityContentGetStreamingStatusForMember(membershipId, membershipType, partnershipType);
    print(result);
} catch (e) {
    print("Exception when calling CommunityContentApi->communityContentGetStreamingStatusForMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **membershipId** | **int**| The membershipId related to that type. | 
 **membershipType** | **int**| The type of account for which info will be extracted. | 
 **partnershipType** | **int**| The type of partnership for which info will be extracted. | 

### Return type

[**InlineResponse20056**](InlineResponse20056.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

