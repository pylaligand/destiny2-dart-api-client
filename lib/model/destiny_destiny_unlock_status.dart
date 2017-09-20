part of destiny2_api.api;

@Entity()
class DestinyDestinyUnlockStatus {
  /* The hash identifier for the Unlock Flag. Use to lookup DestinyUnlockDefinition for static data. Not all unlocks have human readable data - in fact, most don't. But when they do, it can be very useful to show. Even if they don't have human readable data, you might be able to infer the meaning of an unlock flag with a bit of experimentation... */
  @Property(name: 'unlockHash')
  int unlockHash = null;
  
/* Whether the unlock flag is set. */
  @Property(name: 'isSet')
  bool isSet = null;
  
  DestinyDestinyUnlockStatus();

  @override
  String toString()  {
    return 'DestinyDestinyUnlockStatus[unlockHash=$unlockHash, isSet=$isSet, ]';
  }
}

