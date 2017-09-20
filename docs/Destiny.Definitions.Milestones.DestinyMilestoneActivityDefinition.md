# destiny2_api.model.DestinyDefinitionsMilestonesDestinyMilestoneActivityDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conceptualActivityHash** | **int** | The \&quot;Conceptual\&quot; activity hash. Basically, we picked the lowest level activity and are treating it as the canonical definition of the activity for rendering purposes.  If you care about the specific difficulty modes and variations, use the activities under \&quot;Variants\&quot;. | [optional] [default to null]
**variants** | [**Map&lt;String, DestinyDefinitionsMilestonesDestinyMilestoneActivityVariantDefinition&gt;**](DestinyDefinitionsMilestonesDestinyMilestoneActivityVariantDefinition.md) | A milestone-referenced activity can have many variants, such as Tiers or alternative modes of play.  Even if there is only a single variant, the details for these are represented within as a variant definition.  It is assumed that, if this DestinyMilestoneActivityDefinition is active, then all variants should be active.  If a Milestone could ever split the variants&#39; active status conditionally, they should all have their own DestinyMilestoneActivityDefinition instead! The potential duplication will be worth it for the obviousness of processing and use. | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


