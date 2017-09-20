part of destiny2_api.api;

@Entity()
class IgnoresIgnoreResponse {
  
  @Property(name: 'isIgnored')
  bool isIgnored = null;
  

  @Property(name: 'ignoreFlags')
  IgnoresIgnoreStatus ignoreFlags = null;
  
  IgnoresIgnoreResponse();

  @override
  String toString()  {
    return 'IgnoresIgnoreResponse[isIgnored=$isIgnored, ignoreFlags=$ignoreFlags, ]';
  }
}

