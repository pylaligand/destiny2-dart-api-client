# destiny2_api.model.DestinyDefinitionsDestinyRaceDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayProperties** | [**DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**](DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition.md) |  | [optional] [default to null]
**raceType** | [**Object**](Object.md) | An enumeration defining the existing, known Races/Species for player characters. This value will be the enum value matching this definition. | [optional] [default to null]
**genderedRaceNames** | **Map&lt;String, String&gt;** | A localized string referring to the singular form of the Race&#39;s name when referred to in gendered form. Keyed by the DestinyGender. | [optional] [default to {}]
**hash** | **int** | The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. | [optional] [default to null]
**index** | **int** | The index of the entity as it was found in the investment tables. | [optional] [default to null]
**redacted** | **bool** | If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


