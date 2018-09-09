part of destiny2_api.api;

@Entity()
class DestinyItemComponentSetOfuint32 {
  
  @Property(name: 'instances')
  DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent instances = null;
  

  @Property(name: 'perks')
  DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent perks = null;
  

  @Property(name: 'renderData')
  DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent renderData = null;
  

  @Property(name: 'stats')
  DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent stats = null;
  

  @Property(name: 'sockets')
  DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent sockets = null;
  

  @Property(name: 'talentGrids')
  DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent talentGrids = null;
  

  @Property(name: 'plugStates')
  DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent plugStates = null;
  

  @Property(name: 'objectives')
  DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent objectives = null;
  
  DestinyItemComponentSetOfuint32();

  @override
  String toString()  {
    return 'DestinyItemComponentSetOfuint32[instances=$instances, perks=$perks, renderData=$renderData, stats=$stats, sockets=$sockets, talentGrids=$talentGrids, plugStates=$plugStates, objectives=$objectives, ]';
  }
}

