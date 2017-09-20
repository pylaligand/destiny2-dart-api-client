# destiny2_api.model.SearchResultOfGroupMemberApplication

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List&lt;GroupsV2GroupMemberApplication&gt;**](GroupsV2GroupMemberApplication.md) |  | [optional] [default to []]
**totalResults** | **int** |  | [optional] [default to null]
**hasMore** | **bool** |  | [optional] [default to null]
**query** | [**QueriesPagedQuery**](QueriesPagedQuery.md) |  | [optional] [default to null]
**replacementContinuationToken** | **String** |  | [optional] [default to null]
**useTotalResults** | **bool** | If useTotalResults is true, then totalResults represents an accurate count.  If False, it does not, and may be estimated/only the size of the current page.  Either way, you should probably always only trust hasMore.  This is a long-held historical throwback to when we used to do paging with known total results. Those queries toasted our database, and we were left to hastily alter our endpoints and create backward- compatible shims, of which useTotalResults is one. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


