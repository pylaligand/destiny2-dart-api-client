part of destiny2_api.api;

@Entity()
class ContentModelsContentTypeDefaultValue {
  
  @Property(name: 'whenClause')
  String whenClause = null;
  

  @Property(name: 'whenValue')
  String whenValue = null;
  

  @Property(name: 'defaultValue')
  String defaultValue = null;
  
  ContentModelsContentTypeDefaultValue();

  @override
  String toString()  {
    return 'ContentModelsContentTypeDefaultValue[whenClause=$whenClause, whenValue=$whenValue, defaultValue=$defaultValue, ]';
  }
}

