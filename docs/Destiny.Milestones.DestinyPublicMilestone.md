# destiny2_api.model.DestinyMilestonesDestinyPublicMilestone

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**milestoneHash** | **int** | The hash identifier for the milestone. Use it to look up the DestinyMilestoneDefinition for static data about the Milestone. | [optional] [default to null]
**availableQuests** | [**List&lt;DestinyMilestonesDestinyPublicMilestoneQuest&gt;**](DestinyMilestonesDestinyPublicMilestoneQuest.md) | A milestone not need have even a single quest, but if there are active quests they will be returned here. | [optional] [default to []]
**vendorHashes** | **List&lt;int&gt;** | Sometimes milestones - or activities active in milestones - will have relevant vendors. These are the vendors that are currently relevant.  Deprecated, already, for the sake of the new \&quot;vendors\&quot; property that has more data. What was I thinking. | [optional] [default to []]
**vendors** | [**List&lt;DestinyMilestonesDestinyPublicMilestoneVendor&gt;**](DestinyMilestonesDestinyPublicMilestoneVendor.md) | This is why we can&#39;t have nice things. This is the ordered list of vendors to be shown that relate to this milestone, potentially along with other interesting data. | [optional] [default to []]
**startDate** | [**DateTime**](DateTime.md) | If known, this is the date when the Milestone started/became active. | [optional] [default to null]
**endDate** | [**DateTime**](DateTime.md) | If known, this is the date when the Milestone will expire/recycle/end. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


