part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyItemComponent {
  
  @Property(name: 'data')
  DestinyEntitiesItemsDestinyItemComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyItemComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyItemComponent[data=$data, privacy=$privacy, ]';
  }
}

