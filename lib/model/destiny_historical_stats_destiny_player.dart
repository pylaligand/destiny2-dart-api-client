part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyPlayer {
  /* Details about the player as they are known in game (platform display name, Destiny emblem) */
  @Property(name: 'destinyUserInfo')
  UserUserInfoCard destinyUserInfo = null;
  
/* Class of the character if applicable and available. */
  @Property(name: 'characterClass')
  String characterClass = null;
  

  @Property(name: 'classHash')
  int classHash = null;
  

  @Property(name: 'raceHash')
  int raceHash = null;
  

  @Property(name: 'genderHash')
  int genderHash = null;
  
/* Level of the character if available. Zero if it is not available. */
  @Property(name: 'characterLevel')
  int characterLevel = null;
  
/* Light Level of the character if available. Zero if it is not available. */
  @Property(name: 'lightLevel')
  int lightLevel = null;
  
/* Details about the player as they are known on BungieNet. This will be undefined if the player has marked their credential private, or does not have a BungieNet account. */
  @Property(name: 'bungieNetUserInfo')
  UserUserInfoCard bungieNetUserInfo = null;
  
/* Current clan name for the player. This value may be null or an empty string if the user does not have a clan. */
  @Property(name: 'clanName')
  String clanName = null;
  
/* Current clan tag for the player. This value may be null or an empty string if the user does not have a clan. */
  @Property(name: 'clanTag')
  String clanTag = null;
  
/* If we know the emblem's hash, this can be used to look up the player's emblem at the time of a match when receiving PGCR data, or otherwise their currently equipped emblem (if we are able to obtain it). */
  @Property(name: 'emblemHash')
  int emblemHash = null;
  
  DestinyHistoricalStatsDestinyPlayer();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyPlayer[destinyUserInfo=$destinyUserInfo, characterClass=$characterClass, classHash=$classHash, raceHash=$raceHash, genderHash=$genderHash, characterLevel=$characterLevel, lightLevel=$lightLevel, bungieNetUserInfo=$bungieNetUserInfo, clanName=$clanName, clanTag=$clanTag, emblemHash=$emblemHash, ]';
  }
}

