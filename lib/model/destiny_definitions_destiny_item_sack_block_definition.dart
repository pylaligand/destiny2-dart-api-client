part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemSackBlockDefinition {
  /* A description of what will happen when you open the sack. As far as I can tell, this is blank currently. Unknown whether it will eventually be populated with useful info. */
  @Property(name: 'detailAction')
  String detailAction = null;
  
/* The localized name of the action being performed when you open the sack. */
  @Property(name: 'openAction')
  String openAction = null;
  

  @Property(name: 'selectItemCount')
  int selectItemCount = null;
  

  @Property(name: 'vendorSackType')
  String vendorSackType = null;
  

  @Property(name: 'openOnAcquire')
  bool openOnAcquire = null;
  
  DestinyDefinitionsDestinyItemSackBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemSackBlockDefinition[detailAction=$detailAction, openAction=$openAction, selectItemCount=$selectItemCount, vendorSackType=$vendorSackType, openOnAcquire=$openOnAcquire, ]';
  }
}

