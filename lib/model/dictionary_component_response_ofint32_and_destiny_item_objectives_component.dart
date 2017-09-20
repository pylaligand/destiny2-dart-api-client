part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemObjectivesComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent[data=$data, privacy=$privacy, ]';
  }
}

