part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyItemRenderComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemRenderComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyItemRenderComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyItemRenderComponent[data=$data, privacy=$privacy, ]';
  }
}

