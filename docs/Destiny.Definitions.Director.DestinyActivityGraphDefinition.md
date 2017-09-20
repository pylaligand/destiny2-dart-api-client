# destiny2_api.model.DestinyDefinitionsDirectorDestinyActivityGraphDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nodes** | [**List&lt;DestinyDefinitionsDirectorDestinyActivityGraphNodeDefinition&gt;**](DestinyDefinitionsDirectorDestinyActivityGraphNodeDefinition.md) | These represent the visual \&quot;nodes\&quot; on the map&#39;s view. These are the activities you can click on in the map. | [optional] [default to []]
**artElements** | [**List&lt;DestinyDefinitionsDirectorDestinyActivityGraphArtElementDefinition&gt;**](DestinyDefinitionsDirectorDestinyActivityGraphArtElementDefinition.md) | Represents one-off/special UI elements that appear on the map. | [optional] [default to []]
**connections** | [**List&lt;DestinyDefinitionsDirectorDestinyActivityGraphConnectionDefinition&gt;**](DestinyDefinitionsDirectorDestinyActivityGraphConnectionDefinition.md) | Represents connections between graph nodes. However, it lacks context that we&#39;d need to make good use of it. | [optional] [default to []]
**displayObjectives** | [**List&lt;DestinyDefinitionsDirectorDestinyActivityGraphDisplayObjectiveDefinition&gt;**](DestinyDefinitionsDirectorDestinyActivityGraphDisplayObjectiveDefinition.md) | Objectives can display on maps, and this is supposedly metadata for that. I have not had the time to analyze the details of what is useful within however: we could be missing important data to make this work. Expect this property to be expanded on later if possible. | [optional] [default to []]
**displayProgressions** | [**List&lt;DestinyDefinitionsDirectorDestinyActivityGraphDisplayProgressionDefinition&gt;**](DestinyDefinitionsDirectorDestinyActivityGraphDisplayProgressionDefinition.md) | Progressions can also display on maps, but similarly to displayObjectives we appear to lack some required information and context right now. We will have to look into it later and add more data if possible. | [optional] [default to []]
**linkedGraphs** | [**List&lt;DestinyDefinitionsDirectorDestinyLinkedGraphDefinition&gt;**](DestinyDefinitionsDirectorDestinyLinkedGraphDefinition.md) | Represents links between this Activity Graph and other ones. | [optional] [default to []]
**hash** | **int** | The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. | [optional] [default to null]
**index** | **int** | The index of the entity as it was found in the investment tables. | [optional] [default to null]
**redacted** | **bool** | If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


