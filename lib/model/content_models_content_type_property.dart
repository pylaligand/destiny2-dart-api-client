part of destiny2_api.api;

@Entity()
class ContentModelsContentTypeProperty {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'readableName')
  String readableName = null;
  

  @Property(name: 'value')
  String value = null;
  

  @Property(name: 'propertyDescription')
  String propertyDescription = null;
  

  @Property(name: 'localizable')
  bool localizable = null;
  

  @Property(name: 'fallback')
  bool fallback = null;
  

  @Property(name: 'enabled')
  bool enabled = null;
  

  @Property(name: 'order')
  int order = null;
  

  @Property(name: 'visible')
  bool visible = null;
  

  @Property(name: 'isTitle')
  bool isTitle = null;
  

  @Property(name: 'required')
  bool required = null;
  

  @Property(name: 'maxLength')
  int maxLength = null;
  

  @Property(name: 'maxByteLength')
  int maxByteLength = null;
  

  @Property(name: 'maxFileSize')
  int maxFileSize = null;
  

  @Property(name: 'regexp')
  String regexp = null;
  

  @Property(name: 'validateAs')
  String validateAs = null;
  

  @Property(name: 'rssAttribute')
  String rssAttribute = null;
  

  @Property(name: 'visibleDependency')
  String visibleDependency = null;
  

  @Property(name: 'visibleOn')
  String visibleOn = null;
  

  @Property(name: 'datatype')
  ContentModelsContentPropertyDataTypeEnum datatype = null;
  

  @Property(name: 'attributes')
  Map<String, String> attributes = {};
  

  @Property(name: 'childProperties')
  List<ContentModelsContentTypeProperty> childProperties = [];
  

  @Property(name: 'contentTypeAllowed')
  String contentTypeAllowed = null;
  

  @Property(name: 'bindToProperty')
  String bindToProperty = null;
  

  @Property(name: 'boundRegex')
  String boundRegex = null;
  

  @Property(name: 'representationSelection')
  Map<String, String> representationSelection = {};
  

  @Property(name: 'defaultValues')
  List<ContentModelsContentTypeDefaultValue> defaultValues = [];
  

  @Property(name: 'isExternalAllowed')
  bool isExternalAllowed = null;
  

  @Property(name: 'propertySection')
  String propertySection = null;
  

  @Property(name: 'weight')
  int weight = null;
  

  @Property(name: 'entitytype')
  String entitytype = null;
  

  @Property(name: 'isCombo')
  bool isCombo = null;
  

  @Property(name: 'suppressProperty')
  bool suppressProperty = null;
  

  @Property(name: 'legalContentTypes')
  List<String> legalContentTypes = [];
  

  @Property(name: 'representationValidationString')
  String representationValidationString = null;
  

  @Property(name: 'minWidth')
  int minWidth = null;
  

  @Property(name: 'maxWidth')
  int maxWidth = null;
  

  @Property(name: 'minHeight')
  int minHeight = null;
  

  @Property(name: 'maxHeight')
  int maxHeight = null;
  

  @Property(name: 'isVideo')
  bool isVideo = null;
  

  @Property(name: 'isImage')
  bool isImage = null;
  
  ContentModelsContentTypeProperty();

  @override
  String toString()  {
    return 'ContentModelsContentTypeProperty[name=$name, readableName=$readableName, value=$value, propertyDescription=$propertyDescription, localizable=$localizable, fallback=$fallback, enabled=$enabled, order=$order, visible=$visible, isTitle=$isTitle, required=$required, maxLength=$maxLength, maxByteLength=$maxByteLength, maxFileSize=$maxFileSize, regexp=$regexp, validateAs=$validateAs, rssAttribute=$rssAttribute, visibleDependency=$visibleDependency, visibleOn=$visibleOn, datatype=$datatype, attributes=$attributes, childProperties=$childProperties, contentTypeAllowed=$contentTypeAllowed, bindToProperty=$bindToProperty, boundRegex=$boundRegex, representationSelection=$representationSelection, defaultValues=$defaultValues, isExternalAllowed=$isExternalAllowed, propertySection=$propertySection, weight=$weight, entitytype=$entitytype, isCombo=$isCombo, suppressProperty=$suppressProperty, legalContentTypes=$legalContentTypes, representationValidationString=$representationValidationString, minWidth=$minWidth, maxWidth=$maxWidth, minHeight=$minHeight, maxHeight=$maxHeight, isVideo=$isVideo, isImage=$isImage, ]';
  }
}

