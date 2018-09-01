part of destiny2_api.api;

@Entity()
class DestinyDestinyComponentType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyComponentType._internal(this.value);

  /// Represents the possible components that can be returned from Destiny \"Get\" calls such as GetProfile, GetCharacter, GetVendor etc...  When making one of these requests, you will pass one or more of these components as a comma separated list in the \"?components=\" querystring parameter. For instance, if you want baseline Profile data, Character Data, and character progressions, you would pass \"?components=Profiles,Characters,CharacterProgressions\" You may use either the numerical or string values.
  static const DestinyDestinyComponentType none = const DestinyDestinyComponentType._internal(0);
  /// Profiles is the most basic component, only relevant when calling GetProfile. This returns basic information about the profile, which is almost nothing: a list of characterIds, some information about the last time you logged in, and that most sobering statistic: how long you've played.
  static const DestinyDestinyComponentType profiles = const DestinyDestinyComponentType._internal(100);
  /// Only applicable for GetProfile, this will return information about receipts for refundable vendor items.
  static const DestinyDestinyComponentType vendorReceipts = const DestinyDestinyComponentType._internal(101);
  /// Asking for this will get you the profile-level inventories, such as your Vault buckets (yeah, the Vault is really inventory buckets located on your Profile)
  static const DestinyDestinyComponentType profileInventories = const DestinyDestinyComponentType._internal(102);
  /// This will get you a summary of items on your Profile that we consider to be "currencies", such as Glimmer. I mean, if there's Glimmer in Destiny 2. I didn't say there was Glimmer.
  static const DestinyDestinyComponentType profileCurrencies = const DestinyDestinyComponentType._internal(103);
  /// This will get you any progression-related information that exists on a Profile-wide level, across all characters.
  static const DestinyDestinyComponentType profileProgression = const DestinyDestinyComponentType._internal(104);
  /// This will get you summary info about each of the characters in the profile.
  static const DestinyDestinyComponentType characters = const DestinyDestinyComponentType._internal(200);
  /// This will get you information about any non-equipped items on the character or character(s) in question, if you're allowed to see it. You have to either be authenticated as that user, or that user must allow anonymous viewing of their non-equipped items in Bungie.Net settings to actually get results.
  static const DestinyDestinyComponentType characterInventories = const DestinyDestinyComponentType._internal(201);
  /// This will get you information about the progression (faction, experience, etc... "levels") relevant to each character, if you are the currently authenticated user or the user has elected to allow anonymous viewing of its progression info.
  static const DestinyDestinyComponentType characterProgressions = const DestinyDestinyComponentType._internal(202);
  /// This will get you just enough information to be able to render the character in 3D if you have written a 3D rendering library for Destiny Characters, or "borrowed" ours. It's okay, I won't tell anyone if you're using it. I'm no snitch. (actually, we don't care if you use it - go to town)
  static const DestinyDestinyComponentType characterRenderData = const DestinyDestinyComponentType._internal(203);
  /// This will return info about activities that a user can see and gating on it, if you are the currently authenticated user or the user has elected to allow anonymous viewing of its progression info. Note that the data returned by this can be unfortunately problematic and relatively unreliable in some cases. We'll eventually work on making it more consistently reliable.
  static const DestinyDestinyComponentType characterActivities = const DestinyDestinyComponentType._internal(204);
  /// This will return info about the equipped items on the character(s). Everyone can see this.
  static const DestinyDestinyComponentType characterEquipment = const DestinyDestinyComponentType._internal(205);
  /// This will return basic info about instanced items - whether they can be equipped, their tracked status, and some info commonly needed in many places (current damage type, primary stat value, etc)
  static const DestinyDestinyComponentType itemInstances = const DestinyDestinyComponentType._internal(300);
  /// Items can have Objectives (DestinyObjectiveDefinition) bound to them. If they do, this will return info for items that have such bound objectives.
  static const DestinyDestinyComponentType itemObjectives = const DestinyDestinyComponentType._internal(301);
  /// Items can have perks (DestinyPerkDefinition). If they do, this will return info for what perks are active on items.
  static const DestinyDestinyComponentType itemPerks = const DestinyDestinyComponentType._internal(302);
  /// If you just want to render the weapon, this is just enough info to do that rendering.
  static const DestinyDestinyComponentType itemRenderData = const DestinyDestinyComponentType._internal(303);
  /// Items can have stats, like rate of fire. Asking for this component will return requested item's stats if they have stats.
  static const DestinyDestinyComponentType itemStats = const DestinyDestinyComponentType._internal(304);
  /// Items can have sockets, where plugs can be inserted. Asking for this component will return all info relevant to the sockets on items that have them.
  static const DestinyDestinyComponentType itemSockets = const DestinyDestinyComponentType._internal(305);
  /// Items can have talent grids, though that matters a lot less frequently than it used to. Asking for this component will return all relevant info about activated Nodes and Steps on this talent grid, like the good ol' days.
  static const DestinyDestinyComponentType itemTalentGrids = const DestinyDestinyComponentType._internal(306);
  /// Items that *aren't* instanced still have important information you need to know: how much of it you have, the itemHash so you can look up their DestinyInventoryItemDefinition, whether they're locked, etc... Both instanced and non-instanced items will have these properties. You will get this automatically with Inventory components - you only need to pass this when calling GetItem on a specific item.
  static const DestinyDestinyComponentType itemCommonData = const DestinyDestinyComponentType._internal(307);
  /// Items that are "Plugs" can be inserted into sockets. This returns statuses about those plugs and why they can/can't be inserted. I hear you giggling, there's nothing funny about inserting plugs. Get your head out of the gutter and pay attention!
  static const DestinyDestinyComponentType itemPlugStates = const DestinyDestinyComponentType._internal(308);
  /// When obtaining vendor information, this will return summary information about the Vendor or Vendors being returned.
  static const DestinyDestinyComponentType vendors = const DestinyDestinyComponentType._internal(400);
  /// When obtaining vendor information, this will return information about the categories of items provided by the Vendor.
  static const DestinyDestinyComponentType vendorCategories = const DestinyDestinyComponentType._internal(401);
  /// When obtaining vendor information, this will return the information about items being sold by the Vendor.
  static const DestinyDestinyComponentType vendorSales = const DestinyDestinyComponentType._internal(402);
  /// Asking for this component will return you the account's Kiosk statuses: that is, what items have been filled out/acquired. But only if you are the currently authenticated user or the user has elected to allow anonymous viewing of its progression info.
  static const DestinyDestinyComponentType kiosks = const DestinyDestinyComponentType._internal(500);
  /// A "shortcut" component that will give you all of the item hashes/quantities of items that the requested character can use to determine if an action (purchasing, socket insertion) has the required currency. (recall that all currencies are just items, and that some vendor purchases require items that you might not traditionally consider to be a "currency", like plugs/mods!)
  static const DestinyDestinyComponentType currencyLookups = const DestinyDestinyComponentType._internal(600);
  /// Returns summary status information about all "Presentation Nodes". See DestinyPresentationNodeDefinition for more details, but the gist is that these are entities used by the game UI to bucket Collectibles and Records into a hierarchy of categories. You may ask for and use this data if you want to perform similar bucketing in your own UI: or you can skip it and roll your own.
  static const DestinyDestinyComponentType presentationNodes = const DestinyDestinyComponentType._internal(700);
  /// Returns summary status information about all "Collectibles". These are records of what items you've discovered while playing Destiny, and some other basic information. For detailed information, you will have to call a separate endpoint devoted to the purpose.
  static const DestinyDestinyComponentType collectibles = const DestinyDestinyComponentType._internal(800);
  /// Returns summary status information about all "Records" (also known in the game as "Triumphs". I know, it's confusing because there's also "Moments of Triumph" that will themselves be represented as "Triumphs.")
  static const DestinyDestinyComponentType records = const DestinyDestinyComponentType._internal(900);
}

class DestinyDestinyComponentTypeTypeTransformer extends TypeTransformer<DestinyDestinyComponentType> {

  @override
  dynamic encode(DestinyDestinyComponentType data) {
    return data.value;
  }

  @override
  DestinyDestinyComponentType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyComponentType.none;
      case 100: return DestinyDestinyComponentType.profiles;
      case 101: return DestinyDestinyComponentType.vendorReceipts;
      case 102: return DestinyDestinyComponentType.profileInventories;
      case 103: return DestinyDestinyComponentType.profileCurrencies;
      case 104: return DestinyDestinyComponentType.profileProgression;
      case 200: return DestinyDestinyComponentType.characters;
      case 201: return DestinyDestinyComponentType.characterInventories;
      case 202: return DestinyDestinyComponentType.characterProgressions;
      case 203: return DestinyDestinyComponentType.characterRenderData;
      case 204: return DestinyDestinyComponentType.characterActivities;
      case 205: return DestinyDestinyComponentType.characterEquipment;
      case 300: return DestinyDestinyComponentType.itemInstances;
      case 301: return DestinyDestinyComponentType.itemObjectives;
      case 302: return DestinyDestinyComponentType.itemPerks;
      case 303: return DestinyDestinyComponentType.itemRenderData;
      case 304: return DestinyDestinyComponentType.itemStats;
      case 305: return DestinyDestinyComponentType.itemSockets;
      case 306: return DestinyDestinyComponentType.itemTalentGrids;
      case 307: return DestinyDestinyComponentType.itemCommonData;
      case 308: return DestinyDestinyComponentType.itemPlugStates;
      case 400: return DestinyDestinyComponentType.vendors;
      case 401: return DestinyDestinyComponentType.vendorCategories;
      case 402: return DestinyDestinyComponentType.vendorSales;
      case 500: return DestinyDestinyComponentType.kiosks;
      case 600: return DestinyDestinyComponentType.currencyLookups;
      case 700: return DestinyDestinyComponentType.presentationNodes;
      case 800: return DestinyDestinyComponentType.collectibles;
      case 900: return DestinyDestinyComponentType.records;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

