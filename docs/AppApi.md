# destiny2_api.api.AppApi

## Load the API package
```dart
import 'package:destiny2_api/api.dart';
```

All URIs are relative to *https://www.bungie.net/Platform*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appGetApplicationApiUsage**](AppApi.md#appGetApplicationApiUsage) | **GET** /App/ApiUsage/{applicationId}/ | 
[**appGetBungieApplications**](AppApi.md#appGetBungieApplications) | **GET** /App/FirstParty/ | 


# **appGetApplicationApiUsage**
> InlineResponse200 appGetApplicationApiUsage(applicationId, end, start)



Get API usage by application for time frame specified. You can go as far back as 30 days ago, and can ask for up to a 48 hour window of time in a single request. You must be authenticated with at least the ReadUserData permission to access this endpoint.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AppApi();
var applicationId = 56; // int | ID of the application to get usage statistics.
var end = 2013-10-20T19:20:30+01:00; // DateTime | End time for query. Goes to now if not specified.
var start = 2013-10-20T19:20:30+01:00; // DateTime | Start time for query. Goes to 24 hours ago if not specified.

try { 
    var result = api_instance.appGetApplicationApiUsage(applicationId, end, start);
    print(result);
} catch (e) {
    print("Exception when calling AppApi->appGetApplicationApiUsage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **int**| ID of the application to get usage statistics. | 
 **end** | **DateTime**| End time for query. Goes to now if not specified. | [optional] 
 **start** | **DateTime**| Start time for query. Goes to 24 hours ago if not specified. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appGetBungieApplications**
> InlineResponse2001 appGetBungieApplications()



Get list of applications created by Bungie.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new AppApi();

try { 
    var result = api_instance.appGetBungieApplications();
    print(result);
} catch (e) {
    print("Exception when calling AppApi->appGetBungieApplications: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

