part of destiny2_api.api;

@Entity()
class DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition {
  /* The hash identifier of the Plug Category to compare against the plug item's plug.plugCategoryHash.  Note that this does NOT relate to any Definition in itself, it is only used for comparison purposes. */
  @Property(name: 'categoryHash')
  int categoryHash = null;
  
/* The string identifier for the category, which is here mostly for debug purposes. */
  @Property(name: 'categoryIdentifier')
  String categoryIdentifier = null;
  
  DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition[categoryHash=$categoryHash, categoryIdentifier=$categoryIdentifier, ]';
  }
}

