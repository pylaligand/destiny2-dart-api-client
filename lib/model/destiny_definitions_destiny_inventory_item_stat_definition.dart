part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyInventoryItemStatDefinition {
  /* The hash for the DestinyStatDefinition representing this stat. */
  @Property(name: 'statHash')
  int statHash = null;
  
/* This value represents the stat value assuming the minimum possible roll but accounting for any mandatory bonuses that should be applied to the stat on item creation.  In Destiny 1, this was different from the \"minimum\" value because there were certain conditions where an item could be theoretically lower level/value than the initial roll.   In Destiny 2, this is not possible unless Talent Grids begin to be used again for these purposes or some other system change occurs... thus in practice, value and minimum should be the same in Destiny 2. Good riddance. */
  @Property(name: 'value')
  int value = null;
  
/* The minimum possible value for this stat that we think the item can roll. */
  @Property(name: 'minimum')
  int minimum = null;
  
/* The maximum possible value for this stat that we think the item can roll. */
  @Property(name: 'maximum')
  int maximum = null;
  
  DestinyDefinitionsDestinyInventoryItemStatDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyInventoryItemStatDefinition[statHash=$statHash, value=$value, minimum=$minimum, maximum=$maximum, ]';
  }
}

