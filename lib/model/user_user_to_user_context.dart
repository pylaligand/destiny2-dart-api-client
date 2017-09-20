part of destiny2_api.api;

@Entity()
class UserUserToUserContext {
  
  @Property(name: 'isFollowing')
  bool isFollowing = null;
  

  @Property(name: 'ignoreStatus')
  IgnoresIgnoreResponse ignoreStatus = null;
  

  @Property(name: 'globalIgnoreEndDate')
  DateTime globalIgnoreEndDate = null;
  
  UserUserToUserContext();

  @override
  String toString()  {
    return 'UserUserToUserContext[isFollowing=$isFollowing, ignoreStatus=$ignoreStatus, globalIgnoreEndDate=$globalIgnoreEndDate, ]';
  }
}

