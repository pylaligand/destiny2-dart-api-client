# destiny2_api.model.DestinyDefinitionsDestinyTalentExclusiveGroup

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**groupHash** | **int** | The identifier for this exclusive group. Only guaranteed unique within the talent grid, not globally. | [optional] [default to null]
**loreHash** | **int** | If this group has an associated piece of lore to show next to it, this will be the identifier for that DestinyLoreDefinition. | [optional] [default to null]
**nodeHashes** | **List&lt;int&gt;** | A quick reference of the talent nodes that are part of this group, by their Talent Node hashes. (See DestinyTalentNodeDefinition.nodeHash) | [optional] [default to []]
**opposingGroupHashes** | **List&lt;int&gt;** | A quick reference of Groups whose nodes will be deactivated if any node in this group is activated. | [optional] [default to []]
**opposingNodeHashes** | **List&lt;int&gt;** | A quick reference of Nodes that will be deactivated if any node in this group is activated, by their Talent Node hashes. (See DestinyTalentNodeDefinition.nodeHash) | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


