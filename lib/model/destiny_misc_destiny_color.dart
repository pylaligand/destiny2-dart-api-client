part of destiny2_api.api;

@Entity()
class DestinyMiscDestinyColor {
  
  @Property(name: 'red')
  ByteArray red = null;
  

  @Property(name: 'green')
  ByteArray green = null;
  

  @Property(name: 'blue')
  ByteArray blue = null;
  

  @Property(name: 'alpha')
  ByteArray alpha = null;
  
  DestinyMiscDestinyColor();

  @override
  String toString()  {
    return 'DestinyMiscDestinyColor[red=$red, green=$green, blue=$blue, alpha=$alpha, ]';
  }
}

