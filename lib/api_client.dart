part of destiny2_api.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final dson = new Dartson.JSON()
      ..addTransformer(new ApplicationsApplicationScopesTypeTransformer(), ApplicationsApplicationScopes)
      ..addTransformer(new IgnoresIgnoreStatusTypeTransformer(), IgnoresIgnoreStatus)
      ..addTransformer(new BungieMembershipTypeTypeTransformer(), BungieMembershipType)
      ..addTransformer(new PartnershipsPartnershipTypeTypeTransformer(), PartnershipsPartnershipType)
      ..addTransformer(new ForumForumTopicsCategoryFiltersEnumTypeTransformer(), ForumForumTopicsCategoryFiltersEnum)
      ..addTransformer(new ForumForumTopicsQuickDateEnumTypeTransformer(), ForumForumTopicsQuickDateEnum)
      ..addTransformer(new ForumForumTopicsSortEnumTypeTransformer(), ForumForumTopicsSortEnum)
      ..addTransformer(new ForumForumMediaTypeTypeTransformer(), ForumForumMediaType)
      ..addTransformer(new ForumForumPostPopularityTypeTransformer(), ForumForumPostPopularity)
      ..addTransformer(new ForumForumPostCategoryEnumsTypeTransformer(), ForumForumPostCategoryEnums)
      ..addTransformer(new ForumForumFlagsEnumTypeTransformer(), ForumForumFlagsEnum)
      ..addTransformer(new GroupsV2GroupTypeTypeTransformer(), GroupsV2GroupType)
      ..addTransformer(new GroupsV2ChatSecuritySettingTypeTransformer(), GroupsV2ChatSecuritySetting)
      ..addTransformer(new GroupsV2GroupHomepageTypeTransformer(), GroupsV2GroupHomepage)
      ..addTransformer(new GroupsV2MembershipOptionTypeTransformer(), GroupsV2MembershipOption)
      ..addTransformer(new GroupsV2GroupPostPublicityTypeTransformer(), GroupsV2GroupPostPublicity)
      ..addTransformer(new GroupsV2CapabilitiesTypeTransformer(), GroupsV2Capabilities)
      ..addTransformer(new GroupsV2HostGuidedGamesPermissionLevelTypeTransformer(), GroupsV2HostGuidedGamesPermissionLevel)
      ..addTransformer(new GroupsV2RuntimeGroupMemberTypeTypeTransformer(), GroupsV2RuntimeGroupMemberType)
      ..addTransformer(new DestinyDestinyProgressionScopeTypeTransformer(), DestinyDestinyProgressionScope)
      ..addTransformer(new DestinyDestinyProgressionStepDisplayEffectTypeTransformer(), DestinyDestinyProgressionStepDisplayEffect)
      ..addTransformer(new DestinyTierTypeTypeTransformer(), DestinyTierType)
      ..addTransformer(new DestinyBucketScopeTypeTransformer(), DestinyBucketScope)
      ..addTransformer(new DestinyBucketCategoryTypeTransformer(), DestinyBucketCategory)
      ..addTransformer(new DestinyItemLocationTypeTransformer(), DestinyItemLocation)
      ..addTransformer(new DestinyDestinyStatAggregationTypeTypeTransformer(), DestinyDestinyStatAggregationType)
      ..addTransformer(new DestinyEquippingItemBlockAttributesTypeTransformer(), DestinyEquippingItemBlockAttributes)
      ..addTransformer(new DestinyDestinyVendorInteractionRewardSelectionTypeTransformer(), DestinyDestinyVendorInteractionRewardSelection)
      ..addTransformer(new DestinyDestinyVendorReplyTypeTypeTransformer(), DestinyDestinyVendorReplyType)
      ..addTransformer(new DestinyDestinyItemSortTypeTypeTransformer(), DestinyDestinyItemSortType)
      ..addTransformer(new DestinyDestinyVendorItemRefundPolicyTypeTransformer(), DestinyDestinyVendorItemRefundPolicy)
      ..addTransformer(new DestinyDestinyGatingScopeTypeTransformer(), DestinyDestinyGatingScope)
      ..addTransformer(new DestinyDefinitionsDestinyRewardSourceCategoryTypeTransformer(), DestinyDefinitionsDestinyRewardSourceCategory)
      ..addTransformer(new DestinyDestinyUnlockValueUIStyleTypeTransformer(), DestinyDestinyUnlockValueUIStyle)
      ..addTransformer(new DestinyDestinyObjectiveGrantStyleTypeTransformer(), DestinyDestinyObjectiveGrantStyle)
      ..addTransformer(new DestinyDamageTypeTypeTransformer(), DestinyDamageType)
      ..addTransformer(new DestinyDefinitionsDestinyTalentNodeStepWeaponPerformancesTypeTransformer(), DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances)
      ..addTransformer(new DestinyDefinitionsDestinyTalentNodeStepImpactEffectsTypeTransformer(), DestinyDefinitionsDestinyTalentNodeStepImpactEffects)
      ..addTransformer(new DestinyDefinitionsDestinyTalentNodeStepGuardianAttributesTypeTransformer(), DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes)
      ..addTransformer(new DestinyDefinitionsDestinyTalentNodeStepLightAbilitiesTypeTransformer(), DestinyDefinitionsDestinyTalentNodeStepLightAbilities)
      ..addTransformer(new DestinyDefinitionsDestinyTalentNodeStepDamageTypesTypeTransformer(), DestinyDefinitionsDestinyTalentNodeStepDamageTypes)
      ..addTransformer(new DestinyDestinyActivityNavPointTypeTypeTransformer(), DestinyDestinyActivityNavPointType)
      ..addTransformer(new DestinyActivityGraphNodeHighlightTypeTypeTransformer(), DestinyActivityGraphNodeHighlightType)
      ..addTransformer(new DestinyHistoricalStatsDefinitionsDestinyActivityModeTypeTypeTransformer(), DestinyHistoricalStatsDefinitionsDestinyActivityModeType)
      ..addTransformer(new DestinyDestinyActivityModeCategoryTypeTransformer(), DestinyDestinyActivityModeCategory)
      ..addTransformer(new DestinyDestinySocketVisibilityTypeTransformer(), DestinyDestinySocketVisibility)
      ..addTransformer(new DestinySpecialItemTypeTypeTransformer(), DestinySpecialItemType)
      ..addTransformer(new DestinyDestinyItemTypeTypeTransformer(), DestinyDestinyItemType)
      ..addTransformer(new DestinyDestinyItemSubTypeTypeTransformer(), DestinyDestinyItemSubType)
      ..addTransformer(new DestinyDestinyClassTypeTransformer(), DestinyDestinyClass)
      ..addTransformer(new GroupsV2GroupAllianceStatusTypeTransformer(), GroupsV2GroupAllianceStatus)
      ..addTransformer(new GroupsV2GroupPotentialMemberStatusTypeTransformer(), GroupsV2GroupPotentialMemberStatus)
      ..addTransformer(new ForumForumRecruitmentIntensityLabelTypeTransformer(), ForumForumRecruitmentIntensityLabel)
      ..addTransformer(new ForumForumRecruitmentToneLabelTypeTransformer(), ForumForumRecruitmentToneLabel)
      ..addTransformer(new ForumForumPostSortEnumTypeTransformer(), ForumForumPostSortEnum)
      ..addTransformer(new GroupsV2GroupDateRangeTypeTransformer(), GroupsV2GroupDateRange)
      ..addTransformer(new GroupsV2GroupSortByTypeTransformer(), GroupsV2GroupSortBy)
      ..addTransformer(new GroupsV2GroupMemberCountFilterTypeTransformer(), GroupsV2GroupMemberCountFilter)
      ..addTransformer(new IgnoresIgnoreLengthTypeTransformer(), IgnoresIgnoreLength)
      ..addTransformer(new GroupsV2GroupApplicationResolveStateTypeTransformer(), GroupsV2GroupApplicationResolveState)
      ..addTransformer(new ExceptionsPlatformErrorCodesTypeTransformer(), ExceptionsPlatformErrorCodes)
      ..addTransformer(new GroupsV2GroupsForMemberFilterTypeTransformer(), GroupsV2GroupsForMemberFilter)
      ..addTransformer(new DestinyDestinyComponentTypeTypeTransformer(), DestinyDestinyComponentType)
      ..addTransformer(new ComponentsComponentPrivacySettingTypeTransformer(), ComponentsComponentPrivacySetting)
      ..addTransformer(new DestinyItemBindStatusTypeTransformer(), DestinyItemBindStatus)
      ..addTransformer(new DestinyTransferStatusesTypeTransformer(), DestinyTransferStatuses)
      ..addTransformer(new DestinyItemStateTypeTransformer(), DestinyItemState)
      ..addTransformer(new DestinyDestinyGameVersionsTypeTransformer(), DestinyDestinyGameVersions)
      ..addTransformer(new DestinyDestinyRaceTypeTransformer(), DestinyDestinyRace)
      ..addTransformer(new DestinyDestinyGenderTypeTransformer(), DestinyDestinyGender)
      ..addTransformer(new DestinyDefinitionsMilestonesDestinyMilestoneTypeTypeTransformer(), DestinyDefinitionsMilestonesDestinyMilestoneType)
      ..addTransformer(new DestinyDestinyActivityDifficultyTierTypeTransformer(), DestinyDestinyActivityDifficultyTier)
      ..addTransformer(new DestinyEquipFailureReasonTypeTransformer(), DestinyEquipFailureReason)
      ..addTransformer(new DestinyDestinyTalentNodeStateTypeTransformer(), DestinyDestinyTalentNodeState)
      ..addTransformer(new DestinyVendorItemStatusTypeTransformer(), DestinyVendorItemStatus)
      ..addTransformer(new DestinyHistoricalStatsDefinitionsDestinyStatsGroupTypeTypeTransformer(), DestinyHistoricalStatsDefinitionsDestinyStatsGroupType)
      ..addTransformer(new DestinyHistoricalStatsDefinitionsDestinyStatsCategoryTypeTypeTransformer(), DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType)
      ..addTransformer(new DestinyHistoricalStatsDefinitionsUnitTypeTypeTransformer(), DestinyHistoricalStatsDefinitionsUnitType)
      ..addTransformer(new DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethodTypeTransformer(), DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod)
      ..addTransformer(new DestinyHistoricalStatsDefinitionsPeriodTypeTypeTransformer(), DestinyHistoricalStatsDefinitionsPeriodType)
      ..addTransformer(new ForumCommunityContentSortModeTypeTransformer(), ForumCommunityContentSortMode)
      ..addTransformer(new CommunityCommunityStatusSortTypeTransformer(), CommunityCommunityStatusSort)
      ..addTransformer(new TrendingTrendingEntryTypeTypeTransformer(), TrendingTrendingEntryType)
      ..addTransformer(new DateTimeParser(), DateTime);

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://www.bungie.net/Platform"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['apiKey'] = new ApiKeyAuth("header", "X-API-Key");
    _authentications['oauth2'] = new OAuth();
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'ApplicationsApplicationScopes':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'BungieMembershipType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'BungieMembershipTypeList':
          return dson.map(value, new BungieMembershipTypeList());
        case 'CommunityCommunityLiveStatus':
          return dson.map(value, new CommunityCommunityLiveStatus());
        case 'CommunityCommunityStatusSort':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ComponentsComponentPrivacySetting':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ComponentsComponentResponse':
          return dson.map(value, new ComponentsComponentResponse());
        case 'ConfigGroupTheme':
          return dson.map(value, new ConfigGroupTheme());
        case 'ConfigUserTheme':
          return dson.map(value, new ConfigUserTheme());
        case 'ContentCommentSummary':
          return dson.map(value, new ContentCommentSummary());
        case 'ContentContentItemPublicContract':
          return dson.map(value, new ContentContentItemPublicContract());
        case 'ContentContentRepresentation':
          return dson.map(value, new ContentContentRepresentation());
        case 'DatesDateRange':
          return dson.map(value, new DatesDateRange());
        case 'DestinyActivitiesDestinyPublicActivityStatus':
          return dson.map(value, new DestinyActivitiesDestinyPublicActivityStatus());
        case 'DestinyActivityGraphNodeHighlightType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyBucketCategory':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyBucketScope':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyChallengesDestinyChallengeStatus':
          return dson.map(value, new DestinyChallengesDestinyChallengeStatus());
        case 'DestinyCharacterDestinyCharacterCustomization':
          return dson.map(value, new DestinyCharacterDestinyCharacterCustomization());
        case 'DestinyCharacterDestinyCharacterPeerView':
          return dson.map(value, new DestinyCharacterDestinyCharacterPeerView());
        case 'DestinyCharacterDestinyItemPeerView':
          return dson.map(value, new DestinyCharacterDestinyItemPeerView());
        case 'DestinyComponentsItemsDestinyItemPlugComponent':
          return dson.map(value, new DestinyComponentsItemsDestinyItemPlugComponent());
        case 'DestinyComponentsKiosksDestinyKioskItem':
          return dson.map(value, new DestinyComponentsKiosksDestinyKioskItem());
        case 'DestinyComponentsKiosksDestinyKiosksComponent':
          return dson.map(value, new DestinyComponentsKiosksDestinyKiosksComponent());
        case 'DestinyConfigDestinyManifest':
          return dson.map(value, new DestinyConfigDestinyManifest());
        case 'DestinyConfigGearAssetDataBaseDefinition':
          return dson.map(value, new DestinyConfigGearAssetDataBaseDefinition());
        case 'DestinyDamageType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDefinitionsActivityModifiersDestinyActivityModifierDefinition':
          return dson.map(value, new DestinyDefinitionsActivityModifiersDestinyActivityModifierDefinition());
        case 'DestinyDefinitionsAnimationsDestinyAnimationReference':
          return dson.map(value, new DestinyDefinitionsAnimationsDestinyAnimationReference());
        case 'DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition':
          return dson.map(value, new DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition());
        case 'DestinyDefinitionsCommonDestinyPositionDefinition':
          return dson.map(value, new DestinyDefinitionsCommonDestinyPositionDefinition());
        case 'DestinyDefinitionsDestinyActivityChallengeDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyActivityChallengeDefinition());
        case 'DestinyDefinitionsDestinyActivityDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyActivityDefinition());
        case 'DestinyDefinitionsDestinyActivityGraphListEntryDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyActivityGraphListEntryDefinition());
        case 'DestinyDefinitionsDestinyActivityGuidedBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyActivityGuidedBlockDefinition());
        case 'DestinyDefinitionsDestinyActivityMatchmakingBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyActivityMatchmakingBlockDefinition());
        case 'DestinyDefinitionsDestinyActivityModeDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyActivityModeDefinition());
        case 'DestinyDefinitionsDestinyActivityModifierReferenceDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyActivityModifierReferenceDefinition());
        case 'DestinyDefinitionsDestinyActivityPlaylistItemDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyActivityPlaylistItemDefinition());
        case 'DestinyDefinitionsDestinyActivityRewardDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyActivityRewardDefinition());
        case 'DestinyDefinitionsDestinyActivityTypeDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyActivityTypeDefinition());
        case 'DestinyDefinitionsDestinyActivityUnlockStringDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyActivityUnlockStringDefinition());
        case 'DestinyDefinitionsDestinyBubbleDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyBubbleDefinition());
        case 'DestinyDefinitionsDestinyClassDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyClassDefinition());
        case 'DestinyDefinitionsDestinyDamageTypeDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyDamageTypeDefinition());
        case 'DestinyDefinitionsDestinyDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyDefinition());
        case 'DestinyDefinitionsDestinyDestinationBubbleSettingDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyDestinationBubbleSettingDefinition());
        case 'DestinyDefinitionsDestinyDestinationDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyDestinationDefinition());
        case 'DestinyDefinitionsDestinyDisplayCategoryDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyDisplayCategoryDefinition());
        case 'DestinyDefinitionsDestinyEntitySearchResult':
          return dson.map(value, new DestinyDefinitionsDestinyEntitySearchResult());
        case 'DestinyDefinitionsDestinyEntitySearchResultItem':
          return dson.map(value, new DestinyDefinitionsDestinyEntitySearchResultItem());
        case 'DestinyDefinitionsDestinyEquipmentSlotDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyEquipmentSlotDefinition());
        case 'DestinyDefinitionsDestinyEquippingBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyEquippingBlockDefinition());
        case 'DestinyDefinitionsDestinyFactionDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyFactionDefinition());
        case 'DestinyDefinitionsDestinyGearArtArrangementReference':
          return dson.map(value, new DestinyDefinitionsDestinyGearArtArrangementReference());
        case 'DestinyDefinitionsDestinyGenderDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyGenderDefinition());
        case 'DestinyDefinitionsDestinyInventoryBucketDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyInventoryBucketDefinition());
        case 'DestinyDefinitionsDestinyInventoryItemDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyInventoryItemDefinition());
        case 'DestinyDefinitionsDestinyInventoryItemStatDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyInventoryItemStatDefinition());
        case 'DestinyDefinitionsDestinyItemActionBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemActionBlockDefinition());
        case 'DestinyDefinitionsDestinyItemActionRequiredItemDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemActionRequiredItemDefinition());
        case 'DestinyDefinitionsDestinyItemCategoryDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemCategoryDefinition());
        case 'DestinyDefinitionsDestinyItemCreationEntryLevelDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemCreationEntryLevelDefinition());
        case 'DestinyDefinitionsDestinyItemGearsetBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemGearsetBlockDefinition());
        case 'DestinyDefinitionsDestinyItemInventoryBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemInventoryBlockDefinition());
        case 'DestinyDefinitionsDestinyItemInvestmentStatDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemInvestmentStatDefinition());
        case 'DestinyDefinitionsDestinyItemObjectiveBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemObjectiveBlockDefinition());
        case 'DestinyDefinitionsDestinyItemPerkEntryDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemPerkEntryDefinition());
        case 'DestinyDefinitionsDestinyItemPreviewBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemPreviewBlockDefinition());
        case 'DestinyDefinitionsDestinyItemQualityBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemQualityBlockDefinition());
        case 'DestinyDefinitionsDestinyItemSackBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemSackBlockDefinition());
        case 'DestinyDefinitionsDestinyItemSetBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemSetBlockDefinition());
        case 'DestinyDefinitionsDestinyItemSetBlockEntryDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemSetBlockEntryDefinition());
        case 'DestinyDefinitionsDestinyItemSocketBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemSocketBlockDefinition());
        case 'DestinyDefinitionsDestinyItemSocketCategoryDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemSocketCategoryDefinition());
        case 'DestinyDefinitionsDestinyItemSocketEntryDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemSocketEntryDefinition());
        case 'DestinyDefinitionsDestinyItemSocketEntryPlugItemDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemSocketEntryPlugItemDefinition());
        case 'DestinyDefinitionsDestinyItemSourceBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemSourceBlockDefinition());
        case 'DestinyDefinitionsDestinyItemStatBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemStatBlockDefinition());
        case 'DestinyDefinitionsDestinyItemSummaryBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemSummaryBlockDefinition());
        case 'DestinyDefinitionsDestinyItemTalentGridBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemTalentGridBlockDefinition());
        case 'DestinyDefinitionsDestinyItemTranslationBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemTranslationBlockDefinition());
        case 'DestinyDefinitionsDestinyItemValueBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemValueBlockDefinition());
        case 'DestinyDefinitionsDestinyLocationDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyLocationDefinition());
        case 'DestinyDefinitionsDestinyLocationReleaseDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyLocationReleaseDefinition());
        case 'DestinyDefinitionsDestinyMaterialRequirement':
          return dson.map(value, new DestinyDefinitionsDestinyMaterialRequirement());
        case 'DestinyDefinitionsDestinyMaterialRequirementSetDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyMaterialRequirementSetDefinition());
        case 'DestinyDefinitionsDestinyNodeActivationRequirement':
          return dson.map(value, new DestinyDefinitionsDestinyNodeActivationRequirement());
        case 'DestinyDefinitionsDestinyNodeSocketReplaceResponse':
          return dson.map(value, new DestinyDefinitionsDestinyNodeSocketReplaceResponse());
        case 'DestinyDefinitionsDestinyNodeStepDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyNodeStepDefinition());
        case 'DestinyDefinitionsDestinyObjectiveDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyObjectiveDefinition());
        case 'DestinyDefinitionsDestinyObjectivePerkEntryDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyObjectivePerkEntryDefinition());
        case 'DestinyDefinitionsDestinyObjectiveStatEntryDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyObjectiveStatEntryDefinition());
        case 'DestinyDefinitionsDestinyPlaceDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyPlaceDefinition());
        case 'DestinyDefinitionsDestinyProgressionDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyProgressionDefinition());
        case 'DestinyDefinitionsDestinyProgressionDisplayPropertiesDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyProgressionDisplayPropertiesDefinition());
        case 'DestinyDefinitionsDestinyProgressionMappingDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyProgressionMappingDefinition());
        case 'DestinyDefinitionsDestinyProgressionRewardDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyProgressionRewardDefinition());
        case 'DestinyDefinitionsDestinyProgressionStepDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyProgressionStepDefinition());
        case 'DestinyDefinitionsDestinyRaceDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyRaceDefinition());
        case 'DestinyDefinitionsDestinyRewardSourceCategory':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDefinitionsDestinyRewardSourceDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyRewardSourceDefinition());
        case 'DestinyDefinitionsDestinySandboxPerkDefinition':
          return dson.map(value, new DestinyDefinitionsDestinySandboxPerkDefinition());
        case 'DestinyDefinitionsDestinyStatDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyStatDefinition());
        case 'DestinyDefinitionsDestinyStatDisplayDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyStatDisplayDefinition());
        case 'DestinyDefinitionsDestinyStatGroupDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyStatGroupDefinition());
        case 'DestinyDefinitionsDestinyStatOverrideDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyStatOverrideDefinition());
        case 'DestinyDefinitionsDestinyTalentExclusiveGroup':
          return dson.map(value, new DestinyDefinitionsDestinyTalentExclusiveGroup());
        case 'DestinyDefinitionsDestinyTalentGridDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyTalentGridDefinition());
        case 'DestinyDefinitionsDestinyTalentNodeCategory':
          return dson.map(value, new DestinyDefinitionsDestinyTalentNodeCategory());
        case 'DestinyDefinitionsDestinyTalentNodeDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyTalentNodeDefinition());
        case 'DestinyDefinitionsDestinyTalentNodeExclusiveSetDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyTalentNodeExclusiveSetDefinition());
        case 'DestinyDefinitionsDestinyTalentNodeStepDamageTypes':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDefinitionsDestinyTalentNodeStepGroups':
          return dson.map(value, new DestinyDefinitionsDestinyTalentNodeStepGroups());
        case 'DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDefinitionsDestinyTalentNodeStepImpactEffects':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDefinitionsDestinyTalentNodeStepLightAbilities':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDefinitionsDestinyUnlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyUnlockDefinition());
        case 'DestinyDefinitionsDestinyUnlockExpressionDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyUnlockExpressionDefinition());
        case 'DestinyDefinitionsDestinyVendorAcceptedItemDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorAcceptedItemDefinition());
        case 'DestinyDefinitionsDestinyVendorActionDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorActionDefinition());
        case 'DestinyDefinitionsDestinyVendorCategoryEntryDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorCategoryEntryDefinition());
        case 'DestinyDefinitionsDestinyVendorCategoryOverlayDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorCategoryOverlayDefinition());
        case 'DestinyDefinitionsDestinyVendorDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorDefinition());
        case 'DestinyDefinitionsDestinyVendorDisplayPropertiesDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorDisplayPropertiesDefinition());
        case 'DestinyDefinitionsDestinyVendorInteractionDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorInteractionDefinition());
        case 'DestinyDefinitionsDestinyVendorInteractionReplyDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorInteractionReplyDefinition());
        case 'DestinyDefinitionsDestinyVendorInteractionSackEntryDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorInteractionSackEntryDefinition());
        case 'DestinyDefinitionsDestinyVendorInventoryFlyoutBucketDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorInventoryFlyoutBucketDefinition());
        case 'DestinyDefinitionsDestinyVendorInventoryFlyoutDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorInventoryFlyoutDefinition());
        case 'DestinyDefinitionsDestinyVendorItemDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorItemDefinition());
        case 'DestinyDefinitionsDestinyVendorRequirementDisplayEntryDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorRequirementDisplayEntryDefinition());
        case 'DestinyDefinitionsDestinyVendorSaleItemActionBlockDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorSaleItemActionBlockDefinition());
        case 'DestinyDefinitionsDestinyVendorServiceDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorServiceDefinition());
        case 'DestinyDefinitionsDirectorDestinyActivityGraphArtElementDefinition':
          return dson.map(value, new DestinyDefinitionsDirectorDestinyActivityGraphArtElementDefinition());
        case 'DestinyDefinitionsDirectorDestinyActivityGraphConnectionDefinition':
          return dson.map(value, new DestinyDefinitionsDirectorDestinyActivityGraphConnectionDefinition());
        case 'DestinyDefinitionsDirectorDestinyActivityGraphDefinition':
          return dson.map(value, new DestinyDefinitionsDirectorDestinyActivityGraphDefinition());
        case 'DestinyDefinitionsDirectorDestinyActivityGraphDisplayObjectiveDefinition':
          return dson.map(value, new DestinyDefinitionsDirectorDestinyActivityGraphDisplayObjectiveDefinition());
        case 'DestinyDefinitionsDirectorDestinyActivityGraphDisplayProgressionDefinition':
          return dson.map(value, new DestinyDefinitionsDirectorDestinyActivityGraphDisplayProgressionDefinition());
        case 'DestinyDefinitionsDirectorDestinyActivityGraphNodeActivityDefinition':
          return dson.map(value, new DestinyDefinitionsDirectorDestinyActivityGraphNodeActivityDefinition());
        case 'DestinyDefinitionsDirectorDestinyActivityGraphNodeDefinition':
          return dson.map(value, new DestinyDefinitionsDirectorDestinyActivityGraphNodeDefinition());
        case 'DestinyDefinitionsDirectorDestinyActivityGraphNodeFeaturingStateDefinition':
          return dson.map(value, new DestinyDefinitionsDirectorDestinyActivityGraphNodeFeaturingStateDefinition());
        case 'DestinyDefinitionsDirectorDestinyLinkedGraphDefinition':
          return dson.map(value, new DestinyDefinitionsDirectorDestinyLinkedGraphDefinition());
        case 'DestinyDefinitionsDirectorDestinyLinkedGraphEntryDefinition':
          return dson.map(value, new DestinyDefinitionsDirectorDestinyLinkedGraphEntryDefinition());
        case 'DestinyDefinitionsItemsDestinyDerivedItemCategoryDefinition':
          return dson.map(value, new DestinyDefinitionsItemsDestinyDerivedItemCategoryDefinition());
        case 'DestinyDefinitionsItemsDestinyDerivedItemDefinition':
          return dson.map(value, new DestinyDefinitionsItemsDestinyDerivedItemDefinition());
        case 'DestinyDefinitionsItemsDestinyItemPlugDefinition':
          return dson.map(value, new DestinyDefinitionsItemsDestinyItemPlugDefinition());
        case 'DestinyDefinitionsItemsDestinyItemTierTypeDefinition':
          return dson.map(value, new DestinyDefinitionsItemsDestinyItemTierTypeDefinition());
        case 'DestinyDefinitionsItemsDestinyItemTierTypeInfusionBlock':
          return dson.map(value, new DestinyDefinitionsItemsDestinyItemTierTypeInfusionBlock());
        case 'DestinyDefinitionsItemsDestinyPlugRuleDefinition':
          return dson.map(value, new DestinyDefinitionsItemsDestinyPlugRuleDefinition());
        case 'DestinyDefinitionsLoreDestinyLoreDefinition':
          return dson.map(value, new DestinyDefinitionsLoreDestinyLoreDefinition());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneActivityDefinition':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneActivityDefinition());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneActivityVariantDefinition':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneActivityVariantDefinition());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneDefinition':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneDefinition());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneQuestDefinition':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneQuestDefinition());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardItem':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardItem());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardsDefinition':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardsDefinition());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneRewardCategoryDefinition':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneRewardCategoryDefinition());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneRewardEntryDefinition':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneRewardEntryDefinition());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDefinitionsMilestonesDestinyMilestoneValueDefinition':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneValueDefinition());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneVendorDefinition':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneVendorDefinition());
        case 'DestinyDefinitionsProgressionDestinyProgressionLevelRequirementDefinition':
          return dson.map(value, new DestinyDefinitionsProgressionDestinyProgressionLevelRequirementDefinition());
        case 'DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition':
          return dson.map(value, new DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition());
        case 'DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition':
          return dson.map(value, new DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition());
        case 'DestinyDefinitionsSocketsDestinySocketCategoryDefinition':
          return dson.map(value, new DestinyDefinitionsSocketsDestinySocketCategoryDefinition());
        case 'DestinyDefinitionsSocketsDestinySocketTypeDefinition':
          return dson.map(value, new DestinyDefinitionsSocketsDestinySocketTypeDefinition());
        case 'DestinyDefinitionsSourcesDestinyItemSourceDefinition':
          return dson.map(value, new DestinyDefinitionsSourcesDestinyItemSourceDefinition());
        case 'DestinyDestinyActivity':
          return dson.map(value, new DestinyDestinyActivity());
        case 'DestinyDestinyActivityDifficultyTier':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyActivityModeCategory':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyActivityNavPointType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyClass':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyComponentType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyEquipItemResult':
          return dson.map(value, new DestinyDestinyEquipItemResult());
        case 'DestinyDestinyEquipItemResults':
          return dson.map(value, new DestinyDestinyEquipItemResults());
        case 'DestinyDestinyGameVersions':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyGatingScope':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyGender':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyItemQuantity':
          return dson.map(value, new DestinyDestinyItemQuantity());
        case 'DestinyDestinyItemSortType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyItemSubType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyItemType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyObjectiveGrantStyle':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyProgression':
          return dson.map(value, new DestinyDestinyProgression());
        case 'DestinyDestinyProgressionScope':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyProgressionStepDisplayEffect':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyRace':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinySocketVisibility':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyStat':
          return dson.map(value, new DestinyDestinyStat());
        case 'DestinyDestinyStatAggregationType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyTalentNode':
          return dson.map(value, new DestinyDestinyTalentNode());
        case 'DestinyDestinyTalentNodeStatBlock':
          return dson.map(value, new DestinyDestinyTalentNodeStatBlock());
        case 'DestinyDestinyTalentNodeState':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyUnlockStatus':
          return dson.map(value, new DestinyDestinyUnlockStatus());
        case 'DestinyDestinyUnlockValueUIStyle':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyVendorInteractionRewardSelection':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyVendorItemRefundPolicy':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyVendorReplyType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDyeReference':
          return dson.map(value, new DestinyDyeReference());
        case 'DestinyEntitiesCharactersDestinyCharacterActivitiesComponent':
          return dson.map(value, new DestinyEntitiesCharactersDestinyCharacterActivitiesComponent());
        case 'DestinyEntitiesCharactersDestinyCharacterComponent':
          return dson.map(value, new DestinyEntitiesCharactersDestinyCharacterComponent());
        case 'DestinyEntitiesCharactersDestinyCharacterProgressionComponent':
          return dson.map(value, new DestinyEntitiesCharactersDestinyCharacterProgressionComponent());
        case 'DestinyEntitiesCharactersDestinyCharacterRenderComponent':
          return dson.map(value, new DestinyEntitiesCharactersDestinyCharacterRenderComponent());
        case 'DestinyEntitiesInventoryDestinyInventoryComponent':
          return dson.map(value, new DestinyEntitiesInventoryDestinyInventoryComponent());
        case 'DestinyEntitiesItemsDestinyItemComponent':
          return dson.map(value, new DestinyEntitiesItemsDestinyItemComponent());
        case 'DestinyEntitiesItemsDestinyItemInstanceComponent':
          return dson.map(value, new DestinyEntitiesItemsDestinyItemInstanceComponent());
        case 'DestinyEntitiesItemsDestinyItemObjectivesComponent':
          return dson.map(value, new DestinyEntitiesItemsDestinyItemObjectivesComponent());
        case 'DestinyEntitiesItemsDestinyItemPerksComponent':
          return dson.map(value, new DestinyEntitiesItemsDestinyItemPerksComponent());
        case 'DestinyEntitiesItemsDestinyItemRenderComponent':
          return dson.map(value, new DestinyEntitiesItemsDestinyItemRenderComponent());
        case 'DestinyEntitiesItemsDestinyItemSocketState':
          return dson.map(value, new DestinyEntitiesItemsDestinyItemSocketState());
        case 'DestinyEntitiesItemsDestinyItemSocketsComponent':
          return dson.map(value, new DestinyEntitiesItemsDestinyItemSocketsComponent());
        case 'DestinyEntitiesItemsDestinyItemStatsComponent':
          return dson.map(value, new DestinyEntitiesItemsDestinyItemStatsComponent());
        case 'DestinyEntitiesItemsDestinyItemTalentGridComponent':
          return dson.map(value, new DestinyEntitiesItemsDestinyItemTalentGridComponent());
        case 'DestinyEntitiesProfilesDestinyProfileComponent':
          return dson.map(value, new DestinyEntitiesProfilesDestinyProfileComponent());
        case 'DestinyEntitiesProfilesDestinyVendorReceiptsComponent':
          return dson.map(value, new DestinyEntitiesProfilesDestinyVendorReceiptsComponent());
        case 'DestinyEntitiesVendorsDestinyVendorCategoriesComponent':
          return dson.map(value, new DestinyEntitiesVendorsDestinyVendorCategoriesComponent());
        case 'DestinyEntitiesVendorsDestinyVendorCategory':
          return dson.map(value, new DestinyEntitiesVendorsDestinyVendorCategory());
        case 'DestinyEntitiesVendorsDestinyVendorComponent':
          return dson.map(value, new DestinyEntitiesVendorsDestinyVendorComponent());
        case 'DestinyEntitiesVendorsDestinyVendorSaleItemComponent':
          return dson.map(value, new DestinyEntitiesVendorsDestinyVendorSaleItemComponent());
        case 'DestinyEquipFailureReason':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyEquippingItemBlockAttributes':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyHistoricalStatsDefinitionsDestinyActivityModeType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyHistoricalStatsDefinitionsDestinyActivityModeTypeList':
          return dson.map(value, new DestinyHistoricalStatsDefinitionsDestinyActivityModeTypeList());
        case 'DestinyHistoricalStatsDefinitionsDestinyHistoricalStatsDefinition':
          return dson.map(value, new DestinyHistoricalStatsDefinitionsDestinyHistoricalStatsDefinition());
        case 'DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyHistoricalStatsDefinitionsDestinyStatsGroupType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyHistoricalStatsDefinitionsPeriodType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyHistoricalStatsDefinitionsPeriodTypeList':
          return dson.map(value, new DestinyHistoricalStatsDefinitionsPeriodTypeList());
        case 'DestinyHistoricalStatsDefinitionsUnitType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyHistoricalStatsDestinyActivityHistoryResults':
          return dson.map(value, new DestinyHistoricalStatsDestinyActivityHistoryResults());
        case 'DestinyHistoricalStatsDestinyAggregateActivityResults':
          return dson.map(value, new DestinyHistoricalStatsDestinyAggregateActivityResults());
        case 'DestinyHistoricalStatsDestinyAggregateActivityStats':
          return dson.map(value, new DestinyHistoricalStatsDestinyAggregateActivityStats());
        case 'DestinyHistoricalStatsDestinyClanAggregateStat':
          return dson.map(value, new DestinyHistoricalStatsDestinyClanAggregateStat());
        case 'DestinyHistoricalStatsDestinyHistoricalStatsAccountResult':
          return dson.map(value, new DestinyHistoricalStatsDestinyHistoricalStatsAccountResult());
        case 'DestinyHistoricalStatsDestinyHistoricalStatsActivity':
          return dson.map(value, new DestinyHistoricalStatsDestinyHistoricalStatsActivity());
        case 'DestinyHistoricalStatsDestinyHistoricalStatsByPeriod':
          return dson.map(value, new DestinyHistoricalStatsDestinyHistoricalStatsByPeriod());
        case 'DestinyHistoricalStatsDestinyHistoricalStatsPerCharacter':
          return dson.map(value, new DestinyHistoricalStatsDestinyHistoricalStatsPerCharacter());
        case 'DestinyHistoricalStatsDestinyHistoricalStatsPeriodGroup':
          return dson.map(value, new DestinyHistoricalStatsDestinyHistoricalStatsPeriodGroup());
        case 'DestinyHistoricalStatsDestinyHistoricalStatsResults':
          return dson.map(value, new DestinyHistoricalStatsDestinyHistoricalStatsResults());
        case 'DestinyHistoricalStatsDestinyHistoricalStatsValue':
          return dson.map(value, new DestinyHistoricalStatsDestinyHistoricalStatsValue());
        case 'DestinyHistoricalStatsDestinyHistoricalStatsValuePair':
          return dson.map(value, new DestinyHistoricalStatsDestinyHistoricalStatsValuePair());
        case 'DestinyHistoricalStatsDestinyHistoricalStatsWithMerged':
          return dson.map(value, new DestinyHistoricalStatsDestinyHistoricalStatsWithMerged());
        case 'DestinyHistoricalStatsDestinyHistoricalWeaponStats':
          return dson.map(value, new DestinyHistoricalStatsDestinyHistoricalWeaponStats());
        case 'DestinyHistoricalStatsDestinyHistoricalWeaponStatsData':
          return dson.map(value, new DestinyHistoricalStatsDestinyHistoricalWeaponStatsData());
        case 'DestinyHistoricalStatsDestinyLeaderboard':
          return dson.map(value, new DestinyHistoricalStatsDestinyLeaderboard());
        case 'DestinyHistoricalStatsDestinyLeaderboardEntry':
          return dson.map(value, new DestinyHistoricalStatsDestinyLeaderboardEntry());
        case 'DestinyHistoricalStatsDestinyLeaderboardResults':
          return dson.map(value, new DestinyHistoricalStatsDestinyLeaderboardResults());
        case 'DestinyHistoricalStatsDestinyPlayer':
          return dson.map(value, new DestinyHistoricalStatsDestinyPlayer());
        case 'DestinyHistoricalStatsDestinyPostGameCarnageReportData':
          return dson.map(value, new DestinyHistoricalStatsDestinyPostGameCarnageReportData());
        case 'DestinyHistoricalStatsDestinyPostGameCarnageReportEntry':
          return dson.map(value, new DestinyHistoricalStatsDestinyPostGameCarnageReportEntry());
        case 'DestinyHistoricalStatsDestinyPostGameCarnageReportExtendedData':
          return dson.map(value, new DestinyHistoricalStatsDestinyPostGameCarnageReportExtendedData());
        case 'DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry':
          return dson.map(value, new DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry());
        case 'DestinyItemBindStatus':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyItemComponentSetOfint32':
          return dson.map(value, new DestinyItemComponentSetOfint32());
        case 'DestinyItemComponentSetOfint64':
          return dson.map(value, new DestinyItemComponentSetOfint64());
        case 'DestinyItemLocation':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyItemState':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyMilestonesDestinyMilestone':
          return dson.map(value, new DestinyMilestonesDestinyMilestone());
        case 'DestinyMilestonesDestinyMilestoneActivity':
          return dson.map(value, new DestinyMilestonesDestinyMilestoneActivity());
        case 'DestinyMilestonesDestinyMilestoneActivityCompletionStatus':
          return dson.map(value, new DestinyMilestonesDestinyMilestoneActivityCompletionStatus());
        case 'DestinyMilestonesDestinyMilestoneActivityPhase':
          return dson.map(value, new DestinyMilestonesDestinyMilestoneActivityPhase());
        case 'DestinyMilestonesDestinyMilestoneActivityVariant':
          return dson.map(value, new DestinyMilestonesDestinyMilestoneActivityVariant());
        case 'DestinyMilestonesDestinyMilestoneContent':
          return dson.map(value, new DestinyMilestonesDestinyMilestoneContent());
        case 'DestinyMilestonesDestinyMilestoneContentItemCategory':
          return dson.map(value, new DestinyMilestonesDestinyMilestoneContentItemCategory());
        case 'DestinyMilestonesDestinyMilestoneQuest':
          return dson.map(value, new DestinyMilestonesDestinyMilestoneQuest());
        case 'DestinyMilestonesDestinyMilestoneRewardCategory':
          return dson.map(value, new DestinyMilestonesDestinyMilestoneRewardCategory());
        case 'DestinyMilestonesDestinyMilestoneRewardEntry':
          return dson.map(value, new DestinyMilestonesDestinyMilestoneRewardEntry());
        case 'DestinyMilestonesDestinyPublicMilestone':
          return dson.map(value, new DestinyMilestonesDestinyPublicMilestone());
        case 'DestinyMilestonesDestinyPublicMilestoneActivity':
          return dson.map(value, new DestinyMilestonesDestinyPublicMilestoneActivity());
        case 'DestinyMilestonesDestinyPublicMilestoneActivityVariant':
          return dson.map(value, new DestinyMilestonesDestinyPublicMilestoneActivityVariant());
        case 'DestinyMilestonesDestinyPublicMilestoneChallenge':
          return dson.map(value, new DestinyMilestonesDestinyPublicMilestoneChallenge());
        case 'DestinyMilestonesDestinyPublicMilestoneQuest':
          return dson.map(value, new DestinyMilestonesDestinyPublicMilestoneQuest());
        case 'DestinyPerksDestinyPerkReference':
          return dson.map(value, new DestinyPerksDestinyPerkReference());
        case 'DestinyProgressionDestinyFactionProgression':
          return dson.map(value, new DestinyProgressionDestinyFactionProgression());
        case 'DestinyQuestsDestinyObjectiveProgress':
          return dson.map(value, new DestinyQuestsDestinyObjectiveProgress());
        case 'DestinyQuestsDestinyQuestStatus':
          return dson.map(value, new DestinyQuestsDestinyQuestStatus());
        case 'DestinyRequestsActionsDestinyActionRequest':
          return dson.map(value, new DestinyRequestsActionsDestinyActionRequest());
        case 'DestinyRequestsActionsDestinyCharacterActionRequest':
          return dson.map(value, new DestinyRequestsActionsDestinyCharacterActionRequest());
        case 'DestinyRequestsActionsDestinyItemActionRequest':
          return dson.map(value, new DestinyRequestsActionsDestinyItemActionRequest());
        case 'DestinyRequestsActionsDestinyItemSetActionRequest':
          return dson.map(value, new DestinyRequestsActionsDestinyItemSetActionRequest());
        case 'DestinyRequestsActionsDestinyItemStateRequest':
          return dson.map(value, new DestinyRequestsActionsDestinyItemStateRequest());
        case 'DestinyRequestsDestinyItemTransferRequest':
          return dson.map(value, new DestinyRequestsDestinyItemTransferRequest());
        case 'DestinyResponsesDestinyCharacterResponse':
          return dson.map(value, new DestinyResponsesDestinyCharacterResponse());
        case 'DestinyResponsesDestinyItemResponse':
          return dson.map(value, new DestinyResponsesDestinyItemResponse());
        case 'DestinyResponsesDestinyProfileResponse':
          return dson.map(value, new DestinyResponsesDestinyProfileResponse());
        case 'DestinyResponsesDestinyVendorResponse':
          return dson.map(value, new DestinyResponsesDestinyVendorResponse());
        case 'DestinySpecialItemType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyTierType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyTransferStatuses':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyVendorItemStatus':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyVendorsDestinyVendorReceipt':
          return dson.map(value, new DestinyVendorsDestinyVendorReceipt());
        case 'DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent':
          return dson.map(value, new DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent());
        case 'DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent':
          return dson.map(value, new DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent());
        case 'DictionaryComponentResponseOfint32AndDestinyItemPerksComponent':
          return dson.map(value, new DictionaryComponentResponseOfint32AndDestinyItemPerksComponent());
        case 'DictionaryComponentResponseOfint32AndDestinyItemRenderComponent':
          return dson.map(value, new DictionaryComponentResponseOfint32AndDestinyItemRenderComponent());
        case 'DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent':
          return dson.map(value, new DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent());
        case 'DictionaryComponentResponseOfint32AndDestinyItemStatsComponent':
          return dson.map(value, new DictionaryComponentResponseOfint32AndDestinyItemStatsComponent());
        case 'DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent':
          return dson.map(value, new DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent());
        case 'DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent':
          return dson.map(value, new DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyCharacterComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyCharacterComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyInventoryComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyInventoryComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyItemPerksComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyItemPerksComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyItemRenderComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyItemRenderComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyItemStatsComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyItemStatsComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyKiosksComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyKiosksComponent());
        case 'DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent':
          return dson.map(value, new DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent());
        case 'EntitiesEntityActionResult':
          return dson.map(value, new EntitiesEntityActionResult());
        case 'ExceptionsPlatformErrorCodes':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ForumCommunityContentSortMode':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ForumForumFlagsEnum':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ForumForumMediaType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ForumForumPostCategoryEnums':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ForumForumPostPopularity':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ForumForumPostSortEnum':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ForumForumRecruitmentDetail':
          return dson.map(value, new ForumForumRecruitmentDetail());
        case 'ForumForumRecruitmentIntensityLabel':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ForumForumRecruitmentToneLabel':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ForumForumTopicsCategoryFiltersEnum':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ForumForumTopicsQuickDateEnum':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ForumForumTopicsSortEnum':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ForumPollResponse':
          return dson.map(value, new ForumPollResponse());
        case 'ForumPollResult':
          return dson.map(value, new ForumPollResult());
        case 'ForumPostResponse':
          return dson.map(value, new ForumPostResponse());
        case 'ForumPostSearchResponse':
          return dson.map(value, new ForumPostSearchResponse());
        case 'GroupsV2Capabilities':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2ChatSecuritySetting':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2ClanBanner':
          return dson.map(value, new GroupsV2ClanBanner());
        case 'GroupsV2GroupAction':
          return dson.map(value, new GroupsV2GroupAction());
        case 'GroupsV2GroupAllianceStatus':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2GroupApplicationListRequest':
          return dson.map(value, new GroupsV2GroupApplicationListRequest());
        case 'GroupsV2GroupApplicationRequest':
          return dson.map(value, new GroupsV2GroupApplicationRequest());
        case 'GroupsV2GroupApplicationResolveState':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2GroupApplicationResponse':
          return dson.map(value, new GroupsV2GroupApplicationResponse());
        case 'GroupsV2GroupBan':
          return dson.map(value, new GroupsV2GroupBan());
        case 'GroupsV2GroupBanRequest':
          return dson.map(value, new GroupsV2GroupBanRequest());
        case 'GroupsV2GroupCreationResponse':
          return dson.map(value, new GroupsV2GroupCreationResponse());
        case 'GroupsV2GroupDateRange':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2GroupEditAction':
          return dson.map(value, new GroupsV2GroupEditAction());
        case 'GroupsV2GroupFeatures':
          return dson.map(value, new GroupsV2GroupFeatures());
        case 'GroupsV2GroupHomepage':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2GroupMember':
          return dson.map(value, new GroupsV2GroupMember());
        case 'GroupsV2GroupMemberApplication':
          return dson.map(value, new GroupsV2GroupMemberApplication());
        case 'GroupsV2GroupMemberCountFilter':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2GroupMemberLeaveResult':
          return dson.map(value, new GroupsV2GroupMemberLeaveResult());
        case 'GroupsV2GroupMembership':
          return dson.map(value, new GroupsV2GroupMembership());
        case 'GroupsV2GroupMembershipBase':
          return dson.map(value, new GroupsV2GroupMembershipBase());
        case 'GroupsV2GroupMembershipSearchResponse':
          return dson.map(value, new GroupsV2GroupMembershipSearchResponse());
        case 'GroupsV2GroupOptionalConversation':
          return dson.map(value, new GroupsV2GroupOptionalConversation());
        case 'GroupsV2GroupOptionalConversationAddRequest':
          return dson.map(value, new GroupsV2GroupOptionalConversationAddRequest());
        case 'GroupsV2GroupOptionalConversationEditRequest':
          return dson.map(value, new GroupsV2GroupOptionalConversationEditRequest());
        case 'GroupsV2GroupOptionsEditAction':
          return dson.map(value, new GroupsV2GroupOptionsEditAction());
        case 'GroupsV2GroupPostPublicity':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2GroupPotentialMember':
          return dson.map(value, new GroupsV2GroupPotentialMember());
        case 'GroupsV2GroupPotentialMemberStatus':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2GroupPotentialMembership':
          return dson.map(value, new GroupsV2GroupPotentialMembership());
        case 'GroupsV2GroupPotentialMembershipSearchResponse':
          return dson.map(value, new GroupsV2GroupPotentialMembershipSearchResponse());
        case 'GroupsV2GroupQuery':
          return dson.map(value, new GroupsV2GroupQuery());
        case 'GroupsV2GroupResponse':
          return dson.map(value, new GroupsV2GroupResponse());
        case 'GroupsV2GroupSearchResponse':
          return dson.map(value, new GroupsV2GroupSearchResponse());
        case 'GroupsV2GroupSortBy':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2GroupType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2GroupUserBase':
          return dson.map(value, new GroupsV2GroupUserBase());
        case 'GroupsV2GroupV2':
          return dson.map(value, new GroupsV2GroupV2());
        case 'GroupsV2GroupV2Card':
          return dson.map(value, new GroupsV2GroupV2Card());
        case 'GroupsV2GroupV2ClanInfo':
          return dson.map(value, new GroupsV2GroupV2ClanInfo());
        case 'GroupsV2GroupV2ClanInfoAndInvestment':
          return dson.map(value, new GroupsV2GroupV2ClanInfoAndInvestment());
        case 'GroupsV2GroupsForMemberFilter':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2HostGuidedGamesPermissionLevel':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2MembershipOption':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GroupsV2RuntimeGroupMemberType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'IgnoresIgnoreLength':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'IgnoresIgnoreResponse':
          return dson.map(value, new IgnoresIgnoreResponse());
        case 'IgnoresIgnoreStatus':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'InlineResponse200':
          return dson.map(value, new InlineResponse200());
        case 'InlineResponse2001':
          return dson.map(value, new InlineResponse2001());
        case 'InlineResponse20010':
          return dson.map(value, new InlineResponse20010());
        case 'InlineResponse20011':
          return dson.map(value, new InlineResponse20011());
        case 'InlineResponse20012':
          return dson.map(value, new InlineResponse20012());
        case 'InlineResponse20013':
          return dson.map(value, new InlineResponse20013());
        case 'InlineResponse20014':
          return dson.map(value, new InlineResponse20014());
        case 'InlineResponse20015':
          return dson.map(value, new InlineResponse20015());
        case 'InlineResponse20016':
          return dson.map(value, new InlineResponse20016());
        case 'InlineResponse20017':
          return dson.map(value, new InlineResponse20017());
        case 'InlineResponse20018':
          return dson.map(value, new InlineResponse20018());
        case 'InlineResponse20019':
          return dson.map(value, new InlineResponse20019());
        case 'InlineResponse2002':
          return dson.map(value, new InlineResponse2002());
        case 'InlineResponse20020':
          return dson.map(value, new InlineResponse20020());
        case 'InlineResponse20021':
          return dson.map(value, new InlineResponse20021());
        case 'InlineResponse20022':
          return dson.map(value, new InlineResponse20022());
        case 'InlineResponse20023':
          return dson.map(value, new InlineResponse20023());
        case 'InlineResponse20024':
          return dson.map(value, new InlineResponse20024());
        case 'InlineResponse20025':
          return dson.map(value, new InlineResponse20025());
        case 'InlineResponse20026':
          return dson.map(value, new InlineResponse20026());
        case 'InlineResponse20027':
          return dson.map(value, new InlineResponse20027());
        case 'InlineResponse20028':
          return dson.map(value, new InlineResponse20028());
        case 'InlineResponse20029':
          return dson.map(value, new InlineResponse20029());
        case 'InlineResponse2003':
          return dson.map(value, new InlineResponse2003());
        case 'InlineResponse20030':
          return dson.map(value, new InlineResponse20030());
        case 'InlineResponse20031':
          return dson.map(value, new InlineResponse20031());
        case 'InlineResponse20032':
          return dson.map(value, new InlineResponse20032());
        case 'InlineResponse20033':
          return dson.map(value, new InlineResponse20033());
        case 'InlineResponse20034':
          return dson.map(value, new InlineResponse20034());
        case 'InlineResponse20035':
          return dson.map(value, new InlineResponse20035());
        case 'InlineResponse20036':
          return dson.map(value, new InlineResponse20036());
        case 'InlineResponse20037':
          return dson.map(value, new InlineResponse20037());
        case 'InlineResponse20038':
          return dson.map(value, new InlineResponse20038());
        case 'InlineResponse20039':
          return dson.map(value, new InlineResponse20039());
        case 'InlineResponse2004':
          return dson.map(value, new InlineResponse2004());
        case 'InlineResponse20040':
          return dson.map(value, new InlineResponse20040());
        case 'InlineResponse20041':
          return dson.map(value, new InlineResponse20041());
        case 'InlineResponse20042':
          return dson.map(value, new InlineResponse20042());
        case 'InlineResponse20043':
          return dson.map(value, new InlineResponse20043());
        case 'InlineResponse20044':
          return dson.map(value, new InlineResponse20044());
        case 'InlineResponse20045':
          return dson.map(value, new InlineResponse20045());
        case 'InlineResponse20046':
          return dson.map(value, new InlineResponse20046());
        case 'InlineResponse20047':
          return dson.map(value, new InlineResponse20047());
        case 'InlineResponse20048':
          return dson.map(value, new InlineResponse20048());
        case 'InlineResponse20049':
          return dson.map(value, new InlineResponse20049());
        case 'InlineResponse2005':
          return dson.map(value, new InlineResponse2005());
        case 'InlineResponse20050':
          return dson.map(value, new InlineResponse20050());
        case 'InlineResponse20051':
          return dson.map(value, new InlineResponse20051());
        case 'InlineResponse20052':
          return dson.map(value, new InlineResponse20052());
        case 'InlineResponse20053':
          return dson.map(value, new InlineResponse20053());
        case 'InlineResponse20054':
          return dson.map(value, new InlineResponse20054());
        case 'InlineResponse2006':
          return dson.map(value, new InlineResponse2006());
        case 'InlineResponse2007':
          return dson.map(value, new InlineResponse2007());
        case 'InlineResponse2008':
          return dson.map(value, new InlineResponse2008());
        case 'InlineResponse2009':
          return dson.map(value, new InlineResponse2009());
        case 'InterpolationInterpolationPoint':
          return dson.map(value, new InterpolationInterpolationPoint());
        case 'InterpolationInterpolationPointFloat':
          return dson.map(value, new InterpolationInterpolationPointFloat());
        case 'LinksHyperlinkReference':
          return dson.map(value, new LinksHyperlinkReference());
        case 'MessagesResponsesSaveMessageResult':
          return dson.map(value, new MessagesResponsesSaveMessageResult());
        case 'PartnershipsPartnershipType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'PartnershipsPublicPartnershipDetail':
          return dson.map(value, new PartnershipsPublicPartnershipDetail());
        case 'QueriesPagedQuery':
          return dson.map(value, new QueriesPagedQuery());
        case 'QueriesSearchResult':
          return dson.map(value, new QueriesSearchResult());
        case 'SearchResultOfCommunityLiveStatus':
          return dson.map(value, new SearchResultOfCommunityLiveStatus());
        case 'SearchResultOfDestinyEntitySearchResultItem':
          return dson.map(value, new SearchResultOfDestinyEntitySearchResultItem());
        case 'SearchResultOfGroupBan':
          return dson.map(value, new SearchResultOfGroupBan());
        case 'SearchResultOfGroupMember':
          return dson.map(value, new SearchResultOfGroupMember());
        case 'SearchResultOfGroupMemberApplication':
          return dson.map(value, new SearchResultOfGroupMemberApplication());
        case 'SearchResultOfGroupMembership':
          return dson.map(value, new SearchResultOfGroupMembership());
        case 'SearchResultOfGroupPotentialMembership':
          return dson.map(value, new SearchResultOfGroupPotentialMembership());
        case 'SearchResultOfGroupV2Card':
          return dson.map(value, new SearchResultOfGroupV2Card());
        case 'SearchResultOfPostResponse':
          return dson.map(value, new SearchResultOfPostResponse());
        case 'SearchResultOfTrendingEntry':
          return dson.map(value, new SearchResultOfTrendingEntry());
        case 'SingleComponentResponseOfDestinyCharacterActivitiesComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyCharacterActivitiesComponent());
        case 'SingleComponentResponseOfDestinyCharacterComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyCharacterComponent());
        case 'SingleComponentResponseOfDestinyCharacterProgressionComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyCharacterProgressionComponent());
        case 'SingleComponentResponseOfDestinyCharacterRenderComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyCharacterRenderComponent());
        case 'SingleComponentResponseOfDestinyInventoryComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyInventoryComponent());
        case 'SingleComponentResponseOfDestinyItemComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyItemComponent());
        case 'SingleComponentResponseOfDestinyItemInstanceComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyItemInstanceComponent());
        case 'SingleComponentResponseOfDestinyItemObjectivesComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyItemObjectivesComponent());
        case 'SingleComponentResponseOfDestinyItemPerksComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyItemPerksComponent());
        case 'SingleComponentResponseOfDestinyItemRenderComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyItemRenderComponent());
        case 'SingleComponentResponseOfDestinyItemSocketsComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyItemSocketsComponent());
        case 'SingleComponentResponseOfDestinyItemStatsComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyItemStatsComponent());
        case 'SingleComponentResponseOfDestinyItemTalentGridComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyItemTalentGridComponent());
        case 'SingleComponentResponseOfDestinyKiosksComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyKiosksComponent());
        case 'SingleComponentResponseOfDestinyProfileComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyProfileComponent());
        case 'SingleComponentResponseOfDestinyVendorCategoriesComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyVendorCategoriesComponent());
        case 'SingleComponentResponseOfDestinyVendorComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyVendorComponent());
        case 'SingleComponentResponseOfDestinyVendorReceiptsComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyVendorReceiptsComponent());
        case 'TagsModelsContractsTagResponse':
          return dson.map(value, new TagsModelsContractsTagResponse());
        case 'TrendingTrendingCategories':
          return dson.map(value, new TrendingTrendingCategories());
        case 'TrendingTrendingCategory':
          return dson.map(value, new TrendingTrendingCategory());
        case 'TrendingTrendingDetail':
          return dson.map(value, new TrendingTrendingDetail());
        case 'TrendingTrendingEntry':
          return dson.map(value, new TrendingTrendingEntry());
        case 'TrendingTrendingEntryCommunityCreation':
          return dson.map(value, new TrendingTrendingEntryCommunityCreation());
        case 'TrendingTrendingEntryCommunityStream':
          return dson.map(value, new TrendingTrendingEntryCommunityStream());
        case 'TrendingTrendingEntryDestinyActivity':
          return dson.map(value, new TrendingTrendingEntryDestinyActivity());
        case 'TrendingTrendingEntryDestinyItem':
          return dson.map(value, new TrendingTrendingEntryDestinyItem());
        case 'TrendingTrendingEntryDestinyRitual':
          return dson.map(value, new TrendingTrendingEntryDestinyRitual());
        case 'TrendingTrendingEntryNews':
          return dson.map(value, new TrendingTrendingEntryNews());
        case 'TrendingTrendingEntrySupportArticle':
          return dson.map(value, new TrendingTrendingEntrySupportArticle());
        case 'TrendingTrendingEntryType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'UserAckState':
          return dson.map(value, new UserAckState());
        case 'UserGeneralUser':
          return dson.map(value, new UserGeneralUser());
        case 'UserModelsUserAlias':
          return dson.map(value, new UserModelsUserAlias());
        case 'UserUserInfoCard':
          return dson.map(value, new UserUserInfoCard());
        case 'UserUserMembership':
          return dson.map(value, new UserUserMembership());
        case 'UserUserMembershipData':
          return dson.map(value, new UserUserMembershipData());
        case 'UserUserToUserContext':
          return dson.map(value, new UserUserToUserContext());
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = JSON.decode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else if (obj is String) {
      serialized = obj;
    } else {
      serialized = dson.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }
}
