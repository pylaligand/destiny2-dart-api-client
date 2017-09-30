# destiny2_api.model.DestinyDefinitionsDestinyObjectiveDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayProperties** | [**DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**](DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition.md) | Ideally, this should tell you what your task is. I&#39;m not going to lie to you though. Sometimes this doesn&#39;t have useful information at all. Which sucks, but there&#39;s nothing either of us can do about it. | [optional] [default to null]
**completionValue** | **int** | The value that the unlock value defined in unlockValueHash must reach in order for the objective to be considered Completed. Used in calculating progress and completion status. | [optional] [default to null]
**locationHash** | **int** | OPTIONAL: a hash identifier for the location at which this objective must be accomplished, if there is a location defined. Look up the DestinyLocationDefinition for this hash for that additional location info. | [optional] [default to null]
**allowNegativeValue** | **bool** | If true, the value is allowed to go negative. | [optional] [default to null]
**allowValueChangeWhenCompleted** | **bool** | If true, you can effectively \&quot;un-complete\&quot; this objective if you lose progress after crossing the completion threshold.   If False, once you complete the task it will remain completed forever by locking the value. | [optional] [default to null]
**isCountingDownward** | **bool** | If true, completion means having an unlock value less than or equal to the completionValue.  If False, completion means having an unlock value greater than or equal to the completionValue. | [optional] [default to null]
**valueStyle** | [**DestinyDestinyUnlockValueUIStyle**](DestinyDestinyUnlockValueUIStyle.md) | The UI style applied to the objective. It&#39;s an enum, take a look at DestinyUnlockValueUIStyle for details of the possible styles. Use this info as you wish to customize your UI. | [optional] [default to null]
**progressDescription** | **String** | Text to describe the progress bar. | [optional] [default to null]
**perks** | [**DestinyDefinitionsDestinyObjectivePerkEntryDefinition**](DestinyDefinitionsDestinyObjectivePerkEntryDefinition.md) | If this objective enables Perks intrinsically, the conditions for that enabling are defined here. | [optional] [default to null]
**stats** | [**DestinyDefinitionsDestinyObjectiveStatEntryDefinition**](DestinyDefinitionsDestinyObjectiveStatEntryDefinition.md) | If this objective enables modifications on a player&#39;s stats intrinsically, the conditions are defined here. | [optional] [default to null]
**hash** | **int** | The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. | [optional] [default to null]
**index** | **int** | The index of the entity as it was found in the investment tables. | [optional] [default to null]
**redacted** | **bool** | If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


