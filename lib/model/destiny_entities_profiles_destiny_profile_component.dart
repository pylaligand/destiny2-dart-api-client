part of destiny2_api.api;

@Entity()
class DestinyEntitiesProfilesDestinyProfileComponent {
  /* If you need to render the Profile (their platform name, icon, etc...) somewhere, this property contains that information. */
  @Property(name: 'userInfo')
  UserUserInfoCard userInfo = null;
  
/* The last time the user played with any character on this Profile. */
  @Property(name: 'dateLastPlayed')
  DateTime dateLastPlayed = null;
  
/* If you want to know what expansions they own, this will contain that data. */
  @Property(name: 'versionsOwned')
  DestinyDestinyGameVersions versionsOwned = null;
  
/* A list of the character IDs, for further querying on your part. */
  @Property(name: 'characterIds')
  List<int> characterIds = [];
  
  DestinyEntitiesProfilesDestinyProfileComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesProfilesDestinyProfileComponent[userInfo=$userInfo, dateLastPlayed=$dateLastPlayed, versionsOwned=$versionsOwned, characterIds=$characterIds, ]';
  }
}

