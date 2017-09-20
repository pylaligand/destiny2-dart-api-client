part of destiny2_api.api;

@Entity()
class UserModelsUserAlias {
  
  @Property(name: 'cachePrefix')
  String cachePrefix = null;
  
  UserModelsUserAlias();

  @override
  String toString()  {
    return 'UserModelsUserAlias[cachePrefix=$cachePrefix, ]';
  }
}

