# destiny2_api.api.ContentApi

## Load the API package
```dart
import 'package:destiny2_api/api.dart';
```

All URIs are relative to *https://www.bungie.net/Platform*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contentGetContentById**](ContentApi.md#contentGetContentById) | **GET** /Content/GetContentById/{id}/{locale}/ | 
[**contentGetContentByTagAndType**](ContentApi.md#contentGetContentByTagAndType) | **GET** /Content/GetContentByTagAndType/{tag}/{type}/{locale}/ | 
[**contentGetContentType**](ContentApi.md#contentGetContentType) | **GET** /Content/GetContentType/{type}/ | 
[**contentSearchContentByTagAndType**](ContentApi.md#contentSearchContentByTagAndType) | **GET** /Content/SearchContentByTagAndType/{tag}/{type}/{locale}/ | 
[**contentSearchContentWithText**](ContentApi.md#contentSearchContentWithText) | **GET** /Content/Search/{locale}/ | 


# **contentGetContentById**
> InlineResponse2008 contentGetContentById(id, locale, head)



Returns a content item referenced by id

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ContentApi();
var id = 789; // int | 
var locale = locale_example; // String | 
var head = true; // bool | false

try { 
    var result = api_instance.contentGetContentById(id, locale, head);
    print(result);
} catch (e) {
    print("Exception when calling ContentApi->contentGetContentById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **locale** | **String**|  | 
 **head** | **bool**| false | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contentGetContentByTagAndType**
> InlineResponse2008 contentGetContentByTagAndType(locale, tag, type, head)



Returns the newest item that matches a given tag and Content Type.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ContentApi();
var locale = locale_example; // String | 
var tag = tag_example; // String | 
var type = type_example; // String | 
var head = true; // bool | Not used.

try { 
    var result = api_instance.contentGetContentByTagAndType(locale, tag, type, head);
    print(result);
} catch (e) {
    print("Exception when calling ContentApi->contentGetContentByTagAndType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locale** | **String**|  | 
 **tag** | **String**|  | 
 **type** | **String**|  | 
 **head** | **bool**| Not used. | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contentGetContentType**
> InlineResponse2007 contentGetContentType(type)



Gets an object describing a particular variant of content.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ContentApi();
var type = type_example; // String | 

try { 
    var result = api_instance.contentGetContentType(type);
    print(result);
} catch (e) {
    print("Exception when calling ContentApi->contentGetContentType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**|  | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contentSearchContentByTagAndType**
> InlineResponse2009 contentSearchContentByTagAndType(locale, tag, type, currentpage, head, itemsperpage)



Searches for Content Items that match the given Tag and Content Type.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ContentApi();
var locale = locale_example; // String | 
var tag = tag_example; // String | 
var type = type_example; // String | 
var currentpage = 56; // int | Page number for the search results starting with page 1.
var head = true; // bool | Not used.
var itemsperpage = 56; // int | Not used.

try { 
    var result = api_instance.contentSearchContentByTagAndType(locale, tag, type, currentpage, head, itemsperpage);
    print(result);
} catch (e) {
    print("Exception when calling ContentApi->contentSearchContentByTagAndType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locale** | **String**|  | 
 **tag** | **String**|  | 
 **type** | **String**|  | 
 **currentpage** | **int**| Page number for the search results starting with page 1. | [optional] 
 **head** | **bool**| Not used. | [optional] 
 **itemsperpage** | **int**| Not used. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contentSearchContentWithText**
> InlineResponse2009 contentSearchContentWithText(locale, ctype, currentpage, head, searchtext, source, tag)



Gets content based on querystring information passed in. Provides basic search and text search capabilities.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new ContentApi();
var locale = locale_example; // String | 
var ctype = ctype_example; // String | Content type tag: Help, News, etc. Supply multiple ctypes separated by space.
var currentpage = 56; // int | Page number for the search results, starting with page 1.
var head = true; // bool | Not used.
var searchtext = searchtext_example; // String | Word or phrase for the search.
var source = source_example; // String | For analytics, hint at the part of the app that triggered the search. Optional.
var tag = tag_example; // String | Tag used on the content to be searched.

try { 
    var result = api_instance.contentSearchContentWithText(locale, ctype, currentpage, head, searchtext, source, tag);
    print(result);
} catch (e) {
    print("Exception when calling ContentApi->contentSearchContentWithText: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locale** | **String**|  | 
 **ctype** | **String**| Content type tag: Help, News, etc. Supply multiple ctypes separated by space. | [optional] 
 **currentpage** | **int**| Page number for the search results, starting with page 1. | [optional] 
 **head** | **bool**| Not used. | [optional] 
 **searchtext** | **String**| Word or phrase for the search. | [optional] 
 **source** | **String**| For analytics, hint at the part of the app that triggered the search. Optional. | [optional] 
 **tag** | **String**| Tag used on the content to be searched. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

