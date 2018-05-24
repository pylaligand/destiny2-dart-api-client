# destiny2_api.api.UserApi

## Load the API package
```dart
import 'package:destiny2_api/api.dart';
```

All URIs are relative to *https://www.bungie.net/Platform*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userGetAvailableThemes**](UserApi.md#userGetAvailableThemes) | **GET** /User/GetAvailableThemes/ | 
[**userGetBungieNetUserById**](UserApi.md#userGetBungieNetUserById) | **GET** /User/GetBungieNetUserById/{id}/ | 
[**userGetMembershipDataById**](UserApi.md#userGetMembershipDataById) | **GET** /User/GetMembershipsById/{membershipId}/{membershipType}/ | 
[**userGetMembershipDataForCurrentUser**](UserApi.md#userGetMembershipDataForCurrentUser) | **GET** /User/GetMembershipsForCurrentUser/ | 
[**userGetPartnerships**](UserApi.md#userGetPartnerships) | **GET** /User/{membershipId}/Partnerships/ | 
[**userSearchUsers**](UserApi.md#userSearchUsers) | **GET** /User/SearchUsers/ | 


# **userGetAvailableThemes**
> InlineResponse2004 userGetAvailableThemes()



Returns a list of all available user themes.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new UserApi();

try { 
    var result = api_instance.userGetAvailableThemes();
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userGetAvailableThemes: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userGetBungieNetUserById**
> InlineResponse2002 userGetBungieNetUserById(id)



Loads a bungienet user by membership id.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new UserApi();
var id = 789; // int | The requested Bungie.net membership id.

try { 
    var result = api_instance.userGetBungieNetUserById(id);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userGetBungieNetUserById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The requested Bungie.net membership id. | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userGetMembershipDataById**
> InlineResponse2005 userGetMembershipDataById(membershipId, membershipType)



Returns a list of accounts associated with the supplied membership ID and membership type. This will include all linked accounts (even when hidden) if supplied credentials permit it.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new UserApi();
var membershipId = 789; // int | The membership ID of the target user.
var membershipType = 56; // int | Type of the supplied membership ID.

try { 
    var result = api_instance.userGetMembershipDataById(membershipId, membershipType);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userGetMembershipDataById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **membershipId** | **int**| The membership ID of the target user. | 
 **membershipType** | **int**| Type of the supplied membership ID. | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userGetMembershipDataForCurrentUser**
> InlineResponse2005 userGetMembershipDataForCurrentUser()



Returns a list of accounts associated with signed in user. This is useful for OAuth implementations that do not give you access to the token response.

### Example 
```dart
import 'package:destiny2_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//destiny2_api.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UserApi();

try { 
    var result = api_instance.userGetMembershipDataForCurrentUser();
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userGetMembershipDataForCurrentUser: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userGetPartnerships**
> InlineResponse2006 userGetPartnerships(membershipId)



Returns a user's linked Partnerships.

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new UserApi();
var membershipId = 789; // int | The ID of the member for whom partnerships should be returned.

try { 
    var result = api_instance.userGetPartnerships(membershipId);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userGetPartnerships: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **membershipId** | **int**| The ID of the member for whom partnerships should be returned. | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSearchUsers**
> InlineResponse2003 userSearchUsers(q)



Returns a list of possible users based on the search string

### Example 
```dart
import 'package:destiny2_api/api.dart';

var api_instance = new UserApi();
var q = q_example; // String | The search string.

try { 
    var result = api_instance.userSearchUsers(q);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userSearchUsers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The search string. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

