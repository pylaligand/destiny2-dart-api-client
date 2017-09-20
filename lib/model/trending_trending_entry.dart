part of destiny2_api.api;

@Entity()
class TrendingTrendingEntry {
  /* The weighted score of this trending item. */
  @Property(name: 'weight')
  double weight = null;
  

  @Property(name: 'isFeatured')
  bool isFeatured = null;
  
/* We don't know whether the identifier will be a string, a uint, or a long... so we're going to cast it all to a string. But either way, we need any trending item created to have a single unique identifier for its type. */
  @Property(name: 'identifier')
  String identifier = null;
  
/* An enum - unfortunately - dictating all of the possible kinds of trending items that you might get in your result set, in case you want to do custom rendering or call to get the details of the item. */
  @Property(name: 'entityType')
  Object entityType = null;
  
/* The localized \"display name/article title/'primary localized identifier'\" of the entity. */
  @Property(name: 'displayName')
  String displayName = null;
  
/* If the entity has a localized tagline/subtitle/motto/whatever, that is found here. */
  @Property(name: 'tagline')
  String tagline = null;
  

  @Property(name: 'image')
  String image = null;
  

  @Property(name: 'startDate')
  DateTime startDate = null;
  

  @Property(name: 'endDate')
  DateTime endDate = null;
  

  @Property(name: 'link')
  String link = null;
  
/* If this is populated, the entry has a related WebM video to show. I am 100% certain I am going to regret putting this directly on TrendingEntry, but it will work so yolo */
  @Property(name: 'webmVideo')
  String webmVideo = null;
  
/* If this is populated, the entry has a related MP4 video to show. I am 100% certain I am going to regret putting this directly on TrendingEntry, but it will work so yolo */
  @Property(name: 'mp4Video')
  String mp4Video = null;
  
/* If isFeatured, this image will be populated with whatever the featured image is. Note that this will likely be a very large image, so don't use it all the time. */
  @Property(name: 'featureImage')
  String featureImage = null;
  
  TrendingTrendingEntry();

  @override
  String toString()  {
    return 'TrendingTrendingEntry[weight=$weight, isFeatured=$isFeatured, identifier=$identifier, entityType=$entityType, displayName=$displayName, tagline=$tagline, image=$image, startDate=$startDate, endDate=$endDate, link=$link, webmVideo=$webmVideo, mp4Video=$mp4Video, featureImage=$featureImage, ]';
  }
}

