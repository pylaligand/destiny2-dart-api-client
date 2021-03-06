# destiny2_api.model.DestinyDefinitionsDestinyEquippingBlockDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gearsetItemHash** | **int** | If the item is part of a gearset, this is a reference to that gearset item. | [optional] [default to null]
**uniqueLabel** | **String** | If defined, this is the label used to check if the item has other items of matching types already equipped.   For instance, when you aren&#39;t allowed to equip more than one Exotic Weapon, that&#39;s because all exotic weapons have identical uniqueLabels and the game checks the to-be-equipped item&#39;s uniqueLabel vs. all other already equipped items (other than the item in the slot that&#39;s about to be occupied). | [optional] [default to null]
**uniqueLabelHash** | **int** | The hash of that unique label. Does not point to a specific definition. | [optional] [default to null]
**equipmentSlotTypeHash** | **int** | An equipped item *must* be equipped in an Equipment Slot. This is the hash identifier of the DestinyEquipmentSlotDefinition into which it must be equipped. | [optional] [default to null]
**attributes** | [**DestinyEquippingItemBlockAttributes**](DestinyEquippingItemBlockAttributes.md) | These are custom attributes on the equippability of the item.  For now, this can only be \&quot;equip on acquire\&quot;, which would mean that the item will be automatically equipped as soon as you pick it up. | [optional] [default to null]
**ammoType** | [**DestinyDestinyAmmunitionType**](DestinyDestinyAmmunitionType.md) | Ammo type used by a weapon is no longer determined by the bucket in which it is contained. If the item has an ammo type - i.e. if it is a weapon - this will be the type of ammunition expected. | [optional] [default to null]
**displayStrings** | **List&lt;String&gt;** | These are strings that represent the possible Game/Account/Character state failure conditions that can occur when trying to equip the item. They match up one-to-one with requiredUnlockExpressions. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


