part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyItemObjectivesComponent {
  
  @Property(name: 'data')
  DestinyEntitiesItemsDestinyItemObjectivesComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyItemObjectivesComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyItemObjectivesComponent[data=$data, privacy=$privacy, ]';
  }
}

