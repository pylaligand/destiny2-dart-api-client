# destiny2_api.model.DestinyResponsesDestinyProfileResponse

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vendorReceipts** | [**Object**](Object.md) | Recent, refundable purchases you have made from vendors. When will you use it? Couldn&#39;t say...  COMPONENT TYPE: VendorReceipts | [optional] [default to null]
**profileInventory** | [**Object**](Object.md) | The profile-level inventory of the Destiny Profile.  COMPONENT TYPE: ProfileInventories | [optional] [default to null]
**profileCurrencies** | [**Object**](Object.md) | The profile-level currencies owned by the Destiny Profile.  COMPONENT TYPE: ProfileCurrencies | [optional] [default to null]
**profile** | [**Object**](Object.md) | The basic information about the Destiny Profile (formerly \&quot;Account\&quot;).  COMPONENT TYPE: Profiles | [optional] [default to null]
**profileKiosks** | [**Object**](Object.md) | Items available from Kiosks that are available Profile-wide (i.e. across all characters)  This component returns information about what Kiosk items are available to you on a *Profile* level. It is theoretically possible for Kiosks to have items gated by specific Character as well. If you ever have those, you will find them on the characterKiosks property.  COMPONENT TYPE: Kiosks | [optional] [default to null]
**characters** | [**Object**](Object.md) | Basic information about each character, keyed by the CharacterId.  COMPONENT TYPE: Characters | [optional] [default to null]
**characterInventories** | [**Object**](Object.md) | The character-level non-equipped inventory items, keyed by the Character&#39;s Id.  COMPONENT TYPE: CharacterInventories | [optional] [default to null]
**characterProgressions** | [**Object**](Object.md) | Character-level progression data, keyed by the Character&#39;s Id.  COMPONENT TYPE: CharacterProgressions | [optional] [default to null]
**characterRenderData** | [**Object**](Object.md) | Character rendering data - a minimal set of info needed to render a character in 3D - keyed by the Character&#39;s Id.  COMPONENT TYPE: CharacterRenderData | [optional] [default to null]
**characterActivities** | [**Object**](Object.md) | Character activity data - the activities available to this character and its status, keyed by the Character&#39;s Id.  COMPONENT TYPE: CharacterActivities | [optional] [default to null]
**characterEquipment** | [**Object**](Object.md) | The character&#39;s equipped items, keyed by the Character&#39;s Id.  COMPONENT TYPE: CharacterEquipment | [optional] [default to null]
**characterKiosks** | [**Object**](Object.md) | Items available from Kiosks that are available to a specific character as opposed to the account as a whole. It must be combined with data from the profileKiosks property to get a full picture of the character&#39;s available items to check out of a kiosk.  This component returns information about what Kiosk items are available to you on a *Character* level. Usually, kiosk items will be earned for the entire Profile (all characters) at once. To find those, look in the profileKiosks property.  COMPONENT TYPE: Kiosks | [optional] [default to null]
**itemComponents** | [**Object**](Object.md) | Information about instanced items across all returned characters, keyed by the item&#39;s instance ID.  COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.] | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


