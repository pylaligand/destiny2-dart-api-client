# destiny2_api.model.DestinyDefinitionsDestinyStatGroupDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**maximumValue** | **int** | The maximum possible value that any stat in this group can be transformed into.  This is used by stats that *don&#39;t* have scaledStats entries below, but that still need to be displayed as a progress bar, in which case this is used as the upper bound for said progress bar. (the lower bound is always 0) | [optional] [default to null]
**uiPosition** | **int** | This apparently indicates the position of the stats in the UI? I&#39;ve returned it in case anyone can use it, but it&#39;s not of any use to us on BNet. Something&#39;s being lost in translation with this value. | [optional] [default to null]
**scaledStats** | [**List&lt;DestinyDefinitionsDestinyStatDisplayDefinition&gt;**](DestinyDefinitionsDestinyStatDisplayDefinition.md) | Any stat that requires scaling to be transformed from an \&quot;Investment\&quot; stat to a \&quot;Display\&quot; stat will have an entry in this list. For more information on what those types of stats mean and the transformation process, see DestinyStatDefinition.  In retrospect, I wouldn&#39;t mind if this was a dictionary keyed by the stat hash instead. But I&#39;m going to leave it be because [[After Apple Picking]]. | [optional] [default to []]
**overrides** | [**Map&lt;String, DestinyDefinitionsDestinyStatOverrideDefinition&gt;**](DestinyDefinitionsDestinyStatOverrideDefinition.md) | The game has the ability to override, based on the stat group, what the localized text is that is displayed for Stats being shown on the item.  Mercifully, no Stat Groups use this feature currently. If they start using them, we&#39;ll all need to start using them (and those of you who are more prudent than I am can go ahead and start pre-checking for this.) | [optional] [default to {}]
**hash** | **int** | The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. | [optional] [default to null]
**index** | **int** | The index of the entity as it was found in the investment tables. | [optional] [default to null]
**redacted** | **bool** | If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


