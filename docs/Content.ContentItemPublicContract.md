# destiny2_api.model.ContentContentItemPublicContract

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contentId** | **int** |  | [optional] [default to null]
**cType** | **String** |  | [optional] [default to null]
**cmsPath** | **String** |  | [optional] [default to null]
**creationDate** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**modifyDate** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**allowComments** | **bool** |  | [optional] [default to null]
**hasAgeGate** | **bool** |  | [optional] [default to null]
**minimumAge** | **int** |  | [optional] [default to null]
**ratingImagePath** | **String** |  | [optional] [default to null]
**author** | [**UserGeneralUser**](UserGeneralUser.md) |  | [optional] [default to null]
**autoEnglishPropertyFallback** | **bool** |  | [optional] [default to null]
**properties** | [**Map&lt;String, Object&gt;**](Object.md) | Firehose content is really a collection of metadata and \&quot;properties\&quot;, which are the potentially-but-not-strictly localizable data that comprises the meat of whatever content is being shown.  As Cole Porter would have crooned, \&quot;Anything Goes\&quot; with Firehose properties. They are most often strings, but they can theoretically be anything. They are JSON encoded, and could be JSON structures, simple strings, numbers etc... The Content Type of the item (cType) will describe the properties, and thus how they ought to be deserialized. | [optional] [default to {}]
**representations** | [**List&lt;ContentContentRepresentation&gt;**](ContentContentRepresentation.md) |  | [optional] [default to []]
**tags** | **List&lt;String&gt;** |  | [optional] [default to []]
**commentSummary** | [**ContentCommentSummary**](ContentCommentSummary.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


