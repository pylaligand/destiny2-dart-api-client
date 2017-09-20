part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyItemInstanceComponent {
  
  @Property(name: 'data')
  DestinyEntitiesItemsDestinyItemInstanceComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyItemInstanceComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyItemInstanceComponent[data=$data, privacy=$privacy, ]';
  }
}

