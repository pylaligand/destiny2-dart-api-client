part of destiny2_api.api;

const _delimiters = const {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};

// port from Java version
Iterable<QueryParam> _convertParametersForCollectionFormat(
  String collectionFormat, String name, dynamic value) {
  var params = <QueryParam>[];

  // preconditions
  if (name == null || name.isEmpty || value == null) return params;

  if (value is! List) {
    params.add(new QueryParam(name, _parameterToString(value)));
    return params;
  }

  List values = value as List;

  // get the collection format
  collectionFormat = (collectionFormat == null || collectionFormat.isEmpty)
                     ? "csv"
                     : collectionFormat; // default: csv

  if (collectionFormat == "multi") {
    return values.map((v) => new QueryParam(name, _parameterToString(v)));
  }

  String delimiter = _delimiters[collectionFormat] ?? ",";

  params.add(new QueryParam(name, values.map((v)=>_parameterToString(v)).join(delimiter)));
  return params;
}

/// Format the given parameter object into string.
String _parameterToString(dynamic value) {
  if (value == null) {
    return '';
  } else if (value is DateTime) {
    return value.toUtc().toIso8601String();
  } else if (value is ApplicationsApplicationScopes) {
    return new ApplicationsApplicationScopesTypeTransformer().encode(value).toString();
  } else if (value is ApplicationsApplicationStatus) {
    return new ApplicationsApplicationStatusTypeTransformer().encode(value).toString();
  } else if (value is ApplicationsDeveloperRole) {
    return new ApplicationsDeveloperRoleTypeTransformer().encode(value).toString();
  } else if (value is ApplicationsOAuthApplicationType) {
    return new ApplicationsOAuthApplicationTypeTypeTransformer().encode(value).toString();
  } else if (value is BungieMembershipType) {
    return new BungieMembershipTypeTypeTransformer().encode(value).toString();
  } else if (value is CommunityCommunityStatusSort) {
    return new CommunityCommunityStatusSortTypeTransformer().encode(value).toString();
  } else if (value is ComponentsComponentPrivacySetting) {
    return new ComponentsComponentPrivacySettingTypeTransformer().encode(value).toString();
  } else if (value is ContentModelsContentPropertyDataTypeEnum) {
    return new ContentModelsContentPropertyDataTypeEnumTypeTransformer().encode(value).toString();
  } else if (value is DestinyActivityGraphNodeHighlightType) {
    return new DestinyActivityGraphNodeHighlightTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyAdvancedAwaResponseReason) {
    return new DestinyAdvancedAwaResponseReasonTypeTransformer().encode(value).toString();
  } else if (value is DestinyAdvancedAwaType) {
    return new DestinyAdvancedAwaTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyAdvancedAwaUserSelection) {
    return new DestinyAdvancedAwaUserSelectionTypeTransformer().encode(value).toString();
  } else if (value is DestinyBucketCategory) {
    return new DestinyBucketCategoryTypeTransformer().encode(value).toString();
  } else if (value is DestinyBucketScope) {
    return new DestinyBucketScopeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDamageType) {
    return new DestinyDamageTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDefinitionsDestinyRewardSourceCategory) {
    return new DestinyDefinitionsDestinyRewardSourceCategoryTypeTransformer().encode(value).toString();
  } else if (value is DestinyDefinitionsDestinyTalentNodeStepDamageTypes) {
    return new DestinyDefinitionsDestinyTalentNodeStepDamageTypesTypeTransformer().encode(value).toString();
  } else if (value is DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes) {
    return new DestinyDefinitionsDestinyTalentNodeStepGuardianAttributesTypeTransformer().encode(value).toString();
  } else if (value is DestinyDefinitionsDestinyTalentNodeStepImpactEffects) {
    return new DestinyDefinitionsDestinyTalentNodeStepImpactEffectsTypeTransformer().encode(value).toString();
  } else if (value is DestinyDefinitionsDestinyTalentNodeStepLightAbilities) {
    return new DestinyDefinitionsDestinyTalentNodeStepLightAbilitiesTypeTransformer().encode(value).toString();
  } else if (value is DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances) {
    return new DestinyDefinitionsDestinyTalentNodeStepWeaponPerformancesTypeTransformer().encode(value).toString();
  } else if (value is DestinyDefinitionsMilestonesDestinyMilestoneType) {
    return new DestinyDefinitionsMilestonesDestinyMilestoneTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyActivityDifficultyTier) {
    return new DestinyDestinyActivityDifficultyTierTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyActivityModeCategory) {
    return new DestinyDestinyActivityModeCategoryTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyActivityNavPointType) {
    return new DestinyDestinyActivityNavPointTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyAmmunitionType) {
    return new DestinyDestinyAmmunitionTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyClass) {
    return new DestinyDestinyClassTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyCollectibleState) {
    return new DestinyDestinyCollectibleStateTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyComponentType) {
    return new DestinyDestinyComponentTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyGameVersions) {
    return new DestinyDestinyGameVersionsTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyGatingScope) {
    return new DestinyDestinyGatingScopeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyGender) {
    return new DestinyDestinyGenderTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyGraphNodeState) {
    return new DestinyDestinyGraphNodeStateTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyItemSortType) {
    return new DestinyDestinyItemSortTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyItemSubType) {
    return new DestinyDestinyItemSubTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyItemType) {
    return new DestinyDestinyItemTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyObjectiveGrantStyle) {
    return new DestinyDestinyObjectiveGrantStyleTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyPresentationDisplayStyle) {
    return new DestinyDestinyPresentationDisplayStyleTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyPresentationNodeState) {
    return new DestinyDestinyPresentationNodeStateTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyPresentationNodeType) {
    return new DestinyDestinyPresentationNodeTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyPresentationScreenStyle) {
    return new DestinyDestinyPresentationScreenStyleTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyProgressionScope) {
    return new DestinyDestinyProgressionScopeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyProgressionStepDisplayEffect) {
    return new DestinyDestinyProgressionStepDisplayEffectTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyRace) {
    return new DestinyDestinyRaceTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyRecordState) {
    return new DestinyDestinyRecordStateTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyRecordToastStyle) {
    return new DestinyDestinyRecordToastStyleTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyRecordValueStyle) {
    return new DestinyDestinyRecordValueStyleTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyScope) {
    return new DestinyDestinyScopeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinySocketCategoryStyle) {
    return new DestinyDestinySocketCategoryStyleTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinySocketVisibility) {
    return new DestinyDestinySocketVisibilityTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyStatAggregationType) {
    return new DestinyDestinyStatAggregationTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyStatCategory) {
    return new DestinyDestinyStatCategoryTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyTalentNodeState) {
    return new DestinyDestinyTalentNodeStateTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyUnlockValueUIStyle) {
    return new DestinyDestinyUnlockValueUIStyleTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyVendorInteractionRewardSelection) {
    return new DestinyDestinyVendorInteractionRewardSelectionTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyVendorItemRefundPolicy) {
    return new DestinyDestinyVendorItemRefundPolicyTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyVendorItemState) {
    return new DestinyDestinyVendorItemStateTypeTransformer().encode(value).toString();
  } else if (value is DestinyDestinyVendorReplyType) {
    return new DestinyDestinyVendorReplyTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyEquipFailureReason) {
    return new DestinyEquipFailureReasonTypeTransformer().encode(value).toString();
  } else if (value is DestinyEquippingItemBlockAttributes) {
    return new DestinyEquippingItemBlockAttributesTypeTransformer().encode(value).toString();
  } else if (value is DestinyHistoricalStatsDefinitionsDestinyActivityModeType) {
    return new DestinyHistoricalStatsDefinitionsDestinyActivityModeTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType) {
    return new DestinyHistoricalStatsDefinitionsDestinyStatsCategoryTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyHistoricalStatsDefinitionsDestinyStatsGroupType) {
    return new DestinyHistoricalStatsDefinitionsDestinyStatsGroupTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod) {
    return new DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethodTypeTransformer().encode(value).toString();
  } else if (value is DestinyHistoricalStatsDefinitionsPeriodType) {
    return new DestinyHistoricalStatsDefinitionsPeriodTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyHistoricalStatsDefinitionsUnitType) {
    return new DestinyHistoricalStatsDefinitionsUnitTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyItemBindStatus) {
    return new DestinyItemBindStatusTypeTransformer().encode(value).toString();
  } else if (value is DestinyItemLocation) {
    return new DestinyItemLocationTypeTransformer().encode(value).toString();
  } else if (value is DestinyItemPerkVisibility) {
    return new DestinyItemPerkVisibilityTypeTransformer().encode(value).toString();
  } else if (value is DestinyItemState) {
    return new DestinyItemStateTypeTransformer().encode(value).toString();
  } else if (value is DestinyPlugAvailabilityMode) {
    return new DestinyPlugAvailabilityModeTypeTransformer().encode(value).toString();
  } else if (value is DestinyPlugUiStyles) {
    return new DestinyPlugUiStylesTypeTransformer().encode(value).toString();
  } else if (value is DestinyRequestsActionsDestinySocketArrayType) {
    return new DestinyRequestsActionsDestinySocketArrayTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinySocketPlugSources) {
    return new DestinySocketPlugSourcesTypeTransformer().encode(value).toString();
  } else if (value is DestinySocketTypeActionType) {
    return new DestinySocketTypeActionTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinySpecialItemType) {
    return new DestinySpecialItemTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyTierType) {
    return new DestinyTierTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyTransferStatuses) {
    return new DestinyTransferStatusesTypeTransformer().encode(value).toString();
  } else if (value is DestinyVendorDisplayCategorySortOrder) {
    return new DestinyVendorDisplayCategorySortOrderTypeTransformer().encode(value).toString();
  } else if (value is DestinyVendorInteractionType) {
    return new DestinyVendorInteractionTypeTypeTransformer().encode(value).toString();
  } else if (value is DestinyVendorItemStatus) {
    return new DestinyVendorItemStatusTypeTransformer().encode(value).toString();
  } else if (value is ExceptionsPlatformErrorCodes) {
    return new ExceptionsPlatformErrorCodesTypeTransformer().encode(value).toString();
  } else if (value is FireteamFireteamActivityType) {
    return new FireteamFireteamActivityTypeTypeTransformer().encode(value).toString();
  } else if (value is FireteamFireteamDateRange) {
    return new FireteamFireteamDateRangeTypeTransformer().encode(value).toString();
  } else if (value is FireteamFireteamPlatform) {
    return new FireteamFireteamPlatformTypeTransformer().encode(value).toString();
  } else if (value is FireteamFireteamPlatformInviteResult) {
    return new FireteamFireteamPlatformInviteResultTypeTransformer().encode(value).toString();
  } else if (value is FireteamFireteamPublicSearchOption) {
    return new FireteamFireteamPublicSearchOptionTypeTransformer().encode(value).toString();
  } else if (value is FireteamFireteamSlotSearch) {
    return new FireteamFireteamSlotSearchTypeTransformer().encode(value).toString();
  } else if (value is ForumCommunityContentSortMode) {
    return new ForumCommunityContentSortModeTypeTransformer().encode(value).toString();
  } else if (value is ForumForumFlagsEnum) {
    return new ForumForumFlagsEnumTypeTransformer().encode(value).toString();
  } else if (value is ForumForumMediaType) {
    return new ForumForumMediaTypeTypeTransformer().encode(value).toString();
  } else if (value is ForumForumPostCategoryEnums) {
    return new ForumForumPostCategoryEnumsTypeTransformer().encode(value).toString();
  } else if (value is ForumForumPostPopularity) {
    return new ForumForumPostPopularityTypeTransformer().encode(value).toString();
  } else if (value is ForumForumPostSortEnum) {
    return new ForumForumPostSortEnumTypeTransformer().encode(value).toString();
  } else if (value is ForumForumRecruitmentIntensityLabel) {
    return new ForumForumRecruitmentIntensityLabelTypeTransformer().encode(value).toString();
  } else if (value is ForumForumRecruitmentToneLabel) {
    return new ForumForumRecruitmentToneLabelTypeTransformer().encode(value).toString();
  } else if (value is ForumForumTopicsCategoryFiltersEnum) {
    return new ForumForumTopicsCategoryFiltersEnumTypeTransformer().encode(value).toString();
  } else if (value is ForumForumTopicsQuickDateEnum) {
    return new ForumForumTopicsQuickDateEnumTypeTransformer().encode(value).toString();
  } else if (value is ForumForumTopicsSortEnum) {
    return new ForumForumTopicsSortEnumTypeTransformer().encode(value).toString();
  } else if (value is GlobalAlertLevel) {
    return new GlobalAlertLevelTypeTransformer().encode(value).toString();
  } else if (value is GlobalAlertType) {
    return new GlobalAlertTypeTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2Capabilities) {
    return new GroupsV2CapabilitiesTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2ChatSecuritySetting) {
    return new GroupsV2ChatSecuritySettingTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2GroupAllianceStatus) {
    return new GroupsV2GroupAllianceStatusTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2GroupApplicationResolveState) {
    return new GroupsV2GroupApplicationResolveStateTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2GroupDateRange) {
    return new GroupsV2GroupDateRangeTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2GroupHomepage) {
    return new GroupsV2GroupHomepageTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2GroupMemberCountFilter) {
    return new GroupsV2GroupMemberCountFilterTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2GroupPostPublicity) {
    return new GroupsV2GroupPostPublicityTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2GroupPotentialMemberStatus) {
    return new GroupsV2GroupPotentialMemberStatusTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2GroupSortBy) {
    return new GroupsV2GroupSortByTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2GroupType) {
    return new GroupsV2GroupTypeTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2GroupsForMemberFilter) {
    return new GroupsV2GroupsForMemberFilterTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2HostGuidedGamesPermissionLevel) {
    return new GroupsV2HostGuidedGamesPermissionLevelTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2MembershipOption) {
    return new GroupsV2MembershipOptionTypeTransformer().encode(value).toString();
  } else if (value is GroupsV2RuntimeGroupMemberType) {
    return new GroupsV2RuntimeGroupMemberTypeTypeTransformer().encode(value).toString();
  } else if (value is IgnoresIgnoreLength) {
    return new IgnoresIgnoreLengthTypeTransformer().encode(value).toString();
  } else if (value is IgnoresIgnoreStatus) {
    return new IgnoresIgnoreStatusTypeTransformer().encode(value).toString();
  } else if (value is PartnershipsPartnershipType) {
    return new PartnershipsPartnershipTypeTypeTransformer().encode(value).toString();
  } else if (value is TrendingTrendingEntryType) {
    return new TrendingTrendingEntryTypeTypeTransformer().encode(value).toString();
  } else {
    return value.toString();
  }
}
