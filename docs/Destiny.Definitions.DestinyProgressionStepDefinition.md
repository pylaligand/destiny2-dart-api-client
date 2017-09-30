# destiny2_api.model.DestinyDefinitionsDestinyProgressionStepDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stepName** | **String** | Very rarely, Progressions will have localized text describing the Level of the progression. This will be that localized text, if it exists. Otherwise, the standard appears to be to simply show the level numerically. | [optional] [default to null]
**displayEffectType** | [**DestinyDestinyProgressionStepDisplayEffect**](DestinyDestinyProgressionStepDisplayEffect.md) | This appears to be, when you \&quot;level up\&quot;, whether a visual effect will display and on what entity. See DestinyProgressionStepDisplayEffect for slightly more info. | [optional] [default to null]
**progressTotal** | **int** | The total amount of progression points/\&quot;experience\&quot; you will need to initially reach this step. If this is the last step and the progression is repeating indefinitely (DestinyProgressionDefinition.repeatLastStep), this will also be the progress needed to level it up further by repeating this step again. | [optional] [default to null]
**rewardItems** | [**List&lt;DestinyDestinyItemQuantity&gt;**](DestinyDestinyItemQuantity.md) | A listing of items rewarded as a result of reaching this level. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


