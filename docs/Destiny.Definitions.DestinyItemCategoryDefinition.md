# destiny2_api.model.DestinyDefinitionsDestinyItemCategoryDefinition

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayProperties** | [**DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**](DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition.md) |  | [optional] [default to null]
**visible** | **bool** | If True, this category should be visible in UI. Sometimes we make categories that we don&#39;t think are interesting externally. It&#39;s up to you if you want to skip on showing them. | [optional] [default to null]
**shortTitle** | **String** | A shortened version of the title. The reason why we have this is because the Armory in German had titles that were too long to display in our UI, so these were localized abbreviated versions of those categories. The property still exists today, even though the Armory doesn&#39;t exist for D2... yet. | [optional] [default to null]
**itemTypeRegex** | **String** | The janky regular expression we used against the item type to try and discern whether the item belongs to this category. | [optional] [default to null]
**itemTypeRegexNot** | **String** | If the item type matches this janky regex, it does *not* belong to this category. | [optional] [default to null]
**originBucketIdentifier** | **String** | If the item belongs to this bucket, it does belong to this category. | [optional] [default to null]
**grantDestinyItemType** | [**DestinyDestinyItemType**](DestinyDestinyItemType.md) | If an item belongs to this category, it will also receive this item type. This is now how DestinyItemType is populated for items: it used to be an even jankier process, but that&#39;s a story that requires more alcohol. | [optional] [default to null]
**grantDestinySubType** | [**DestinyDestinyItemSubType**](DestinyDestinyItemSubType.md) | If an item belongs to this category, it will also receive this subtype enum value.  I know what you&#39;re thinking - what if it belongs to multiple categories that provide sub-types?  The last one processed wins, as is the case with all of these \&quot;grant\&quot; enums. Now you can see one reason why we moved away from these enums... but they&#39;re so convenient when they work, aren&#39;t they? | [optional] [default to null]
**grantDestinyClass** | [**DestinyDestinyClass**](DestinyDestinyClass.md) | If an item belongs to this category, it will also get this class restriction enum value.  See the other \&quot;grant\&quot;-prefixed properties on this definition for my color commentary. | [optional] [default to null]
**groupedCategoryHashes** | **List&lt;int&gt;** | If this category is a \&quot;parent\&quot; category of other categories, those children will have their hashes listed in rendering order here, and can be looked up using these hashes against DestinyItemCategoryDefinition.  In this way, you can build up a visual hierarchy of item categories. That&#39;s what we did, and you can do it too. I believe in you. Yes, you, Carl.  (I hope someone named Carl reads this someday) | [optional] [default to []]
**hash** | **int** | The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. | [optional] [default to null]
**index** | **int** | The index of the entity as it was found in the investment tables. | [optional] [default to null]
**redacted** | **bool** | If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


