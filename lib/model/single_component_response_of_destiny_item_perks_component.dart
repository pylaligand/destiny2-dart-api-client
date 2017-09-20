part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyItemPerksComponent {
  
  @Property(name: 'data')
  DestinyEntitiesItemsDestinyItemPerksComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyItemPerksComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyItemPerksComponent[data=$data, privacy=$privacy, ]';
  }
}

