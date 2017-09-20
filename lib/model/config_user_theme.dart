part of destiny2_api.api;

@Entity()
class ConfigUserTheme {
  
  @Property(name: 'userThemeId')
  int userThemeId = null;
  

  @Property(name: 'userThemeName')
  String userThemeName = null;
  

  @Property(name: 'userThemeDescription')
  String userThemeDescription = null;
  
  ConfigUserTheme();

  @override
  String toString()  {
    return 'ConfigUserTheme[userThemeId=$userThemeId, userThemeName=$userThemeName, userThemeDescription=$userThemeDescription, ]';
  }
}

