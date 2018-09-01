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
**sortValue** | **int** | Used in sorting items in vendors... but there&#39;s a lot more to it. Just go with the order provided in the itemIndexes property on the DestinyVendorCategoryComponent instead, it should be more reliable than trying to recalculate it yourself. | [optional] [default to null]
**categoryHash** | **int** | The hashed identifier for the category. | [optional] [default to null]
**quantityAvailable** | **int** | The amount of items that will be available when this category is shown. | [optional] [default to null]
**showUnavailableItems** | **bool** | If items aren&#39;t up for sale in this category, should we still show them (greyed out)? | [optional] [default to null]
**hideIfNoCurrency** | **bool** | If you don&#39;t have the currency required to buy items from this category, should the items be hidden? | [optional] [default to null]
**hideFromRegularPurchase** | **bool** | True if this category doesn&#39;t allow purchases. | [optional] [default to null]
**buyStringOverride** | **String** | The localized string for making purchases from this category, if it is different from the vendor&#39;s string for purchasing. | [optional] [default to null]
**disabledDescription** | **String** | If the category is disabled, this is the localized description to show. | [optional] [default to null]
**displayTitle** | **String** | The localized title of the category. | [optional] [default to null]
**overlay** | [**DestinyDefinitionsDestinyVendorCategoryOverlayDefinition**](DestinyDefinitionsDestinyVendorCategoryOverlayDefinition.md) | If this category has an overlay prompt that should appear, this contains the details of that prompt. | [optional] [default to null]
**vendorItemIndexes** | **List&lt;int&gt;** | A shortcut for the vendor item indexes sold under this category. Saves us from some expensive reorganization at runtime. | [optional] [default to []]
**isPreview** | **bool** | Sometimes a category isn&#39;t actually used to sell items, but rather to preview them. This implies different UI (and manual placement of the category in the UI) in the game, and special treatment. | [optional] [default to null]
**isDisplayOnly** | **bool** | If true, this category only displays items: you can&#39;t purchase anything in them. | [optional] [default to null]
**resetIntervalMinutesOverride** | **int** |  | [optional] [default to null]
**resetOffsetMinutesOverride** | **int** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


