part of destiny2_api.api;

@Entity()
class ContentContentItemPublicContract {
  
  @Property(name: 'contentId')
  int contentId = null;
  

  @Property(name: 'cType')
  String cType = null;
  

  @Property(name: 'cmsPath')
  String cmsPath = null;
  

  @Property(name: 'creationDate')
  DateTime creationDate = null;
  

  @Property(name: 'modifyDate')
  DateTime modifyDate = null;
  

  @Property(name: 'allowComments')
  bool allowComments = null;
  

  @Property(name: 'hasAgeGate')
  bool hasAgeGate = null;
  

  @Property(name: 'minimumAge')
  int minimumAge = null;
  

  @Property(name: 'ratingImagePath')
  String ratingImagePath = null;
  

  @Property(name: 'author')
  UserGeneralUser author = null;
  

  @Property(name: 'autoEnglishPropertyFallback')
  bool autoEnglishPropertyFallback = null;
  
/* Firehose content is really a collection of metadata and \"properties\", which are the potentially-but-not-strictly localizable data that comprises the meat of whatever content is being shown.  As Cole Porter would have crooned, \"Anything Goes\" with Firehose properties. They are most often strings, but they can theoretically be anything. They are JSON encoded, and could be JSON structures, simple strings, numbers etc... The Content Type of the item (cType) will describe the properties, and thus how they ought to be deserialized. */
  @Property(name: 'properties')
  Map<String, Object> properties = {};
  

  @Property(name: 'representations')
  List<ContentContentRepresentation> representations = [];
  

  @Property(name: 'tags')
  List<String> tags = [];
  

  @Property(name: 'commentSummary')
  ContentCommentSummary commentSummary = null;
  
  ContentContentItemPublicContract();

  @override
  String toString()  {
    return 'ContentContentItemPublicContract[contentId=$contentId, cType=$cType, cmsPath=$cmsPath, creationDate=$creationDate, modifyDate=$modifyDate, allowComments=$allowComments, hasAgeGate=$hasAgeGate, minimumAge=$minimumAge, ratingImagePath=$ratingImagePath, author=$author, autoEnglishPropertyFallback=$autoEnglishPropertyFallback, properties=$properties, representations=$representations, tags=$tags, commentSummary=$commentSummary, ]';
  }
}

