# destiny2_api.model.DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardsDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**items** | [**List&lt;DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardItem&gt;**](DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardItem.md) | The items that represent your reward for completing the quest.  Be warned, these could be \&quot;dummy\&quot; items: items that are only used to render a good-looking in-game tooltip, but aren&#39;t the actual items themselves.  For instance, when experience is given there&#39;s often a dummy item representing \&quot;experience\&quot;, with quantity being the amount of experience you got. We don&#39;t have a programmatic association between those and whatever Progression is actually getting that experience... yet. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


