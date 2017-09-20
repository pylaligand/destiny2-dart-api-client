part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyPlayer {
  /* Details about the player as they are known in game (platform display name, Destiny emblem) */
  @Property(name: 'destinyUserInfo')
  Object destinyUserInfo = null;
  
/* Class of the character if applicable and available. */
  @Property(name: 'characterClass')
  String characterClass = null;
  
/* Level of the character if available. Zero if it is not available. */
  @Property(name: 'characterLevel')
  int characterLevel = null;
  
/* Light Level of the character if available. Zero if it is not available. */
  @Property(name: 'lightLevel')
  int lightLevel = null;
  
/* Details about the player as they are known on BungieNet. This will be undefined if the player has marked their credential private, or does not have a BungieNet account. */
  @Property(name: 'bungieNetUserInfo')
  Object bungieNetUserInfo = null;
  
/* Current clan name for the player. This value may be null or an empty string if the user does not have a clan. */
  @Property(name: 'clanName')
  String clanName = null;
  
/* Current clan tag for the player. This value may be null or an empty string if the user does not have a clan. */
  @Property(name: 'clanTag')
  String clanTag = null;
  
  DestinyHistoricalStatsDestinyPlayer();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyPlayer[destinyUserInfo=$destinyUserInfo, characterClass=$characterClass, characterLevel=$characterLevel, lightLevel=$lightLevel, bungieNetUserInfo=$bungieNetUserInfo, clanName=$clanName, clanTag=$clanTag, ]';
  }
}

