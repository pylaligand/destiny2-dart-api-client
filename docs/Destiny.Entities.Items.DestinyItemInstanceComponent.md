# destiny2_api.model.DestinyEntitiesItemsDestinyItemInstanceComponent

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**damageType** | [**Object**](Object.md) | If the item has a damage type, this is the item&#39;s current damage type. | [optional] [default to null]
**damageTypeHash** | **int** | The current damage type&#39;s hash, so you can look up localized info and icons for it. | [optional] [default to null]
**primaryStat** | [**Object**](Object.md) | The item stat that we consider to be \&quot;primary\&quot; for the item. For instance, this would be \&quot;Attack\&quot; for Weapons or \&quot;Defense\&quot; for armor. | [optional] [default to null]
**itemLevel** | **int** | The Item&#39;s \&quot;Level\&quot; has the most significant bearing on its stats, such as Light and Power. | [optional] [default to null]
**quality** | **int** | The \&quot;Quality\&quot; of the item has a lesser - but still impactful - bearing on stats like Light and Power. | [optional] [default to null]
**isEquipped** | **bool** | Is the item currently equipped on the given character? | [optional] [default to null]
**canEquip** | **bool** | If this is an equippable item, you can check it here. There are permanent as well as transitory reasons why an item might not be able to be equipped: check cannotEquipReason for details. | [optional] [default to null]
**equipRequiredLevel** | **int** | If the item cannot be equipped until you reach a certain level, that level will be reflected here. | [optional] [default to null]
**unlockHashesRequiredToEquip** | **List&lt;int&gt;** | Sometimes, there are limitations to equipping that are represented by character-level flags called \&quot;unlocks\&quot;.  This is a list of flags that they need in order to equip the item that the character has not met. Use these to look up the descriptions to show in your UI by looking up the relevant DestinyUnlockDefinitions for the hashes. | [optional] [default to []]
**cannotEquipReason** | [**Object**](Object.md) | If you cannot equip the item, this is a flags enum that enumerates all of the reasons why you couldn&#39;t equip the item. You may need to refine your UI further by using unlockHashesRequiredToEquip and equipRequiredLevel. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


