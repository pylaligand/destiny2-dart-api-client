# destiny2_api.model.DestinyEntitiesProfilesDestinyProfileComponent

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userInfo** | [**UserUserInfoCard**](UserUserInfoCard.md) | If you need to render the Profile (their platform name, icon, etc...) somewhere, this property contains that information. | [optional] [default to null]
**dateLastPlayed** | [**DateTime**](DateTime.md) | The last time the user played with any character on this Profile. | [optional] [default to null]
**versionsOwned** | [**DestinyDestinyGameVersions**](DestinyDestinyGameVersions.md) | If you want to know what expansions they own, this will contain that data. | [optional] [default to null]
**characterIds** | **List&lt;int&gt;** | A list of the character IDs, for further querying on your part. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


