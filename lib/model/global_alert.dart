part of destiny2_api.api;

@Entity()
class GlobalAlert {
  
  @Property(name: 'AlertKey')
  String alertKey = null;
  

  @Property(name: 'AlertHtml')
  String alertHtml = null;
  

  @Property(name: 'AlertTimestamp')
  DateTime alertTimestamp = null;
  

  @Property(name: 'AlertLink')
  String alertLink = null;
  

  @Property(name: 'AlertLevel')
  GlobalAlertLevel alertLevel = null;
  

  @Property(name: 'AlertType')
  GlobalAlertType alertType = null;
  

  @Property(name: 'StreamInfo')
  StreamInfo streamInfo = null;
  
  GlobalAlert();

  @override
  String toString()  {
    return 'GlobalAlert[alertKey=$alertKey, alertHtml=$alertHtml, alertTimestamp=$alertTimestamp, alertLink=$alertLink, alertLevel=$alertLevel, alertType=$alertType, streamInfo=$streamInfo, ]';
  }
}

