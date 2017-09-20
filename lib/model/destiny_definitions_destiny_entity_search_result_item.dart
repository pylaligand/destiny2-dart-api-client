part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyEntitySearchResultItem {
  /* The hash identifier of the entity. You will use this to look up the DestinyDefinition relevant for the entity found. */
  @Property(name: 'hash')
  int hash = null;
  
/* The type of entity, returned as a string matching the DestinyDefinition's contract class name. You'll have to have your own mapping from class names to actually looking up those definitions in the manifest databases. */
  @Property(name: 'entityType')
  String entityType = null;
  
/* Basic display properties on the entity, so you don't have to look up the definition to show basic results for the item. */
  @Property(name: 'displayProperties')
  Object displayProperties = null;
  
/* The ranking value for sorting that we calculated using our relevance formula. This will hopefully get better with time and iteration. */
  @Property(name: 'weight')
  double weight = null;
  
  DestinyDefinitionsDestinyEntitySearchResultItem();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyEntitySearchResultItem[hash=$hash, entityType=$entityType, displayProperties=$displayProperties, weight=$weight, ]';
  }
}

