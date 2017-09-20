part of destiny2_api.api;

@Entity()
class TagsModelsContractsTagResponse {
  
  @Property(name: 'tagText')
  String tagText = null;
  

  @Property(name: 'ignoreStatus')
  IgnoresIgnoreResponse ignoreStatus = null;
  
  TagsModelsContractsTagResponse();

  @override
  String toString()  {
    return 'TagsModelsContractsTagResponse[tagText=$tagText, ignoreStatus=$ignoreStatus, ]';
  }
}

