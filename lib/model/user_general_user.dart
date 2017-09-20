part of destiny2_api.api;

@Entity()
class UserGeneralUser {
  
  @Property(name: 'membershipId')
  int membershipId = null;
  

  @Property(name: 'uniqueName')
  String uniqueName = null;
  

  @Property(name: 'normalizedName')
  String normalizedName = null;
  

  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'profilePicture')
  int profilePicture = null;
  

  @Property(name: 'profileTheme')
  int profileTheme = null;
  

  @Property(name: 'userTitle')
  int userTitle = null;
  

  @Property(name: 'successMessageFlags')
  int successMessageFlags = null;
  

  @Property(name: 'isDeleted')
  bool isDeleted = null;
  

  @Property(name: 'about')
  String about = null;
  

  @Property(name: 'firstAccess')
  DateTime firstAccess = null;
  

  @Property(name: 'lastUpdate')
  DateTime lastUpdate = null;
  

  @Property(name: 'legacyPortalUID')
  int legacyPortalUID = null;
  

  @Property(name: 'context')
  UserUserToUserContext context = null;
  

  @Property(name: 'psnDisplayName')
  String psnDisplayName = null;
  

  @Property(name: 'xboxDisplayName')
  String xboxDisplayName = null;
  

  @Property(name: 'fbDisplayName')
  String fbDisplayName = null;
  

  @Property(name: 'showActivity')
  bool showActivity = null;
  

  @Property(name: 'locale')
  String locale = null;
  

  @Property(name: 'localeInheritDefault')
  bool localeInheritDefault = null;
  

  @Property(name: 'lastBanReportId')
  int lastBanReportId = null;
  

  @Property(name: 'showGroupMessaging')
  bool showGroupMessaging = null;
  

  @Property(name: 'profilePicturePath')
  String profilePicturePath = null;
  

  @Property(name: 'profilePictureWidePath')
  String profilePictureWidePath = null;
  

  @Property(name: 'profileThemeName')
  String profileThemeName = null;
  

  @Property(name: 'userTitleDisplay')
  String userTitleDisplay = null;
  

  @Property(name: 'statusText')
  String statusText = null;
  

  @Property(name: 'statusDate')
  DateTime statusDate = null;
  

  @Property(name: 'profileBanExpire')
  DateTime profileBanExpire = null;
  

  @Property(name: 'blizzardDisplayName')
  String blizzardDisplayName = null;
  
  UserGeneralUser();

  @override
  String toString()  {
    return 'UserGeneralUser[membershipId=$membershipId, uniqueName=$uniqueName, normalizedName=$normalizedName, displayName=$displayName, profilePicture=$profilePicture, profileTheme=$profileTheme, userTitle=$userTitle, successMessageFlags=$successMessageFlags, isDeleted=$isDeleted, about=$about, firstAccess=$firstAccess, lastUpdate=$lastUpdate, legacyPortalUID=$legacyPortalUID, context=$context, psnDisplayName=$psnDisplayName, xboxDisplayName=$xboxDisplayName, fbDisplayName=$fbDisplayName, showActivity=$showActivity, locale=$locale, localeInheritDefault=$localeInheritDefault, lastBanReportId=$lastBanReportId, showGroupMessaging=$showGroupMessaging, profilePicturePath=$profilePicturePath, profilePictureWidePath=$profilePictureWidePath, profileThemeName=$profileThemeName, userTitleDisplay=$userTitleDisplay, statusText=$statusText, statusDate=$statusDate, profileBanExpire=$profileBanExpire, blizzardDisplayName=$blizzardDisplayName, ]';
  }
}

