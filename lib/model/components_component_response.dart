part of destiny2_api.api;

@Entity()
class ComponentsComponentResponse {
  
  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  ComponentsComponentResponse();

  @override
  String toString()  {
    return 'ComponentsComponentResponse[privacy=$privacy, ]';
  }
}

