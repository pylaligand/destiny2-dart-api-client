part of destiny2_api.api;

@Entity()
class DestinyResponsesDestinyErrorProfile {
  /* The error that we encountered. You should be able to look up localized text to show to the user for these failures. */
  @Property(name: 'errorCode')
  ExceptionsPlatformErrorCodes errorCode = null;
  
/* Basic info about the account that failed. Don't expect anything other than membership ID, Membership Type, and displayName to be populated. */
  @Property(name: 'infoCard')
  UserUserInfoCard infoCard = null;
  
  DestinyResponsesDestinyErrorProfile();

  @override
  String toString()  {
    return 'DestinyResponsesDestinyErrorProfile[errorCode=$errorCode, infoCard=$infoCard, ]';
  }
}

