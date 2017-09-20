# destiny2_api.model.ForumPostSearchResponse

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relatedPosts** | [**List&lt;ForumPostResponse&gt;**](ForumPostResponse.md) |  | [optional] [default to []]
**authors** | [**List&lt;UserGeneralUser&gt;**](UserGeneralUser.md) |  | [optional] [default to []]
**groups** | [**List&lt;GroupsV2GroupResponse&gt;**](GroupsV2GroupResponse.md) |  | [optional] [default to []]
**searchedTags** | [**List&lt;TagsModelsContractsTagResponse&gt;**](TagsModelsContractsTagResponse.md) |  | [optional] [default to []]
**polls** | [**List&lt;ForumPollResponse&gt;**](ForumPollResponse.md) |  | [optional] [default to []]
**recruitmentDetails** | [**List&lt;ForumForumRecruitmentDetail&gt;**](ForumForumRecruitmentDetail.md) |  | [optional] [default to []]
**availablePages** | **int** |  | [optional] [default to null]
**results** | [**List&lt;ForumPostResponse&gt;**](ForumPostResponse.md) |  | [optional] [default to []]
**totalResults** | **int** |  | [optional] [default to null]
**hasMore** | **bool** |  | [optional] [default to null]
**query** | [**QueriesPagedQuery**](QueriesPagedQuery.md) |  | [optional] [default to null]
**replacementContinuationToken** | **String** |  | [optional] [default to null]
**useTotalResults** | **bool** | If useTotalResults is true, then totalResults represents an accurate count.  If False, it does not, and may be estimated/only the size of the current page.  Either way, you should probably always only trust hasMore.  This is a long-held historical throwback to when we used to do paging with known total results. Those queries toasted our database, and we were left to hastily alter our endpoints and create backward- compatible shims, of which useTotalResults is one. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


