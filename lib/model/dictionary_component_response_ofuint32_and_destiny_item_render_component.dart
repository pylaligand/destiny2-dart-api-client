part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemRenderComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent[data=$data, privacy=$privacy, ]';
  }
}

