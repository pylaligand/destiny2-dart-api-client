part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemSetBlockDefinition {
  /* A collection of hashes of set items, for items such as Quest Metadata items that possess this data. */
  @Property(name: 'itemList')
  List<DestinyDefinitionsDestinyItemSetBlockEntryDefinition> itemList = [];
  
/* If true, items in the set can only be added in increasing order, and adding an item will remove any previous item. For Quests, this is by necessity true. Only one quest step is present at a time, and previous steps are removed as you advance in the quest. */
  @Property(name: 'requireOrderedSetItemAdd')
  bool requireOrderedSetItemAdd = null;
  
/* If true, the UI should treat this quest as \"featured\" */
  @Property(name: 'setIsFeatured')
  bool setIsFeatured = null;
  
/* A string identifier we can use to attempt to identify the category of the Quest. */
  @Property(name: 'setType')
  String setType = null;
  
  DestinyDefinitionsDestinyItemSetBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemSetBlockDefinition[itemList=$itemList, requireOrderedSetItemAdd=$requireOrderedSetItemAdd, setIsFeatured=$setIsFeatured, setType=$setType, ]';
  }
}

