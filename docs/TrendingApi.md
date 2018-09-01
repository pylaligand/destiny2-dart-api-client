# destiny2_api.api.TrendingApi

## Load the API package
```dart
import 'package:destiny2_api/api.dart';
```

All URIs are relative to *https://www.bungie.net/Platform*

Method | HTTP request | Description
------------- | ------------- | -------------
[**trendingGetTrendingCategories**](TrendingApi.md#trendingGetTrendingCategories) | **GET** /Trending/Categories/ | 
[**trendingGetTrendingCategory**](TrendingApi.md#trendingGetTrendingCategory) | **GET** /Trending/Categories/{categoryId}/{pageNumber}/ | 
[**trendingGetTrendingEntryDetail**](TrendingApi.md#trendingGetTrendingEntryDetail) | **GET** /Trending/Details/{trendingEntryType}/{identifier}/ | 


# **trendingGetTrendingCategories**
> InlineResponse20061 trendingGetTrendingCategories()



Returns trending items for Bungie.net, collapsed into the first page of items per category. For pagination within a category, call GetTrendingCategory.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new TrendingApi();

try { 
    var result = api_instance.trendingGetTrendingCategories();
    print(result);
} catch (e) {
    print("Exception when calling TrendingApi->trendingGetTrendingCategories: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20061**](InlineResponse20061.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trendingGetTrendingCategory**
> InlineResponse20062 trendingGetTrendingCategory(categoryId, pageNumber)



Returns paginated lists of trending items for a category.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new TrendingApi();
var categoryId = categoryId_example; // String | The ID of the category for whom you want additional results.
var pageNumber = 56; // int | The page # of results to return.

try { 
    var result = api_instance.trendingGetTrendingCategory(categoryId, pageNumber);
    print(result);
} catch (e) {
    print("Exception when calling TrendingApi->trendingGetTrendingCategory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **String**| The ID of the category for whom you want additional results. | 
 **pageNumber** | **int**| The page # of results to return. | 

### Return type

[**InlineResponse20062**](InlineResponse20062.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trendingGetTrendingEntryDetail**
> InlineResponse20063 trendingGetTrendingEntryDetail(identifier, trendingEntryType)



Returns the detailed results for a specific trending entry. Note that trending entries are uniquely identified by a combination of *both* the TrendingEntryType *and* the identifier: the identifier alone is not guaranteed to be globally unique.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new TrendingApi();
var identifier = identifier_example; // String | The identifier for the entity to be returned.
var trendingEntryType = 56; // int | The type of entity to be returned.

try { 
    var result = api_instance.trendingGetTrendingEntryDetail(identifier, trendingEntryType);
    print(result);
} catch (e) {
    print("Exception when calling TrendingApi->trendingGetTrendingEntryDetail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| The identifier for the entity to be returned. | 
 **trendingEntryType** | **int**| The type of entity to be returned. | 

### Return type

[**InlineResponse20063**](InlineResponse20063.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

