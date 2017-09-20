# destiny2_api.model.DestinyDestinyTalentNodeStatBlock

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currentStepStats** | [**List&lt;DestinyDestinyStat&gt;**](DestinyDestinyStat.md) | The stat benefits conferred when this talent node is activated for the current Step that is active on the node. | [optional] [default to []]
**nextStepStats** | [**List&lt;DestinyDestinyStat&gt;**](DestinyDestinyStat.md) | This is a holdover from the old days of Destiny 1, when a node could be activated multiple times, conferring multiple steps worth of benefits: you would use this property to show what activating the \&quot;next\&quot; step on the node would provide vs. what the current step is providing. While Nodes are currently not being used this way, the underlying system for this functionality still exists. I hesitate to remove this property while the ability for designers to make such a talent grid still exists. Whether you want to show it is up to you. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


