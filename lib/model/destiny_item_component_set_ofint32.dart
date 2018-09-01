part of destiny2_api.api;

@Entity()
class DestinyItemComponentSetOfint32 {
  
  @Property(name: 'instances')
  DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent instances = null;
  

  @Property(name: 'perks')
  DictionaryComponentResponseOfint32AndDestinyItemPerksComponent perks = null;
  

  @Property(name: 'renderData')
  DictionaryComponentResponseOfint32AndDestinyItemRenderComponent renderData = null;
  

  @Property(name: 'stats')
  DictionaryComponentResponseOfint32AndDestinyItemStatsComponent stats = null;
  

  @Property(name: 'sockets')
  DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent sockets = null;
  

  @Property(name: 'talentGrids')
  DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent talentGrids = null;
  

  @Property(name: 'plugStates')
  DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent plugStates = null;
  

  @Property(name: 'objectives')
  DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent objectives = null;
  
  DestinyItemComponentSetOfint32();

  @override
  String toString()  {
    return 'DestinyItemComponentSetOfint32[instances=$instances, perks=$perks, renderData=$renderData, stats=$stats, sockets=$sockets, talentGrids=$talentGrids, plugStates=$plugStates, objectives=$objectives, ]';
  }
}

