part of destiny2_api.api;

@Entity()
class ContentModelsContentTypeDescription {
  
  @Property(name: 'cType')
  String cType = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'contentDescription')
  String contentDescription = null;
  

  @Property(name: 'previewImage')
  String previewImage = null;
  

  @Property(name: 'priority')
  int priority = null;
  

  @Property(name: 'reminder')
  String reminder = null;
  

  @Property(name: 'properties')
  List<ContentModelsContentTypeProperty> properties = [];
  

  @Property(name: 'tagMetadata')
  List<ContentModelsTagMetadataDefinition> tagMetadata = [];
  

  @Property(name: 'tagMetadataItems')
  Map<String, ContentModelsTagMetadataItem> tagMetadataItems = {};
  

  @Property(name: 'usageExamples')
  List<String> usageExamples = [];
  

  @Property(name: 'showInContentEditor')
  bool showInContentEditor = null;
  

  @Property(name: 'typeOf')
  String typeOf = null;
  

  @Property(name: 'bindIdentifierToProperty')
  String bindIdentifierToProperty = null;
  

  @Property(name: 'boundRegex')
  String boundRegex = null;
  

  @Property(name: 'forceIdentifierBinding')
  bool forceIdentifierBinding = null;
  

  @Property(name: 'allowComments')
  bool allowComments = null;
  

  @Property(name: 'autoEnglishPropertyFallback')
  bool autoEnglishPropertyFallback = null;
  

  @Property(name: 'bulkUploadable')
  bool bulkUploadable = null;
  

  @Property(name: 'previews')
  List<ContentModelsContentPreview> previews = [];
  

  @Property(name: 'suppressCmsPath')
  bool suppressCmsPath = null;
  

  @Property(name: 'propertySections')
  List<ContentModelsContentTypePropertySection> propertySections = [];
  
  ContentModelsContentTypeDescription();

  @override
  String toString()  {
    return 'ContentModelsContentTypeDescription[cType=$cType, name=$name, contentDescription=$contentDescription, previewImage=$previewImage, priority=$priority, reminder=$reminder, properties=$properties, tagMetadata=$tagMetadata, tagMetadataItems=$tagMetadataItems, usageExamples=$usageExamples, showInContentEditor=$showInContentEditor, typeOf=$typeOf, bindIdentifierToProperty=$bindIdentifierToProperty, boundRegex=$boundRegex, forceIdentifierBinding=$forceIdentifierBinding, allowComments=$allowComments, autoEnglishPropertyFallback=$autoEnglishPropertyFallback, bulkUploadable=$bulkUploadable, previews=$previews, suppressCmsPath=$suppressCmsPath, propertySections=$propertySections, ]';
  }
}

