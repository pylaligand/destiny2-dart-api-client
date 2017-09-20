part of destiny2_api.api;

@Entity()
class GroupsV2ClanBanner {
  
  @Property(name: 'decalId')
  int decalId = null;
  

  @Property(name: 'decalColorId')
  int decalColorId = null;
  

  @Property(name: 'decalBackgroundColorId')
  int decalBackgroundColorId = null;
  

  @Property(name: 'gonfalonId')
  int gonfalonId = null;
  

  @Property(name: 'gonfalonColorId')
  int gonfalonColorId = null;
  

  @Property(name: 'gonfalonDetailId')
  int gonfalonDetailId = null;
  

  @Property(name: 'gonfalonDetailColorId')
  int gonfalonDetailColorId = null;
  
  GroupsV2ClanBanner();

  @override
  String toString()  {
    return 'GroupsV2ClanBanner[decalId=$decalId, decalColorId=$decalColorId, decalBackgroundColorId=$decalBackgroundColorId, gonfalonId=$gonfalonId, gonfalonColorId=$gonfalonColorId, gonfalonDetailId=$gonfalonDetailId, gonfalonDetailColorId=$gonfalonDetailColorId, ]';
  }
}

