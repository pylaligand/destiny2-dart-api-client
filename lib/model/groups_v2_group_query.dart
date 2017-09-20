part of destiny2_api.api;

@Entity()
class GroupsV2GroupQuery {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'groupType')
  GroupsV2GroupType groupType = null;
  

  @Property(name: 'creationDate')
  GroupsV2GroupDateRange creationDate = null;
  

  @Property(name: 'sortBy')
  GroupsV2GroupSortBy sortBy = null;
  

  @Property(name: 'groupMemberCountFilter')
  int groupMemberCountFilter = null;
  //enum groupMemberCountFilterEnum {  0,  1,  2,  3,  };

  @Property(name: 'localeFilter')
  String localeFilter = null;
  

  @Property(name: 'tagText')
  String tagText = null;
  

  @Property(name: 'itemsPerPage')
  int itemsPerPage = null;
  

  @Property(name: 'currentPage')
  int currentPage = null;
  

  @Property(name: 'requestContinuationToken')
  String requestContinuationToken = null;
  
  GroupsV2GroupQuery();

  @override
  String toString()  {
    return 'GroupsV2GroupQuery[name=$name, groupType=$groupType, creationDate=$creationDate, sortBy=$sortBy, groupMemberCountFilter=$groupMemberCountFilter, localeFilter=$localeFilter, tagText=$tagText, itemsPerPage=$itemsPerPage, currentPage=$currentPage, requestContinuationToken=$requestContinuationToken, ]';
  }
}

