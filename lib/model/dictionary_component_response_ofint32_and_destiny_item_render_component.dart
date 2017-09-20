part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint32AndDestinyItemRenderComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemRenderComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint32AndDestinyItemRenderComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint32AndDestinyItemRenderComponent[data=$data, privacy=$privacy, ]';
  }
}

