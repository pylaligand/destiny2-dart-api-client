# destiny2_api.model.DestinyMilestonesDestinyMilestoneActivityCompletionStatus

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**completed** | **bool** | If the activity has been \&quot;completed\&quot;, that information will be returned here. | [optional] [default to null]
**phases** | [**List&lt;DestinyMilestonesDestinyMilestoneActivityPhase&gt;**](DestinyMilestonesDestinyMilestoneActivityPhase.md) | If the Activity has discrete \&quot;phases\&quot; that we can track, that info will be here. Otherwise, this value will be NULL. Note that this is a list and not a dictionary: the order implies the ascending order of phases or progression in this activity. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


