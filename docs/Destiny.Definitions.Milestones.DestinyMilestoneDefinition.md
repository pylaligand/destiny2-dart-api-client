# destiny2_api.model.DestinyDefinitionsMilestonesDestinyMilestoneDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayProperties** | [**DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**](DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition.md) |  | [optional] [default to null]
**image** | **String** | A custom image someone made just for the milestone. Isn&#39;t that special? | [optional] [default to null]
**milestoneType** | [**DestinyDefinitionsMilestonesDestinyMilestoneType**](DestinyDefinitionsMilestonesDestinyMilestoneType.md) | An enumeration listing one of the possible types of milestones. Check out the DestinyMilestoneType enum for more info! | [optional] [default to null]
**recruitable** | **bool** | If True, then the Milestone has been integrated with BNet&#39;s recruiting feature. | [optional] [default to null]
**friendlyName** | **String** | If the milestone has a friendly identifier for association with other features - such as Recruiting - that identifier can be found here. This is \&quot;friendly\&quot; in that it looks better in a URL than whatever the identifier for the Milestone actually is. | [optional] [default to null]
**showInExplorer** | **bool** | If TRUE, this entry should be returned in the list of milestones for the \&quot;Explore Destiny\&quot; (i.e. new BNet homepage) features of Bungie.net (as long as the underlying event is active) | [optional] [default to null]
**hasPredictableDates** | **bool** | A shortcut for clients - and the server - to understand whether we can predict the start and end dates for this event. In practice, there are multiple ways that an event could have predictable date ranges, but not all events will be able to be predicted via any mechanism (for instance, events that are manually triggered on and off) | [optional] [default to null]
**quests** | [**Map&lt;String, DestinyDefinitionsMilestonesDestinyMilestoneQuestDefinition&gt;**](DestinyDefinitionsMilestonesDestinyMilestoneQuestDefinition.md) | The full set of possible Quests that give the overview of the Milestone event/activity in question. Only one of these can be active at a time for a given Conceptual Milestone, but many of them may be \&quot;available\&quot; for the user to choose from. (for instance, with Milestones you can choose from the three available Quests, but only one can be active at a time) Keyed by the quest item. | [optional] [default to {}]
**rewards** | [**Map&lt;String, DestinyDefinitionsMilestonesDestinyMilestoneRewardCategoryDefinition&gt;**](DestinyDefinitionsMilestonesDestinyMilestoneRewardCategoryDefinition.md) | If this milestone can provide rewards, this will define the categories into which the individual reward entries are placed. | [optional] [default to {}]
**vendors** | [**List&lt;DestinyDefinitionsMilestonesDestinyMilestoneVendorDefinition&gt;**](DestinyDefinitionsMilestonesDestinyMilestoneVendorDefinition.md) | Sometimes, milestones will have rewards provided by Vendors. This definition gives the information needed to understand which vendors are relevant, the order in which they should be returned if order matters, and the conditions under which the Vendor is relevant to the user. | [optional] [default to []]
**values** | [**Map&lt;String, DestinyDefinitionsMilestonesDestinyMilestoneValueDefinition&gt;**](DestinyDefinitionsMilestonesDestinyMilestoneValueDefinition.md) | Sometimes, milestones will have arbitrary values associated with them that are of interest to us or to third party developers. This is the collection of those values&#39; definitions, keyed by the identifier of the value and providing useful definition information such as localizable names and descriptions for the value. | [optional] [default to {}]
**isInGameMilestone** | **bool** | Some milestones are explicit objectives that you can see and interact with in the game. Some milestones are more conceptual, built by BNet to help advise you on activities and events that happen in-game but that aren&#39;t explicitly shown in game as Milestones. If this is TRUE, you can see this as a milestone in the game. If this is FALSE, it&#39;s an event or activity you can participate in, but you won&#39;t see it as a Milestone in the game&#39;s UI. | [optional] [default to null]
**hash** | **int** | The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. | [optional] [default to null]
**index** | **int** | The index of the entity as it was found in the investment tables. | [optional] [default to null]
**redacted** | **bool** | If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


