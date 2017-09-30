part of destiny2_api.api;

@Entity()
class DestinyEntitiesItemsDestinyItemTalentGridComponent {
  /* Most items don't have useful talent grids anymore, but Builds in particular still do.  You can use this hash to lookup the DestinyTalentGridDefinition attached to this item, which will be crucial for understanding the node values on the item. */
  @Property(name: 'talentGridHash')
  int talentGridHash = null;
  
/* Detailed information about the individual nodes in the talent grid.  A node represents a single visual \"pip\" in the talent grid or Build detail view, though each node may have multiple \"steps\" which indicate the actual bonuses and visual representation of that node. */
  @Property(name: 'nodes')
  List<DestinyDestinyTalentNode> nodes = [];
  
/* Indicates whether the talent grid on this item is completed, and thus whether it should have a gold border around it.  Only will be true if the item actually *has* a talent grid, and only then if it is completed (i.e. every exclusive set has an activated node, and every non-exclusive set node has been activated) */
  @Property(name: 'isGridComplete')
  bool isGridComplete = null;
  
/* If the item has a progression, it will be detailed here. A progression means that the item can gain experience. Thresholds of experience are what determines whether and when a talent node can be activated. */
  @Property(name: 'gridProgression')
  DestinyDestinyProgression gridProgression = null;
  
  DestinyEntitiesItemsDestinyItemTalentGridComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesItemsDestinyItemTalentGridComponent[talentGridHash=$talentGridHash, nodes=$nodes, isGridComplete=$isGridComplete, gridProgression=$gridProgression, ]';
  }
}

