part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyItemRenderComponent {
  
  @Property(name: 'data')
  DestinyEntitiesItemsDestinyItemRenderComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyItemRenderComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyItemRenderComponent[data=$data, privacy=$privacy, ]';
  }
}

