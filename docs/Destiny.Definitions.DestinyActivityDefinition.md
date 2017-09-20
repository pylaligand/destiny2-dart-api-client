# destiny2_api.model.DestinyDefinitionsDestinyActivityDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayProperties** | [**Object**](Object.md) | The title, subtitle, and icon for the activity. | [optional] [default to null]
**releaseIcon** | **String** | If the activity has an icon associated with a specific release (such as a DLC), this is the path to that release&#39;s icon. | [optional] [default to null]
**releaseTime** | **int** | If the activity will not be visible until a specific and known time, this will be the seconds since the Epoch when it will become visible. | [optional] [default to null]
**activityLevel** | **int** | The difficulty level of the activity. | [optional] [default to null]
**activityLightLevel** | **int** | The recommended light level for this activity. | [optional] [default to null]
**destinationHash** | **int** | The hash identifier for the Destination on which this Activity is played. Use it to look up the DestinyDestinationDefinition for human readable info about the destination. A Destination can be thought of as a more specific location than a \&quot;Place\&quot;. For instance, if the \&quot;Place\&quot; is Earth, the \&quot;Destination\&quot; would be a specific city or region on Earth. | [optional] [default to null]
**placeHash** | **int** | The hash identifier for the \&quot;Place\&quot; on which this Activity is played. Use it to look up the DestinyPlaceDefinition for human readable info about the Place. A Place is the largest-scoped concept for location information. For instance, if the \&quot;Place\&quot; is Earth, the \&quot;Destination\&quot; would be a specific city or region on Earth. | [optional] [default to null]
**activityTypeHash** | **int** | The hash identifier for the Activity Type of this Activity. You may use it to look up the DestinyActivityTypeDefinition for human readable info, but be forewarned: Playlists and many PVP Map Activities will map to generic Activity Types. You&#39;ll have to use your knowledge of the Activity Mode being played to get more specific information about what the user is playing. | [optional] [default to null]
**tier** | **int** | The difficulty tier of the activity. | [optional] [default to null]
**pgcrImage** | **String** | When Activities are completed, we generate a \&quot;Post-Game Carnage Report\&quot;, or PGCR, with details about what happened in that activity (how many kills someone got, which team won, etc...) We use this image as the background when displaying PGCR information, and often use it when we refer to the Activity in general. | [optional] [default to null]
**rewards** | [**List&lt;DestinyDefinitionsDestinyActivityRewardDefinition&gt;**](DestinyDefinitionsDestinyActivityRewardDefinition.md) | The expected possible rewards for the activity. These rewards may or may not be accessible for an individual player based on their character state, the account state, and even the game&#39;s state overall. But it is a useful reference for possible rewards you can earn in the activity. These match up to rewards displayed when you hover over the Activity in the in-game Director, and often refer to Placeholder or \&quot;Dummy\&quot; items: items that tell you what you can earn in vague terms rather than what you&#39;ll specifically be earning (partly because the game doesn&#39;t even know what you&#39;ll earn specifically until you roll for it at the end) | [optional] [default to []]
**modifiers** | [**List&lt;DestinyDefinitionsDestinyActivityModifierReferenceDefinition&gt;**](DestinyDefinitionsDestinyActivityModifierReferenceDefinition.md) | Activities can have Modifiers, as defined in DestinyActivityModifierDefinition. These are references to the modifiers that *can* be applied to that activity, along with data that we use to determine if that modifier is actually active at any given point in time. | [optional] [default to []]
**isPlaylist** | **bool** | If True, this Activity is actually a Playlist that refers to multiple possible specific Activities and Activity Modes. For instance, a Crucible Playlist may have references to multiple Activities (Maps) with multiple Activity Modes (specific PvP gameplay modes). If this is true, refer to the playlistItems property for the specific entries in the playlist. | [optional] [default to null]
**challenges** | [**List&lt;DestinyDefinitionsDestinyActivityChallengeDefinition&gt;**](DestinyDefinitionsDestinyActivityChallengeDefinition.md) | An activity can have many Challenges, of which any subset of them may be active for play at any given period of time. This gives the information about the challenges and data that we use to understand when they&#39;re active and what rewards they provide. Sadly, at the moment there&#39;s no central definition for challenges: much like \&quot;Skulls\&quot; were in Destiny 1, these are defined on individual activities and there can be many duplicates/near duplicates across the Destiny 2 ecosystem. I have it in mind to centralize these in a future revision of the API, but we are out of time. | [optional] [default to []]
**optionalUnlockStrings** | [**List&lt;DestinyDefinitionsDestinyActivityUnlockStringDefinition&gt;**](DestinyDefinitionsDestinyActivityUnlockStringDefinition.md) | If there are status strings related to the activity and based on internal state of the game, account, or character, then this will be the definition of those strings and the states needed in order for the strings to be shown. | [optional] [default to []]
**playlistItems** | [**List&lt;DestinyDefinitionsDestinyActivityPlaylistItemDefinition&gt;**](DestinyDefinitionsDestinyActivityPlaylistItemDefinition.md) | Represents all of the possible activities that could be played in the Playlist, along with information that we can use to determine if they are active at the present time. | [optional] [default to []]
**activityGraphList** | [**List&lt;DestinyDefinitionsDestinyActivityGraphListEntryDefinition&gt;**](DestinyDefinitionsDestinyActivityGraphListEntryDefinition.md) | Unfortunately, in practice this is almost never populated. In theory, this is supposed to tell which Activity Graph to show if you bring up the director while in this activity. | [optional] [default to []]
**matchmaking** | [**Object**](Object.md) | This block of data provides information about the Activity&#39;s matchmaking attributes: how many people can join and such. | [optional] [default to null]
**guidedGame** | [**Object**](Object.md) | This block of data, if it exists, provides information about the guided game experience and restrictions for this activity. If it doesn&#39;t exist, the game is not able to be played as a guided game. | [optional] [default to null]
**directActivityModeHash** | **int** |  | [optional] [default to null]
**directActivityModeType** | **int** |  | [optional] [default to null]
**activityModeHashes** | **List&lt;int&gt;** |  | [optional] [default to []]
**activityModeTypes** | [**List&lt;DestinyHistoricalStatsDefinitionsDestinyActivityModeType&gt;**](DestinyHistoricalStatsDefinitionsDestinyActivityModeType.md) |  | [optional] [default to []]
**isPvP** | **bool** | If true, this activity is a PVP activity or playlist. | [optional] [default to null]
**hash** | **int** | The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. | [optional] [default to null]
**index** | **int** | The index of the entity as it was found in the investment tables. | [optional] [default to null]
**redacted** | **bool** | If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


