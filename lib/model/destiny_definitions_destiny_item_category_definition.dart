part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemCategoryDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* If True, this category should be visible in UI. Sometimes we make categories that we don't think are interesting externally. It's up to you if you want to skip on showing them. */
  @Property(name: 'visible')
  bool visible = null;
  
/* If True, this category has been deprecated: it may have no items left, or there may be only legacy items that remain in it which are no longer relevant to the game. */
  @Property(name: 'deprecated')
  bool deprecated = null;
  
/* A shortened version of the title. The reason why we have this is because the Armory in German had titles that were too long to display in our UI, so these were localized abbreviated versions of those categories. The property still exists today, even though the Armory doesn't exist for D2... yet. */
  @Property(name: 'shortTitle')
  String shortTitle = null;
  
/* The janky regular expression we used against the item type to try and discern whether the item belongs to this category. */
  @Property(name: 'itemTypeRegex')
  String itemTypeRegex = null;
  
/* If the item is a plug, this is the identifier we expect to find associated with it if it is in this category. */
  @Property(name: 'plugCategoryIdentifier')
  String plugCategoryIdentifier = null;
  
/* If the item type matches this janky regex, it does *not* belong to this category. */
  @Property(name: 'itemTypeRegexNot')
  String itemTypeRegexNot = null;
  
/* If the item belongs to this bucket, it does belong to this category. */
  @Property(name: 'originBucketIdentifier')
  String originBucketIdentifier = null;
  
/* If an item belongs to this category, it will also receive this item type. This is now how DestinyItemType is populated for items: it used to be an even jankier process, but that's a story that requires more alcohol. */
  @Property(name: 'grantDestinyItemType')
  DestinyDestinyItemType grantDestinyItemType = null;
  
/* If an item belongs to this category, it will also receive this subtype enum value.  I know what you're thinking - what if it belongs to multiple categories that provide sub-types?  The last one processed wins, as is the case with all of these \"grant\" enums. Now you can see one reason why we moved away from these enums... but they're so convenient when they work, aren't they? */
  @Property(name: 'grantDestinySubType')
  DestinyDestinyItemSubType grantDestinySubType = null;
  
/* If an item belongs to this category, it will also get this class restriction enum value.  See the other \"grant\"-prefixed properties on this definition for my color commentary. */
  @Property(name: 'grantDestinyClass')
  DestinyDestinyClass grantDestinyClass = null;
  
/* If this category is a \"parent\" category of other categories, those children will have their hashes listed in rendering order here, and can be looked up using these hashes against DestinyItemCategoryDefinition.  In this way, you can build up a visual hierarchy of item categories. That's what we did, and you can do it too. I believe in you. Yes, you, Carl.  (I hope someone named Carl reads this someday) */
  @Property(name: 'groupedCategoryHashes')
  List<int> groupedCategoryHashes = [];
  
/* All item category hashes of \"parent\" categories: categories that contain this as a child through the hierarchy of groupedCategoryHashes. It's a bit redundant, but having this child-centric list speeds up some calculations. */
  @Property(name: 'parentCategoryHashes')
  List<int> parentCategoryHashes = [];
  
/* If true, this category is only used for grouping, and should not be evaluated with its own checks. Rather, the item only has this category if it has one of its child categories. */
  @Property(name: 'groupCategoryOnly')
  bool groupCategoryOnly = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyItemCategoryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemCategoryDefinition[displayProperties=$displayProperties, visible=$visible, deprecated=$deprecated, shortTitle=$shortTitle, itemTypeRegex=$itemTypeRegex, plugCategoryIdentifier=$plugCategoryIdentifier, itemTypeRegexNot=$itemTypeRegexNot, originBucketIdentifier=$originBucketIdentifier, grantDestinyItemType=$grantDestinyItemType, grantDestinySubType=$grantDestinySubType, grantDestinyClass=$grantDestinyClass, groupedCategoryHashes=$groupedCategoryHashes, parentCategoryHashes=$parentCategoryHashes, groupCategoryOnly=$groupCategoryOnly, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

