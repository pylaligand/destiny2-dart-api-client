# destiny2_api.model.DestinyDefinitionsDestinyDisplayCategoryDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identifier** | **String** | A string identifier for the display category. | [optional] [default to null]
**displayCategoryHash** | **int** |  | [optional] [default to null]
**displayProperties** | [**DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**](DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition.md) |  | [optional] [default to null]
**displayInBanner** | **bool** | If true, this category should be displayed in the \&quot;Banner\&quot; section of the vendor&#39;s UI. | [optional] [default to null]
**progressionHash** | **int** | If it exists, this is the hash identifier of a DestinyProgressionDefinition that represents the progression to show on this display category.  Specific categories can now have thier own distinct progression, apparently. So that&#39;s cool. | [optional] [default to null]
**sortOrder** | [**DestinyVendorDisplayCategorySortOrder**](DestinyVendorDisplayCategorySortOrder.md) | If this category sorts items in a nonstandard way, this will be the way we sort. | [optional] [default to null]
**displayStyleHash** | **int** | An indicator of how the category will be displayed in the UI. It&#39;s up to you to do something cool or interesting in response to this, or just to treat it as a normal category. | [optional] [default to null]
**displayStyleIdentifier** | **String** | An indicator of how the category will be displayed in the UI. It&#39;s up to you to do something cool or interesting in response to this, or just to treat it as a normal category. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


