# destiny2_api.model.DestinyDefinitionsDestinyVendorCategoryEntryDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**categoryIndex** | **int** | The index of the category in the original category definitions for the vendor. | [optional] [default to null]
**categoryId** | **String** | The string identifier of the category. | [optional] [default to null]
**categoryHash** | **int** | The hashed identifier for the category. (note that this is NOT pointing to a DestinyVendorCategoryDefinition, it&#39;s confusing but this is a sale item category in a vendor, not a categorization of vendors themselves) | [optional] [default to null]
**quantityAvailable** | **int** | The amount of items that will be available when this category is shown. | [optional] [default to null]
**showUnavailableItems** | **bool** | If items aren&#39;t up for sale in this category, should we still show them (greyed out)? | [optional] [default to null]
**hideIfNoCurrency** | **bool** | If you don&#39;t have the currency required to buy items from this category, should the items be hidden? | [optional] [default to null]
**hideFromRegularPurchase** | **bool** | True if this category doesn&#39;t allow purchases. | [optional] [default to null]
**buyStringOverride** | **String** | The localized string for making purchases from this category, if it is different from the vendor&#39;s string for purchasing. | [optional] [default to null]
**disabledDescription** | **String** | If the category is disabled, this is the localized description to show. | [optional] [default to null]
**displayTitle** | **String** | The localized title of the category. | [optional] [default to null]
**overlay** | [**DestinyDefinitionsDestinyVendorCategoryOverlayDefinition**](DestinyDefinitionsDestinyVendorCategoryOverlayDefinition.md) | If this category has an overlay prompt that should appear, this contains the details of that prompt. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


