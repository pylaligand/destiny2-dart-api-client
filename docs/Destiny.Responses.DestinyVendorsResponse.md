# destiny2_api.model.DestinyResponsesDestinyVendorsResponse

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vendorGroups** | [**SingleComponentResponseOfDestinyVendorGroupComponent**](SingleComponentResponseOfDestinyVendorGroupComponent.md) | For Vendors being returned, this will give you the information you need to group them and order them in the same way that the Bungie Companion app performs grouping. It will automatically be returned if you request the Vendors component.  COMPONENT TYPE: Vendors | [optional] [default to null]
**vendors** | [**DictionaryComponentResponseOfuint32AndDestinyVendorComponent**](DictionaryComponentResponseOfuint32AndDestinyVendorComponent.md) | The base properties of the vendor. These are keyed by the Vendor Hash, so you will get one Vendor Component per vendor returned.  COMPONENT TYPE: Vendors | [optional] [default to null]
**categories** | [**DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent**](DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent.md) | Categories that the vendor has available, and references to the sales therein. These are keyed by the Vendor Hash, so you will get one Categories Component per vendor returned.  COMPONENT TYPE: VendorCategories | [optional] [default to null]
**sales** | [**DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent**](DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent.md) | Sales, keyed by the vendorItemIndex of the item being sold. These are keyed by the Vendor Hash, so you will get one Sale Item Set Component per vendor returned.  Note that within the Sale Item Set component, the sales are themselves keyed by the vendorSaleIndex, so you can relate it to the corrent sale item definition within the Vendor&#39;s definition.  COMPONENT TYPE: VendorSales | [optional] [default to null]
**itemComponents** | [**Map&lt;String, DestinyItemComponentSetOfint32&gt;**](DestinyItemComponentSetOfint32.md) | The set of item detail components, one set of item components per Vendor. These are keyed by the Vendor Hash, so you will get one Item Component Set per vendor returned.  The components contained inside are themselves keyed by the vendorSaleIndex, and will have whatever item-level components you requested (Sockets, Stats, Instance data etc...) per item being sold by the vendor. | [optional] [default to {}]
**currencyLookups** | [**SingleComponentResponseOfDestinyCurrenciesComponent**](SingleComponentResponseOfDestinyCurrenciesComponent.md) | A \&quot;lookup\&quot; convenience component that can be used to quickly check if the character has access to items that can be used for purchasing.  COMPONENT TYPE: CurrencyLookups | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


