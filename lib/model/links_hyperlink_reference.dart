part of destiny2_api.api;

@Entity()
class LinksHyperlinkReference {
  
  @Property(name: 'title')
  String title = null;
  

  @Property(name: 'url')
  String url = null;
  
  LinksHyperlinkReference();

  @override
  String toString()  {
    return 'LinksHyperlinkReference[title=$title, url=$url, ]';
  }
}

