part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyItemTalentGridComponent {
  
  @Property(name: 'data')
  DestinyEntitiesItemsDestinyItemTalentGridComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyItemTalentGridComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyItemTalentGridComponent[data=$data, privacy=$privacy, ]';
  }
}

