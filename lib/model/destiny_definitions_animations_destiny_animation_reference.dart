part of destiny2_api.api;

@Entity()
class DestinyDefinitionsAnimationsDestinyAnimationReference {
  
  @Property(name: 'animName')
  String animName = null;
  

  @Property(name: 'animIdentifier')
  String animIdentifier = null;
  

  @Property(name: 'path')
  String path = null;
  
  DestinyDefinitionsAnimationsDestinyAnimationReference();

  @override
  String toString()  {
    return 'DestinyDefinitionsAnimationsDestinyAnimationReference[animName=$animName, animIdentifier=$animIdentifier, path=$path, ]';
  }
}

