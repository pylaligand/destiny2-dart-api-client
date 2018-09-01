# destiny2_api.model.DestinyDefinitionsDestinyVendorItemSocketOverride

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**singleItemHash** | **int** | If this is populated, the socket will be overridden with a specific plug.  If this isn&#39;t populated, it&#39;s being overridden by something more complicated that is only known by the Game Server and God, which means we can&#39;t tell you in advance what it&#39;ll be. | [optional] [default to null]
**randomizedOptionsCount** | **int** | If this is greater than -1, the number of randomized plugs on this socket will be set to this quantity instead of whatever it&#39;s set to by default. | [optional] [default to null]
**socketTypeHash** | **int** | This appears to be used to select which socket ultimately gets the override defined here. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


