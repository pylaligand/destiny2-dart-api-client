part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyInventoryComponent {
  
  @Property(name: 'data')
  DestinyEntitiesInventoryDestinyInventoryComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyInventoryComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyInventoryComponent[data=$data, privacy=$privacy, ]';
  }
}

