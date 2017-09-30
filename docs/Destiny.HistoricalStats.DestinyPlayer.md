# destiny2_api.model.DestinyHistoricalStatsDestinyPlayer

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destinyUserInfo** | [**UserUserInfoCard**](UserUserInfoCard.md) | Details about the player as they are known in game (platform display name, Destiny emblem) | [optional] [default to null]
**characterClass** | **String** | Class of the character if applicable and available. | [optional] [default to null]
**characterLevel** | **int** | Level of the character if available. Zero if it is not available. | [optional] [default to null]
**lightLevel** | **int** | Light Level of the character if available. Zero if it is not available. | [optional] [default to null]
**bungieNetUserInfo** | [**UserUserInfoCard**](UserUserInfoCard.md) | Details about the player as they are known on BungieNet. This will be undefined if the player has marked their credential private, or does not have a BungieNet account. | [optional] [default to null]
**clanName** | **String** | Current clan name for the player. This value may be null or an empty string if the user does not have a clan. | [optional] [default to null]
**clanTag** | **String** | Current clan tag for the player. This value may be null or an empty string if the user does not have a clan. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


