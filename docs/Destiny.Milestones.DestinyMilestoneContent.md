# destiny2_api.model.DestinyMilestonesDestinyMilestoneContent

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**about** | **String** | The \&quot;About this Milestone\&quot; text from the Firehose. | [optional] [default to null]
**status** | **String** | The Current Status of the Milestone, as driven by the Firehose. | [optional] [default to null]
**tips** | **List&lt;String&gt;** | A list of tips, provided by the Firehose. | [optional] [default to []]
**itemCategories** | [**List&lt;DestinyMilestonesDestinyMilestoneContentItemCategory&gt;**](DestinyMilestonesDestinyMilestoneContentItemCategory.md) | If DPS has defined items related to this Milestone, they can categorize those items in the Firehose. That data will then be returned as item categories here. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


