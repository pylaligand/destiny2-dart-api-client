part of destiny2_api.api;

@Entity()
class DestinyItemComponentSetOfint64 {
  
  @Property(name: 'instances')
  DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent instances = null;
  

  @Property(name: 'perks')
  DictionaryComponentResponseOfint64AndDestinyItemPerksComponent perks = null;
  

  @Property(name: 'renderData')
  DictionaryComponentResponseOfint64AndDestinyItemRenderComponent renderData = null;
  

  @Property(name: 'stats')
  DictionaryComponentResponseOfint64AndDestinyItemStatsComponent stats = null;
  

  @Property(name: 'sockets')
  DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent sockets = null;
  

  @Property(name: 'talentGrids')
  DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent talentGrids = null;
  

  @Property(name: 'plugStates')
  DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent plugStates = null;
  

  @Property(name: 'objectives')
  DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent objectives = null;
  
  DestinyItemComponentSetOfint64();

  @override
  String toString()  {
    return 'DestinyItemComponentSetOfint64[instances=$instances, perks=$perks, renderData=$renderData, stats=$stats, sockets=$sockets, talentGrids=$talentGrids, plugStates=$plugStates, objectives=$objectives, ]';
  }
}

