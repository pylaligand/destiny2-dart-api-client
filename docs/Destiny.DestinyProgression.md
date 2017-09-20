# destiny2_api.model.DestinyDestinyProgression

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**progressionHash** | **int** | The hash identifier of the Progression in question. Use it to look up the DestinyProgressionDefinition in static data. | [optional] [default to null]
**dailyProgress** | **int** | The amount of progress earned today for this progression. | [optional] [default to null]
**dailyLimit** | **int** | If this progression has a daily limit, this is that limit. | [optional] [default to null]
**weeklyProgress** | **int** | The amount of progress earned toward this progression in the current week. | [optional] [default to null]
**weeklyLimit** | **int** | If this progression has a weekly limit, this is that limit. | [optional] [default to null]
**currentProgress** | **int** | This is the total amount of progress obtained overall for this progression (for instance, the total amount of Character Level experience earned) | [optional] [default to null]
**level** | **int** | This is the level of the progression (for instance, the Character Level). | [optional] [default to null]
**levelCap** | **int** | This is the maximum possible level you can achieve for this progression (for example, the maximum character level obtainable) | [optional] [default to null]
**stepIndex** | **int** | Progressions define their levels in \&quot;steps\&quot;. Since the last step may be repeatable, the user may be at a higher level than the actual Step achieved in the progression. Not necessarily useful, but potentially interesting for those cruising the API. Relate this to the \&quot;steps\&quot; property of the DestinyProgression to see which step the user is on, if you care about that. (Note that this is Content Version dependent since it refers to indexes.) | [optional] [default to null]
**progressToNextLevel** | **int** | The amount of progression (i.e. \&quot;Experience\&quot;) needed to reach the next level of this Progression. Jeez, progression is such an overloaded word. | [optional] [default to null]
**nextLevelAt** | **int** | The total amount of progression (i.e. \&quot;Experience\&quot;) needed in order to reach the next level. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


