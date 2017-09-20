part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyItemSocketsComponent {
  
  @Property(name: 'data')
  DestinyEntitiesItemsDestinyItemSocketsComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyItemSocketsComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyItemSocketsComponent[data=$data, privacy=$privacy, ]';
  }
}

