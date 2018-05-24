# destiny2_api.model.TrendingTrendingEntry

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**weight** | **double** | The weighted score of this trending item. | [optional] [default to null]
**isFeatured** | **bool** |  | [optional] [default to null]
**identifier** | **String** | We don&#39;t know whether the identifier will be a string, a uint, or a long... so we&#39;re going to cast it all to a string. But either way, we need any trending item created to have a single unique identifier for its type. | [optional] [default to null]
**entityType** | [**TrendingTrendingEntryType**](TrendingTrendingEntryType.md) | An enum - unfortunately - dictating all of the possible kinds of trending items that you might get in your result set, in case you want to do custom rendering or call to get the details of the item. | [optional] [default to null]
**displayName** | **String** | The localized \&quot;display name/article title/&#39;primary localized identifier&#39;\&quot; of the entity. | [optional] [default to null]
**tagline** | **String** | If the entity has a localized tagline/subtitle/motto/whatever, that is found here. | [optional] [default to null]
**image** | **String** |  | [optional] [default to null]
**startDate** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**endDate** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**link** | **String** |  | [optional] [default to null]
**webmVideo** | **String** | If this is populated, the entry has a related WebM video to show. I am 100% certain I am going to regret putting this directly on TrendingEntry, but it will work so yolo | [optional] [default to null]
**mp4Video** | **String** | If this is populated, the entry has a related MP4 video to show. I am 100% certain I am going to regret putting this directly on TrendingEntry, but it will work so yolo | [optional] [default to null]
**featureImage** | **String** | If isFeatured, this image will be populated with whatever the featured image is. Note that this will likely be a very large image, so don&#39;t use it all the time. | [optional] [default to null]
**items** | [**List&lt;TrendingTrendingEntry&gt;**](TrendingTrendingEntry.md) | If the item is of entityType TrendingEntryType.Container, it may have items - also Trending Entries - contained within it. This is the ordered list of those to display under the Container&#39;s header. | [optional] [default to []]
**creationDate** | [**DateTime**](DateTime.md) | If the entry has a date at which it was created, this is that date. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


