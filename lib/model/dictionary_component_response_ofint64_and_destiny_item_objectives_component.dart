part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemObjectivesComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent[data=$data, privacy=$privacy, ]';
  }
}

