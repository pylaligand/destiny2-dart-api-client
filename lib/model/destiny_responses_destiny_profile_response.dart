part of destiny2_api.api;

@Entity()
class DestinyResponsesDestinyProfileResponse {
  /* Recent, refundable purchases you have made from vendors. When will you use it? Couldn't say...  COMPONENT TYPE: VendorReceipts */
  @Property(name: 'vendorReceipts')
  SingleComponentResponseOfDestinyVendorReceiptsComponent vendorReceipts = null;
  
/* The profile-level inventory of the Destiny Profile.  COMPONENT TYPE: ProfileInventories */
  @Property(name: 'profileInventory')
  SingleComponentResponseOfDestinyInventoryComponent profileInventory = null;
  
/* The profile-level currencies owned by the Destiny Profile.  COMPONENT TYPE: ProfileCurrencies */
  @Property(name: 'profileCurrencies')
  SingleComponentResponseOfDestinyInventoryComponent profileCurrencies = null;
  
/* The basic information about the Destiny Profile (formerly \"Account\").  COMPONENT TYPE: Profiles */
  @Property(name: 'profile')
  SingleComponentResponseOfDestinyProfileComponent profile = null;
  
/* Items available from Kiosks that are available Profile-wide (i.e. across all characters)  This component returns information about what Kiosk items are available to you on a *Profile* level. It is theoretically possible for Kiosks to have items gated by specific Character as well. If you ever have those, you will find them on the characterKiosks property.  COMPONENT TYPE: Kiosks */
  @Property(name: 'profileKiosks')
  SingleComponentResponseOfDestinyKiosksComponent profileKiosks = null;
  
/* Basic information about each character, keyed by the CharacterId.  COMPONENT TYPE: Characters */
  @Property(name: 'characters')
  DictionaryComponentResponseOfint64AndDestinyCharacterComponent characters = null;
  
/* The character-level non-equipped inventory items, keyed by the Character's Id.  COMPONENT TYPE: CharacterInventories */
  @Property(name: 'characterInventories')
  DictionaryComponentResponseOfint64AndDestinyInventoryComponent characterInventories = null;
  
/* Character-level progression data, keyed by the Character's Id.  COMPONENT TYPE: CharacterProgressions */
  @Property(name: 'characterProgressions')
  DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent characterProgressions = null;
  
/* Character rendering data - a minimal set of info needed to render a character in 3D - keyed by the Character's Id.  COMPONENT TYPE: CharacterRenderData */
  @Property(name: 'characterRenderData')
  DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent characterRenderData = null;
  
/* Character activity data - the activities available to this character and its status, keyed by the Character's Id.  COMPONENT TYPE: CharacterActivities */
  @Property(name: 'characterActivities')
  DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent characterActivities = null;
  
/* The character's equipped items, keyed by the Character's Id.  COMPONENT TYPE: CharacterEquipment */
  @Property(name: 'characterEquipment')
  DictionaryComponentResponseOfint64AndDestinyInventoryComponent characterEquipment = null;
  
/* Items available from Kiosks that are available to a specific character as opposed to the account as a whole. It must be combined with data from the profileKiosks property to get a full picture of the character's available items to check out of a kiosk.  This component returns information about what Kiosk items are available to you on a *Character* level. Usually, kiosk items will be earned for the entire Profile (all characters) at once. To find those, look in the profileKiosks property.  COMPONENT TYPE: Kiosks */
  @Property(name: 'characterKiosks')
  DictionaryComponentResponseOfint64AndDestinyKiosksComponent characterKiosks = null;
  
/* Information about instanced items across all returned characters, keyed by the item's instance ID.  COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.] */
  @Property(name: 'itemComponents')
  DestinyItemComponentSetOfint64 itemComponents = null;
  
  DestinyResponsesDestinyProfileResponse();

  @override
  String toString()  {
    return 'DestinyResponsesDestinyProfileResponse[vendorReceipts=$vendorReceipts, profileInventory=$profileInventory, profileCurrencies=$profileCurrencies, profile=$profile, profileKiosks=$profileKiosks, characters=$characters, characterInventories=$characterInventories, characterProgressions=$characterProgressions, characterRenderData=$characterRenderData, characterActivities=$characterActivities, characterEquipment=$characterEquipment, characterKiosks=$characterKiosks, itemComponents=$itemComponents, ]';
  }
}

