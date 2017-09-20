part of destiny2_api.api;

@Entity()
class EntitiesEntityActionResult {
  
  @Property(name: 'entityId')
  int entityId = null;
  

  @Property(name: 'result')
  ExceptionsPlatformErrorCodes result = null;
  
  EntitiesEntityActionResult();

  @override
  String toString()  {
    return 'EntitiesEntityActionResult[entityId=$entityId, result=$result, ]';
  }
}

