# destiny2_api.api.DefaultApi

## Load the API package
```dart
import 'package:destiny2_api/api.dart';
```

All URIs are relative to *https://www.bungie.net/Platform*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAvailableLocales**](DefaultApi.md#getAvailableLocales) | **GET** /GetAvailableLocales/ | 
[**getCommonSettings**](DefaultApi.md#getCommonSettings) | **GET** /Settings/ | 
[**getGlobalAlerts**](DefaultApi.md#getGlobalAlerts) | **GET** /GlobalAlerts/ | 


# **getAvailableLocales**
> InlineResponse20016 getAvailableLocales()



List of available localization cultures

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new DefaultApi();

try { 
    var result = api_instance.getAvailableLocales();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getAvailableLocales: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommonSettings**
> InlineResponse20067 getCommonSettings()



Get the common settings used by the Bungie.Net environment.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new DefaultApi();

try { 
    var result = api_instance.getCommonSettings();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getCommonSettings: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20067**](InlineResponse20067.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGlobalAlerts**
> InlineResponse20068 getGlobalAlerts(includestreaming)



Gets any active global alert for display in the forum banners, help pages, etc. Usually used for DOC alerts.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new DefaultApi();
var includestreaming = true; // bool | Determines whether Streaming Alerts are included in results

try { 
    var result = api_instance.getGlobalAlerts(includestreaming);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getGlobalAlerts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includestreaming** | **bool**| Determines whether Streaming Alerts are included in results | [optional] 

### Return type

[**InlineResponse20068**](InlineResponse20068.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

