part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemObjectivesComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent[data=$data, privacy=$privacy, ]';
  }
}

