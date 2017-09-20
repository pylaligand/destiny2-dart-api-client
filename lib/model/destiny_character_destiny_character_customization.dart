part of destiny2_api.api;

@Entity()
class DestinyCharacterDestinyCharacterCustomization {
  
  @Property(name: 'personality')
  int personality = null;
  

  @Property(name: 'face')
  int face = null;
  

  @Property(name: 'skinColor')
  int skinColor = null;
  

  @Property(name: 'lipColor')
  int lipColor = null;
  

  @Property(name: 'eyeColor')
  int eyeColor = null;
  

  @Property(name: 'hairColors')
  List<int> hairColors = [];
  

  @Property(name: 'featureColors')
  List<int> featureColors = [];
  

  @Property(name: 'decalColor')
  int decalColor = null;
  

  @Property(name: 'wearHelmet')
  bool wearHelmet = null;
  

  @Property(name: 'hairIndex')
  int hairIndex = null;
  

  @Property(name: 'featureIndex')
  int featureIndex = null;
  

  @Property(name: 'decalIndex')
  int decalIndex = null;
  
  DestinyCharacterDestinyCharacterCustomization();

  @override
  String toString()  {
    return 'DestinyCharacterDestinyCharacterCustomization[personality=$personality, face=$face, skinColor=$skinColor, lipColor=$lipColor, eyeColor=$eyeColor, hairColors=$hairColors, featureColors=$featureColors, decalColor=$decalColor, wearHelmet=$wearHelmet, hairIndex=$hairIndex, featureIndex=$featureIndex, decalIndex=$decalIndex, ]';
  }
}

