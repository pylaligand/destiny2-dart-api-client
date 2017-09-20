# destiny2_api.model.DestinyMilestonesDestinyMilestone

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**milestoneHash** | **int** | The unique identifier for the Milestone. Use it to look up the DestinyMilestoneDefinition, so you can combine the other data in this contract with static definition data. | [optional] [default to null]
**availableQuests** | [**List&lt;DestinyMilestonesDestinyMilestoneQuest&gt;**](DestinyMilestonesDestinyMilestoneQuest.md) | Indicates what quests are available for this Milestone. Usually this will be only a single Quest, but some quests have multiple available that you can choose from at any given time. All possible quests for a milestone can be found in the DestinyMilestoneDefinition, but they must be combined with this Live data to determine which one(s) are actually active right now. It is possible for Milestones to not have any quests. | [optional] [default to []]
**values** | **Map&lt;String, double&gt;** | Milestones may have arbitrary key/value pairs associated with them, for data that users will want to know about but that doesn&#39;t fit neatly into any of the common components such as Quests. A good example of this would be - if this existed in Destiny 1 - the number of wins you currently have on your Trials of Osiris ticket. Looking in the DestinyMilestoneDefinition, you can use the string identifier of this dictionary to look up more info about the value, including localized string content for displaying the value. The value in the dictionary is the floating point number. The definition will tell you how to format this number. | [optional] [default to {}]
**vendorHashes** | **List&lt;int&gt;** | A milestone may have one or more active vendors that are \&quot;related\&quot; to it (that provide rewards, or that are the initiators of the Milestone). I already regret this, even as I&#39;m typing it. You see, sometimes a milestone may be directly correlated with a set of vendors that provide varying tiers of rewards. The player may not be able to interact with one or more of those vendors. This will return the hashes of the Vendors that the player *can* interact with, allowing you to show their current inventory as rewards or related items to the Milestone or its activities. | [optional] [default to []]
**rewards** | [**List&lt;DestinyMilestonesDestinyMilestoneRewardCategory&gt;**](DestinyMilestonesDestinyMilestoneRewardCategory.md) | If the entity to which this component is attached has known active Rewards for the player, this will detail information about those rewards, keyed by the RewardEntry Hash. (See DestinyMilestoneDefinition for more information about Reward Entries) Note that these rewards are not for the Quests related to the Milestone. Think of these as \&quot;overview/checklist\&quot; rewards that may be provided for Milestones that may provide rewards for performing a variety of tasks that aren&#39;t under a specific Quest. | [optional] [default to []]
**startDate** | [**DateTime**](DateTime.md) | If known, this is the date when the event last began or refreshed. It will only be populated for events with fixed and repeating start and end dates. | [optional] [default to null]
**endDate** | [**DateTime**](DateTime.md) | If known, this is the date when the event will next end or repeat. It will only be populated for events with fixed and repeating start and end dates. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


