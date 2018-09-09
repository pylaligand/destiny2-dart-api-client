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
  
/* When sockets refer to reusable Plug Sets (see DestinyPlugSetDefinition for more info), this is the set of plugs and their states that are profile-scoped.  This comes back with ItemSockets, as it is needed for a complete picture of the sockets on requested items.  COMPONENT TYPE: ItemSockets */
  @Property(name: 'profilePlugSets')
  SingleComponentResponseOfDestinyPlugSetsComponent profilePlugSets = null;
  
/* When we have progression information - such as Checklists - that may apply profile-wide, it will be returned here rather than in the per-character progression data.  COMPONENT TYPE: ProfileProgression */
  @Property(name: 'profileProgression')
  SingleComponentResponseOfDestinyProfileProgressionComponent profileProgression = null;
  
/* COMPONENT TYPE: PresentationNodes */
  @Property(name: 'profilePresentationNodes')
  SingleComponentResponseOfDestinyPresentationNodesComponent profilePresentationNodes = null;
  
/* COMPONENT TYPE: Records */
  @Property(name: 'profileRecords')
  SingleComponentResponseOfDestinyProfileRecordsComponent profileRecords = null;
  
/* COMPONENT TYPE: Collectibles */
  @Property(name: 'profileCollectibles')
  SingleComponentResponseOfDestinyProfileCollectiblesComponent profileCollectibles = null;
  
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
  
/* When sockets refer to reusable Plug Sets (see DestinyPlugSetDefinition for more info), this is the set of plugs and their states, per character, that are character-scoped.  This comes back with ItemSockets, as it is needed for a complete picture of the sockets on requested items.  COMPONENT TYPE: ItemSockets */
  @Property(name: 'characterPlugSets')
  DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent characterPlugSets = null;
  
/* Do you ever get the feeling that a system was designed *too* flexibly? That it can be used in so many different ways that you end up being unable to provide an easy to use abstraction for the mess that's happening under the surface?  Let's talk about character-specific data that might be related to items without instances. These two statements are totally unrelated, I promise.  At some point during D2, it was decided that items - such as Bounties - could be given to characters and *not* have instance data, but that *could* display and even use relevant state information on your account and character.  Up to now, any item that had meaningful dependencies on character or account state had to be instanced, and thus \"itemComponents\" was all that you needed: it was keyed by item's instance IDs and provided the stateful information you needed inside.  Unfortunately, we don't live in such a magical world anymore. This is information held on a per-character basis about non-instanced items that the characters have in their inventory - or that reference character-specific state information even if it's in Account-level inventory - and the values related to that item's state in relation to the given character.  To give a concrete example, look at a Moments of Triumph bounty. They exist in a character's inventory, and show/care about a character's progression toward completing the bounty. But the bounty itself is a non-instanced item, like a mod or a currency. This returns that data for the characters who have the bounty in their inventory.  I'm not crying, you're crying Okay we're both crying but it's going to be okay I promise Actually I shouldn't promise that, I don't know if it's going to be okay */
  @Property(name: 'characterUninstancedItemComponents')
  Map<String, DestinyBaseItemComponentSetOfuint32> characterUninstancedItemComponents = {};
  
/* COMPONENT TYPE: PresentationNodes */
  @Property(name: 'characterPresentationNodes')
  DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent characterPresentationNodes = null;
  
/* COMPONENT TYPE: Records */
  @Property(name: 'characterRecords')
  DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent characterRecords = null;
  
/* COMPONENT TYPE: Collectibles */
  @Property(name: 'characterCollectibles')
  DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent characterCollectibles = null;
  
/* Information about instanced items across all returned characters, keyed by the item's instance ID.  COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.] */
  @Property(name: 'itemComponents')
  DestinyItemComponentSetOfint64 itemComponents = null;
  
/* A \"lookup\" convenience component that can be used to quickly check if the character has access to items that can be used for purchasing.  COMPONENT TYPE: CurrencyLookups */
  @Property(name: 'characterCurrencyLookups')
  DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent characterCurrencyLookups = null;
  
  DestinyResponsesDestinyProfileResponse();

  @override
  String toString()  {
    return 'DestinyResponsesDestinyProfileResponse[vendorReceipts=$vendorReceipts, profileInventory=$profileInventory, profileCurrencies=$profileCurrencies, profile=$profile, profileKiosks=$profileKiosks, profilePlugSets=$profilePlugSets, profileProgression=$profileProgression, profilePresentationNodes=$profilePresentationNodes, profileRecords=$profileRecords, profileCollectibles=$profileCollectibles, characters=$characters, characterInventories=$characterInventories, characterProgressions=$characterProgressions, characterRenderData=$characterRenderData, characterActivities=$characterActivities, characterEquipment=$characterEquipment, characterKiosks=$characterKiosks, characterPlugSets=$characterPlugSets, characterUninstancedItemComponents=$characterUninstancedItemComponents, characterPresentationNodes=$characterPresentationNodes, characterRecords=$characterRecords, characterCollectibles=$characterCollectibles, itemComponents=$itemComponents, characterCurrencyLookups=$characterCurrencyLookups, ]';
  }
}

