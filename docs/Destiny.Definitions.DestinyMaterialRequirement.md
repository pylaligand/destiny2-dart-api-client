# destiny2_api.model.DestinyDefinitionsDestinyMaterialRequirement

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**itemHash** | **int** | The hash identifier of the material required. Use it to look up the material&#39;s DestinyInventoryItemDefinition. | [optional] [default to null]
**deleteOnAction** | **bool** | If True, the material will be removed from the character&#39;s inventory when the action is performed. | [optional] [default to null]
**count** | **int** | The amount of the material required. | [optional] [default to null]
**omitFromRequirements** | **bool** | If True, this requirement is \&quot;silent\&quot;: don&#39;t bother showing it in a material requirements display. I mean, I&#39;m not your mom: I&#39;m not going to tell you you *can&#39;t* show it. But we won&#39;t show it in our UI. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


