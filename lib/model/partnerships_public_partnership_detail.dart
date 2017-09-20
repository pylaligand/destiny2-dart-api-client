part of destiny2_api.api;

@Entity()
class PartnershipsPublicPartnershipDetail {
  
  @Property(name: 'partnerType')
  PartnershipsPartnershipType partnerType = null;
  

  @Property(name: 'identifier')
  String identifier = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'icon')
  String icon = null;
  
  PartnershipsPublicPartnershipDetail();

  @override
  String toString()  {
    return 'PartnershipsPublicPartnershipDetail[partnerType=$partnerType, identifier=$identifier, name=$name, icon=$icon, ]';
  }
}

