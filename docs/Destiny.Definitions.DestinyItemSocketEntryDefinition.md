# destiny2_api.model.DestinyDefinitionsDestinyItemSocketEntryDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**socketTypeHash** | **int** | All sockets have a type, and this is the hash identifier for this particular type. Use it to look up the DestinySocketTypeDefinition: read there for more information on how socket types affect the behavior of the socket. | [optional] [default to null]
**singleInitialItemHash** | **int** | If a valid hash, this is the hash identifier for the DestinyInventoryItemDefinition representing the Plug that will be initially inserted into the item on item creation. Otherwise, this Socket will either start without a plug inserted, or will have one randomly inserted. | [optional] [default to null]
**reusablePlugItems** | [**List&lt;DestinyDefinitionsDestinyItemSocketEntryPlugItemDefinition&gt;**](DestinyDefinitionsDestinyItemSocketEntryPlugItemDefinition.md) | This is a list of pre-determined plugs that can *always* be plugged into this socket, without the character having the plug in their inventory.  If this list is populated, you will not be allowed to plug an arbitrary item in the socket: you will only be able to choose from one of these reusable plugs. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


