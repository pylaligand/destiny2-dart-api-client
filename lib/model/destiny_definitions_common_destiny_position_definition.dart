part of destiny2_api.api;

@Entity()
class DestinyDefinitionsCommonDestinyPositionDefinition {
  
  @Property(name: 'x')
  int x = null;
  

  @Property(name: 'y')
  int y = null;
  

  @Property(name: 'z')
  int z = null;
  
  DestinyDefinitionsCommonDestinyPositionDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsCommonDestinyPositionDefinition[x=$x, y=$y, z=$z, ]';
  }
}

