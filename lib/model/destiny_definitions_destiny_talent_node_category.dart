part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyTalentNodeCategory {
  /* Mostly just for debug purposes, but if you find it useful you can have it. This is BNet's manually created identifier for this category. */
  @Property(name: 'identifier')
  String identifier = null;
  
/* If true, we found the localized content in a related DestinyLoreDefinition instead of local BNet localization files. This is mostly for ease of my own future investigations. */
  @Property(name: 'isLoreDriven')
  bool isLoreDriven = null;
  
/* Will contain at least the \"name\", which will be the title of the category. We will likely not have description and an icon yet, but I'm going to keep my options open. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* The set of all hash identifiers for Talent Nodes (DestinyTalentNodeDefinition) in this Talent Grid that are part of this Category. */
  @Property(name: 'nodeHashes')
  List<int> nodeHashes = [];
  
  DestinyDefinitionsDestinyTalentNodeCategory();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyTalentNodeCategory[identifier=$identifier, isLoreDriven=$isLoreDriven, displayProperties=$displayProperties, nodeHashes=$nodeHashes, ]';
  }
}

