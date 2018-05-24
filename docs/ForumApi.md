# destiny2_api.api.ForumApi

## Load the API package
```dart
import 'package:destiny2_api/api.dart';
```

All URIs are relative to *https://www.bungie.net/Platform*

Method | HTTP request | Description
------------- | ------------- | -------------
[**forumApproveFireteamThread**](ForumApi.md#forumApproveFireteamThread) | **POST** /Forum/Recruit/Approve/{topicId}/ | 
[**forumGetCoreTopicsPaged**](ForumApi.md#forumGetCoreTopicsPaged) | **GET** /Forum/GetCoreTopicsPaged/{page}/{sort}/{quickDate}/{categoryFilter}/ | 
[**forumGetForumTagSuggestions**](ForumApi.md#forumGetForumTagSuggestions) | **GET** /Forum/GetForumTagSuggestions/ | 
[**forumGetPoll**](ForumApi.md#forumGetPoll) | **GET** /Forum/Poll/{topicId}/ | 
[**forumGetPostAndParent**](ForumApi.md#forumGetPostAndParent) | **GET** /Forum/GetPostAndParent/{childPostId}/ | 
[**forumGetPostAndParentAwaitingApproval**](ForumApi.md#forumGetPostAndParentAwaitingApproval) | **GET** /Forum/GetPostAndParentAwaitingApproval/{childPostId}/ | 
[**forumGetPostsThreadedPaged**](ForumApi.md#forumGetPostsThreadedPaged) | **GET** /Forum/GetPostsThreadedPaged/{parentPostId}/{page}/{pageSize}/{replySize}/{getParentPost}/{rootThreadMode}/{sortMode}/ | 
[**forumGetPostsThreadedPagedFromChild**](ForumApi.md#forumGetPostsThreadedPagedFromChild) | **GET** /Forum/GetPostsThreadedPagedFromChild/{childPostId}/{page}/{pageSize}/{replySize}/{rootThreadMode}/{sortMode}/ | 
[**forumGetRecruitmentThreadSummaries**](ForumApi.md#forumGetRecruitmentThreadSummaries) | **POST** /Forum/Recruit/Summaries/ | 
[**forumGetTopicForContent**](ForumApi.md#forumGetTopicForContent) | **GET** /Forum/GetTopicForContent/{contentId}/ | 
[**forumGetTopicsPaged**](ForumApi.md#forumGetTopicsPaged) | **GET** /Forum/GetTopicsPaged/{page}/{pageSize}/{group}/{sort}/{quickDate}/{categoryFilter}/ | 
[**forumJoinFireteamThread**](ForumApi.md#forumJoinFireteamThread) | **POST** /Forum/Recruit/Join/{topicId}/ | 
[**forumKickBanFireteamApplicant**](ForumApi.md#forumKickBanFireteamApplicant) | **POST** /Forum/Recruit/KickBan/{topicId}/{targetMembershipId}/ | 
[**forumLeaveFireteamThread**](ForumApi.md#forumLeaveFireteamThread) | **POST** /Forum/Recruit/Leave/{topicId}/ | 


# **forumApproveFireteamThread**
> InlineResponse20011 forumApproveFireteamThread(topicId)



Allows the owner of a fireteam thread to approve all joined members and start a private message conversation with them.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ForumApi();
var topicId = 789; // int | The post id of the recruitment topic to approve.

try { 
    var result = api_instance.forumApproveFireteamThread(topicId);
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumApproveFireteamThread: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topicId** | **int**| The post id of the recruitment topic to approve. | 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forumGetCoreTopicsPaged**
> InlineResponse2007 forumGetCoreTopicsPaged(categoryFilter, page, quickDate, sort, locales)



Gets a listing of all topics marked as part of the core group.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ForumApi();
var categoryFilter = 56; // int | The category filter.
var page = 56; // int | Zero base page
var quickDate = 56; // int | The date filter.
var sort = 56; // int | The sort mode.
var locales = locales_example; // String | Comma seperated list of locales posts must match to return in the result list. Default 'en'

try { 
    var result = api_instance.forumGetCoreTopicsPaged(categoryFilter, page, quickDate, sort, locales);
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumGetCoreTopicsPaged: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryFilter** | **int**| The category filter. | 
 **page** | **int**| Zero base page | 
 **quickDate** | **int**| The date filter. | 
 **sort** | **int**| The sort mode. | 
 **locales** | **String**| Comma seperated list of locales posts must match to return in the result list. Default &#39;en&#39; | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forumGetForumTagSuggestions**
> InlineResponse2009 forumGetForumTagSuggestions(partialtag)



Gets tag suggestions based on partial text entry, matching them with other tags previously used in the forums.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ForumApi();
var partialtag = partialtag_example; // String | The partial tag input to generate suggestions from.

try { 
    var result = api_instance.forumGetForumTagSuggestions(partialtag);
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumGetForumTagSuggestions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partialtag** | **String**| The partial tag input to generate suggestions from. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forumGetPoll**
> InlineResponse2007 forumGetPoll(topicId)



Gets the specified forum poll.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ForumApi();
var topicId = 789; // int | The post id of the topic that has the poll.

try { 
    var result = api_instance.forumGetPoll(topicId);
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumGetPoll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topicId** | **int**| The post id of the topic that has the poll. | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forumGetPostAndParent**
> InlineResponse2007 forumGetPostAndParent(childPostId, showbanned)



Returns the post specified and its immediate parent.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ForumApi();
var childPostId = 789; // int | 
var showbanned = showbanned_example; // String | If this value is not null or empty, banned posts are requested to be returned

try { 
    var result = api_instance.forumGetPostAndParent(childPostId, showbanned);
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumGetPostAndParent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **childPostId** | **int**|  | 
 **showbanned** | **String**| If this value is not null or empty, banned posts are requested to be returned | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forumGetPostAndParentAwaitingApproval**
> InlineResponse2007 forumGetPostAndParentAwaitingApproval(childPostId, showbanned)



Returns the post specified and its immediate parent of posts that are awaiting approval.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ForumApi();
var childPostId = 789; // int | 
var showbanned = showbanned_example; // String | If this value is not null or empty, banned posts are requested to be returned

try { 
    var result = api_instance.forumGetPostAndParentAwaitingApproval(childPostId, showbanned);
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumGetPostAndParentAwaitingApproval: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **childPostId** | **int**|  | 
 **showbanned** | **String**| If this value is not null or empty, banned posts are requested to be returned | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forumGetPostsThreadedPaged**
> InlineResponse2007 forumGetPostsThreadedPaged(getParentPost, page, pageSize, parentPostId, replySize, rootThreadMode, sortMode, showbanned)



Returns a thread of posts at the given parent, optionally returning replies to those posts as well as the original parent.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ForumApi();
var getParentPost = true; // bool | 
var page = 56; // int | 
var pageSize = 56; // int | 
var parentPostId = 789; // int | 
var replySize = 56; // int | 
var rootThreadMode = true; // bool | 
var sortMode = 56; // int | 
var showbanned = showbanned_example; // String | If this value is not null or empty, banned posts are requested to be returned

try { 
    var result = api_instance.forumGetPostsThreadedPaged(getParentPost, page, pageSize, parentPostId, replySize, rootThreadMode, sortMode, showbanned);
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumGetPostsThreadedPaged: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getParentPost** | **bool**|  | 
 **page** | **int**|  | 
 **pageSize** | **int**|  | 
 **parentPostId** | **int**|  | 
 **replySize** | **int**|  | 
 **rootThreadMode** | **bool**|  | 
 **sortMode** | **int**|  | 
 **showbanned** | **String**| If this value is not null or empty, banned posts are requested to be returned | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forumGetPostsThreadedPagedFromChild**
> InlineResponse2007 forumGetPostsThreadedPagedFromChild(childPostId, page, pageSize, replySize, rootThreadMode, sortMode, showbanned)



Returns a thread of posts starting at the topicId of the input childPostId, optionally returning replies to those posts as well as the original parent.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ForumApi();
var childPostId = 789; // int | 
var page = 56; // int | 
var pageSize = 56; // int | 
var replySize = 56; // int | 
var rootThreadMode = true; // bool | 
var sortMode = 56; // int | 
var showbanned = showbanned_example; // String | If this value is not null or empty, banned posts are requested to be returned

try { 
    var result = api_instance.forumGetPostsThreadedPagedFromChild(childPostId, page, pageSize, replySize, rootThreadMode, sortMode, showbanned);
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumGetPostsThreadedPagedFromChild: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **childPostId** | **int**|  | 
 **page** | **int**|  | 
 **pageSize** | **int**|  | 
 **replySize** | **int**|  | 
 **rootThreadMode** | **bool**|  | 
 **sortMode** | **int**|  | 
 **showbanned** | **String**| If this value is not null or empty, banned posts are requested to be returned | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forumGetRecruitmentThreadSummaries**
> InlineResponse20012 forumGetRecruitmentThreadSummaries()



Allows the caller to get a list of to 25 recruitment thread summary information objects.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ForumApi();

try { 
    var result = api_instance.forumGetRecruitmentThreadSummaries();
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumGetRecruitmentThreadSummaries: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forumGetTopicForContent**
> InlineResponse2008 forumGetTopicForContent(contentId)



Gets the post Id for the given content item's comments, if it exists.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ForumApi();
var contentId = 789; // int | 

try { 
    var result = api_instance.forumGetTopicForContent(contentId);
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumGetTopicForContent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentId** | **int**|  | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forumGetTopicsPaged**
> InlineResponse2007 forumGetTopicsPaged(categoryFilter, group, page, pageSize, quickDate, sort, locales, tagstring)



Get topics from any forum.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ForumApi();
var categoryFilter = 56; // int | A category filter
var group = 789; // int | The group, if any.
var page = 56; // int | Zero paged page number
var pageSize = 56; // int | Unused
var quickDate = 56; // int | A date filter.
var sort = 56; // int | The sort mode.
var locales = locales_example; // String | Comma seperated list of locales posts must match to return in the result list. Default 'en'
var tagstring = tagstring_example; // String | The tags to search, if any.

try { 
    var result = api_instance.forumGetTopicsPaged(categoryFilter, group, page, pageSize, quickDate, sort, locales, tagstring);
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumGetTopicsPaged: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryFilter** | **int**| A category filter | 
 **group** | **int**| The group, if any. | 
 **page** | **int**| Zero paged page number | 
 **pageSize** | **int**| Unused | 
 **quickDate** | **int**| A date filter. | 
 **sort** | **int**| The sort mode. | 
 **locales** | **String**| Comma seperated list of locales posts must match to return in the result list. Default &#39;en&#39; | [optional] 
 **tagstring** | **String**| The tags to search, if any. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forumJoinFireteamThread**
> InlineResponse20010 forumJoinFireteamThread(topicId)



Allows a user to slot themselves into a recruitment thread fireteam slot. Returns the new state of the fireteam.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ForumApi();
var topicId = 789; // int | The post id of the recruitment topic you wish to join.

try { 
    var result = api_instance.forumJoinFireteamThread(topicId);
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumJoinFireteamThread: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topicId** | **int**| The post id of the recruitment topic you wish to join. | 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forumKickBanFireteamApplicant**
> InlineResponse20010 forumKickBanFireteamApplicant(targetMembershipId, topicId)



Allows a recruitment thread owner to kick a join user from the fireteam. Returns the new state of the fireteam.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ForumApi();
var targetMembershipId = 789; // int | The id of the user you wish to kick.
var topicId = 789; // int | The post id of the recruitment topic you wish to join.

try { 
    var result = api_instance.forumKickBanFireteamApplicant(targetMembershipId, topicId);
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumKickBanFireteamApplicant: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **targetMembershipId** | **int**| The id of the user you wish to kick. | 
 **topicId** | **int**| The post id of the recruitment topic you wish to join. | 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forumLeaveFireteamThread**
> InlineResponse20010 forumLeaveFireteamThread(topicId)



Allows a user to remove themselves from a recruitment thread fireteam slot. Returns the new state of the fireteam.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ForumApi();
var topicId = 789; // int | The post id of the recruitment topic you wish to leave.

try { 
    var result = api_instance.forumLeaveFireteamThread(topicId);
    print(result);
} catch (e) {
    print("Exception when calling ForumApi->forumLeaveFireteamThread: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topicId** | **int**| The post id of the recruitment topic you wish to leave. | 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

