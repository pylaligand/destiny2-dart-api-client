# destiny2_api.model.DestinyComponentsCollectiblesDestinyProfileCollectiblesComponent

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recentCollectibleHashes** | **List&lt;int&gt;** | The list of collectibles determined by the game as having been \&quot;recently\&quot; acquired. | [optional] [default to []]
**newnessFlaggedCollectibleHashes** | **List&lt;int&gt;** | The list of collectibles determined by the game as having been \&quot;recently\&quot; acquired.  The game client itself actually controls this data, so I personally question whether anyone will get much use out of this: because we can&#39;t edit this value through the API. But in case anyone finds it useful, here it is. | [optional] [default to []]
**collectibles** | [**Map&lt;String, DestinyComponentsCollectiblesDestinyCollectibleComponent&gt;**](DestinyComponentsCollectiblesDestinyCollectibleComponent.md) |  | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


