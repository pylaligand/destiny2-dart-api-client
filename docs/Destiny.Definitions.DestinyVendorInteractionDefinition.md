# destiny2_api.model.DestinyDefinitionsDestinyVendorInteractionDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**replies** | [**List&lt;DestinyDefinitionsDestinyVendorInteractionReplyDefinition&gt;**](DestinyDefinitionsDestinyVendorInteractionReplyDefinition.md) | The potential replies that the user can make to the interaction. | [optional] [default to []]
**vendorCategoryIndex** | **int** | If &gt;&#x3D; 0, this is the category of sale items to show along with this interaction dialog. | [optional] [default to null]
**questlineItemHash** | **int** | If this interaction dialog is about a quest, this is the questline related to the interaction. You can use this to show the quest overview, or even the character&#39;s status with the quest if you use it to find the character&#39;s current Quest Step by checking their inventory against this questlineItemHash&#39;s DestinyInventoryItemDefinition.setData. | [optional] [default to null]
**sackInteractionList** | [**List&lt;DestinyDefinitionsDestinyVendorInteractionSackEntryDefinition&gt;**](DestinyDefinitionsDestinyVendorInteractionSackEntryDefinition.md) | If this interaction is meant to show you sacks, this is the list of types of sacks to be shown. If empty, the interaction is not meant to show sacks. | [optional] [default to []]
**uiInteractionType** | **int** | A UI hint for the behavior of the interaction screen. BNet doesn&#39;t use this, but you can choose to. | [optional] [default to null]
**rewardBlockLabel** | **String** | If this interaction is displaying rewards, this is the text to use for the header of the reward-displaying section of the interaction. | [optional] [default to null]
**rewardVendorCategoryIndex** | **int** | If the vendor&#39;s reward list is sourced from one of his categories, this is the index into the category array of items to show. | [optional] [default to null]
**flavorLineOne** | **String** | If the vendor interaction has flavor text, this is some of it. | [optional] [default to null]
**flavorLineTwo** | **String** | If the vendor interaction has flavor text, this is the rest of it. | [optional] [default to null]
**headerDisplayProperties** | [**Object**](Object.md) | The header for the interaction dialog. | [optional] [default to null]
**instructions** | **String** | The localized text telling the player what to do when they see this dialog. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

