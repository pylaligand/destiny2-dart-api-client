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
      ..addTransformer(new ApplicationsApplicationStatusTypeTransformer(), ApplicationsApplicationStatus)
      ..addTransformer(new ApplicationsDeveloperRoleTypeTransformer(), ApplicationsDeveloperRole)
      ..addTransformer(new ApplicationsOAuthApplicationTypeTypeTransformer(), ApplicationsOAuthApplicationType)
      ..addTransformer(new BungieMembershipTypeTypeTransformer(), BungieMembershipType)
      ..addTransformer(new CommunityCommunityStatusSortTypeTransformer(), CommunityCommunityStatusSort)
      ..addTransformer(new ComponentsComponentPrivacySettingTypeTransformer(), ComponentsComponentPrivacySetting)
      ..addTransformer(new ContentModelsContentPropertyDataTypeEnumTypeTransformer(), ContentModelsContentPropertyDataTypeEnum)
      ..addTransformer(new DestinyActivityGraphNodeHighlightTypeTypeTransformer(), DestinyActivityGraphNodeHighlightType)
      ..addTransformer(new DestinyAdvancedAwaResponseReasonTypeTransformer(), DestinyAdvancedAwaResponseReason)
      ..addTransformer(new DestinyAdvancedAwaTypeTypeTransformer(), DestinyAdvancedAwaType)
      ..addTransformer(new DestinyAdvancedAwaUserSelectionTypeTransformer(), DestinyAdvancedAwaUserSelection)
      ..addTransformer(new DestinyBucketCategoryTypeTransformer(), DestinyBucketCategory)
      ..addTransformer(new DestinyBucketScopeTypeTransformer(), DestinyBucketScope)
      ..addTransformer(new DestinyDamageTypeTypeTransformer(), DestinyDamageType)
      ..addTransformer(new DestinyDefinitionsDestinyRewardSourceCategoryTypeTransformer(), DestinyDefinitionsDestinyRewardSourceCategory)
      ..addTransformer(new DestinyDefinitionsDestinyTalentNodeStepDamageTypesTypeTransformer(), DestinyDefinitionsDestinyTalentNodeStepDamageTypes)
      ..addTransformer(new DestinyDefinitionsDestinyTalentNodeStepGuardianAttributesTypeTransformer(), DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes)
      ..addTransformer(new DestinyDefinitionsDestinyTalentNodeStepImpactEffectsTypeTransformer(), DestinyDefinitionsDestinyTalentNodeStepImpactEffects)
      ..addTransformer(new DestinyDefinitionsDestinyTalentNodeStepLightAbilitiesTypeTransformer(), DestinyDefinitionsDestinyTalentNodeStepLightAbilities)
      ..addTransformer(new DestinyDefinitionsDestinyTalentNodeStepWeaponPerformancesTypeTransformer(), DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances)
      ..addTransformer(new DestinyDefinitionsMilestonesDestinyMilestoneTypeTypeTransformer(), DestinyDefinitionsMilestonesDestinyMilestoneType)
      ..addTransformer(new DestinyDestinyActivityDifficultyTierTypeTransformer(), DestinyDestinyActivityDifficultyTier)
      ..addTransformer(new DestinyDestinyActivityModeCategoryTypeTransformer(), DestinyDestinyActivityModeCategory)
      ..addTransformer(new DestinyDestinyActivityNavPointTypeTypeTransformer(), DestinyDestinyActivityNavPointType)
      ..addTransformer(new DestinyDestinyAmmunitionTypeTypeTransformer(), DestinyDestinyAmmunitionType)
      ..addTransformer(new DestinyDestinyClassTypeTransformer(), DestinyDestinyClass)
      ..addTransformer(new DestinyDestinyCollectibleStateTypeTransformer(), DestinyDestinyCollectibleState)
      ..addTransformer(new DestinyDestinyComponentTypeTypeTransformer(), DestinyDestinyComponentType)
      ..addTransformer(new DestinyDestinyGameVersionsTypeTransformer(), DestinyDestinyGameVersions)
      ..addTransformer(new DestinyDestinyGatingScopeTypeTransformer(), DestinyDestinyGatingScope)
      ..addTransformer(new DestinyDestinyGenderTypeTransformer(), DestinyDestinyGender)
      ..addTransformer(new DestinyDestinyGraphNodeStateTypeTransformer(), DestinyDestinyGraphNodeState)
      ..addTransformer(new DestinyDestinyItemSortTypeTypeTransformer(), DestinyDestinyItemSortType)
      ..addTransformer(new DestinyDestinyItemSubTypeTypeTransformer(), DestinyDestinyItemSubType)
      ..addTransformer(new DestinyDestinyItemTypeTypeTransformer(), DestinyDestinyItemType)
      ..addTransformer(new DestinyDestinyObjectiveGrantStyleTypeTransformer(), DestinyDestinyObjectiveGrantStyle)
      ..addTransformer(new DestinyDestinyPresentationDisplayStyleTypeTransformer(), DestinyDestinyPresentationDisplayStyle)
      ..addTransformer(new DestinyDestinyPresentationNodeStateTypeTransformer(), DestinyDestinyPresentationNodeState)
      ..addTransformer(new DestinyDestinyPresentationNodeTypeTypeTransformer(), DestinyDestinyPresentationNodeType)
      ..addTransformer(new DestinyDestinyPresentationScreenStyleTypeTransformer(), DestinyDestinyPresentationScreenStyle)
      ..addTransformer(new DestinyDestinyProgressionScopeTypeTransformer(), DestinyDestinyProgressionScope)
      ..addTransformer(new DestinyDestinyProgressionStepDisplayEffectTypeTransformer(), DestinyDestinyProgressionStepDisplayEffect)
      ..addTransformer(new DestinyDestinyRaceTypeTransformer(), DestinyDestinyRace)
      ..addTransformer(new DestinyDestinyRecordStateTypeTransformer(), DestinyDestinyRecordState)
      ..addTransformer(new DestinyDestinyRecordToastStyleTypeTransformer(), DestinyDestinyRecordToastStyle)
      ..addTransformer(new DestinyDestinyRecordValueStyleTypeTransformer(), DestinyDestinyRecordValueStyle)
      ..addTransformer(new DestinyDestinyScopeTypeTransformer(), DestinyDestinyScope)
      ..addTransformer(new DestinyDestinySocketCategoryStyleTypeTransformer(), DestinyDestinySocketCategoryStyle)
      ..addTransformer(new DestinyDestinySocketVisibilityTypeTransformer(), DestinyDestinySocketVisibility)
      ..addTransformer(new DestinyDestinyStatAggregationTypeTypeTransformer(), DestinyDestinyStatAggregationType)
      ..addTransformer(new DestinyDestinyStatCategoryTypeTransformer(), DestinyDestinyStatCategory)
      ..addTransformer(new DestinyDestinyTalentNodeStateTypeTransformer(), DestinyDestinyTalentNodeState)
      ..addTransformer(new DestinyDestinyUnlockValueUIStyleTypeTransformer(), DestinyDestinyUnlockValueUIStyle)
      ..addTransformer(new DestinyDestinyVendorInteractionRewardSelectionTypeTransformer(), DestinyDestinyVendorInteractionRewardSelection)
      ..addTransformer(new DestinyDestinyVendorItemRefundPolicyTypeTransformer(), DestinyDestinyVendorItemRefundPolicy)
      ..addTransformer(new DestinyDestinyVendorItemStateTypeTransformer(), DestinyDestinyVendorItemState)
      ..addTransformer(new DestinyDestinyVendorReplyTypeTypeTransformer(), DestinyDestinyVendorReplyType)
      ..addTransformer(new DestinyEquipFailureReasonTypeTransformer(), DestinyEquipFailureReason)
      ..addTransformer(new DestinyEquippingItemBlockAttributesTypeTransformer(), DestinyEquippingItemBlockAttributes)
      ..addTransformer(new DestinyHistoricalStatsDefinitionsDestinyActivityModeTypeTypeTransformer(), DestinyHistoricalStatsDefinitionsDestinyActivityModeType)
      ..addTransformer(new DestinyHistoricalStatsDefinitionsDestinyStatsCategoryTypeTypeTransformer(), DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType)
      ..addTransformer(new DestinyHistoricalStatsDefinitionsDestinyStatsGroupTypeTypeTransformer(), DestinyHistoricalStatsDefinitionsDestinyStatsGroupType)
      ..addTransformer(new DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethodTypeTransformer(), DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod)
      ..addTransformer(new DestinyHistoricalStatsDefinitionsPeriodTypeTypeTransformer(), DestinyHistoricalStatsDefinitionsPeriodType)
      ..addTransformer(new DestinyHistoricalStatsDefinitionsUnitTypeTypeTransformer(), DestinyHistoricalStatsDefinitionsUnitType)
      ..addTransformer(new DestinyItemBindStatusTypeTransformer(), DestinyItemBindStatus)
      ..addTransformer(new DestinyItemLocationTypeTransformer(), DestinyItemLocation)
      ..addTransformer(new DestinyItemPerkVisibilityTypeTransformer(), DestinyItemPerkVisibility)
      ..addTransformer(new DestinyItemStateTypeTransformer(), DestinyItemState)
      ..addTransformer(new DestinyPlugAvailabilityModeTypeTransformer(), DestinyPlugAvailabilityMode)
      ..addTransformer(new DestinyPlugUiStylesTypeTransformer(), DestinyPlugUiStyles)
      ..addTransformer(new DestinyRequestsActionsDestinySocketArrayTypeTypeTransformer(), DestinyRequestsActionsDestinySocketArrayType)
      ..addTransformer(new DestinySocketPlugSourcesTypeTransformer(), DestinySocketPlugSources)
      ..addTransformer(new DestinySocketTypeActionTypeTypeTransformer(), DestinySocketTypeActionType)
      ..addTransformer(new DestinySpecialItemTypeTypeTransformer(), DestinySpecialItemType)
      ..addTransformer(new DestinyTierTypeTypeTransformer(), DestinyTierType)
      ..addTransformer(new DestinyTransferStatusesTypeTransformer(), DestinyTransferStatuses)
      ..addTransformer(new DestinyVendorDisplayCategorySortOrderTypeTransformer(), DestinyVendorDisplayCategorySortOrder)
      ..addTransformer(new DestinyVendorInteractionTypeTypeTransformer(), DestinyVendorInteractionType)
      ..addTransformer(new DestinyVendorItemStatusTypeTransformer(), DestinyVendorItemStatus)
      ..addTransformer(new ExceptionsPlatformErrorCodesTypeTransformer(), ExceptionsPlatformErrorCodes)
      ..addTransformer(new FireteamFireteamActivityTypeTypeTransformer(), FireteamFireteamActivityType)
      ..addTransformer(new FireteamFireteamDateRangeTypeTransformer(), FireteamFireteamDateRange)
      ..addTransformer(new FireteamFireteamPlatformTypeTransformer(), FireteamFireteamPlatform)
      ..addTransformer(new FireteamFireteamPlatformInviteResultTypeTransformer(), FireteamFireteamPlatformInviteResult)
      ..addTransformer(new FireteamFireteamPublicSearchOptionTypeTransformer(), FireteamFireteamPublicSearchOption)
      ..addTransformer(new FireteamFireteamSlotSearchTypeTransformer(), FireteamFireteamSlotSearch)
      ..addTransformer(new ForumCommunityContentSortModeTypeTransformer(), ForumCommunityContentSortMode)
      ..addTransformer(new ForumForumFlagsEnumTypeTransformer(), ForumForumFlagsEnum)
      ..addTransformer(new ForumForumMediaTypeTypeTransformer(), ForumForumMediaType)
      ..addTransformer(new ForumForumPostCategoryEnumsTypeTransformer(), ForumForumPostCategoryEnums)
      ..addTransformer(new ForumForumPostPopularityTypeTransformer(), ForumForumPostPopularity)
      ..addTransformer(new ForumForumPostSortEnumTypeTransformer(), ForumForumPostSortEnum)
      ..addTransformer(new ForumForumRecruitmentIntensityLabelTypeTransformer(), ForumForumRecruitmentIntensityLabel)
      ..addTransformer(new ForumForumRecruitmentToneLabelTypeTransformer(), ForumForumRecruitmentToneLabel)
      ..addTransformer(new ForumForumTopicsCategoryFiltersEnumTypeTransformer(), ForumForumTopicsCategoryFiltersEnum)
      ..addTransformer(new ForumForumTopicsQuickDateEnumTypeTransformer(), ForumForumTopicsQuickDateEnum)
      ..addTransformer(new ForumForumTopicsSortEnumTypeTransformer(), ForumForumTopicsSortEnum)
      ..addTransformer(new GlobalAlertLevelTypeTransformer(), GlobalAlertLevel)
      ..addTransformer(new GlobalAlertTypeTypeTransformer(), GlobalAlertType)
      ..addTransformer(new GroupsV2CapabilitiesTypeTransformer(), GroupsV2Capabilities)
      ..addTransformer(new GroupsV2ChatSecuritySettingTypeTransformer(), GroupsV2ChatSecuritySetting)
      ..addTransformer(new GroupsV2GroupAllianceStatusTypeTransformer(), GroupsV2GroupAllianceStatus)
      ..addTransformer(new GroupsV2GroupApplicationResolveStateTypeTransformer(), GroupsV2GroupApplicationResolveState)
      ..addTransformer(new GroupsV2GroupDateRangeTypeTransformer(), GroupsV2GroupDateRange)
      ..addTransformer(new GroupsV2GroupHomepageTypeTransformer(), GroupsV2GroupHomepage)
      ..addTransformer(new GroupsV2GroupMemberCountFilterTypeTransformer(), GroupsV2GroupMemberCountFilter)
      ..addTransformer(new GroupsV2GroupPostPublicityTypeTransformer(), GroupsV2GroupPostPublicity)
      ..addTransformer(new GroupsV2GroupPotentialMemberStatusTypeTransformer(), GroupsV2GroupPotentialMemberStatus)
      ..addTransformer(new GroupsV2GroupSortByTypeTransformer(), GroupsV2GroupSortBy)
      ..addTransformer(new GroupsV2GroupTypeTypeTransformer(), GroupsV2GroupType)
      ..addTransformer(new GroupsV2GroupsForMemberFilterTypeTransformer(), GroupsV2GroupsForMemberFilter)
      ..addTransformer(new GroupsV2HostGuidedGamesPermissionLevelTypeTransformer(), GroupsV2HostGuidedGamesPermissionLevel)
      ..addTransformer(new GroupsV2MembershipOptionTypeTransformer(), GroupsV2MembershipOption)
      ..addTransformer(new GroupsV2RuntimeGroupMemberTypeTypeTransformer(), GroupsV2RuntimeGroupMemberType)
      ..addTransformer(new IgnoresIgnoreLengthTypeTransformer(), IgnoresIgnoreLength)
      ..addTransformer(new IgnoresIgnoreStatusTypeTransformer(), IgnoresIgnoreStatus)
      ..addTransformer(new PartnershipsPartnershipTypeTypeTransformer(), PartnershipsPartnershipType)
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
        case 'ApplicationsApiUsage':
          return dson.map(value, new ApplicationsApiUsage());
        case 'ApplicationsApplication':
          return dson.map(value, new ApplicationsApplication());
        case 'ApplicationsApplicationDeveloper':
          return dson.map(value, new ApplicationsApplicationDeveloper());
        case 'ApplicationsApplicationScopes':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ApplicationsApplicationStatus':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ApplicationsDatapoint':
          return dson.map(value, new ApplicationsDatapoint());
        case 'ApplicationsDeveloperRole':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ApplicationsOAuthApplicationType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ApplicationsSeries':
          return dson.map(value, new ApplicationsSeries());
        case 'BungieMembershipType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'BungieMembershipTypeList':
          return dson.map(value, new BungieMembershipTypeList());
        case 'CommonModelsCoreSetting':
          return dson.map(value, new CommonModelsCoreSetting());
        case 'CommonModelsCoreSettingsConfiguration':
          return dson.map(value, new CommonModelsCoreSettingsConfiguration());
        case 'CommonModelsCoreSystem':
          return dson.map(value, new CommonModelsCoreSystem());
        case 'CommonModelsDestiny2CoreSettings':
          return dson.map(value, new CommonModelsDestiny2CoreSettings());
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
        case 'ContentModelsContentPreview':
          return dson.map(value, new ContentModelsContentPreview());
        case 'ContentModelsContentPropertyDataTypeEnum':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ContentModelsContentTypeDefaultValue':
          return dson.map(value, new ContentModelsContentTypeDefaultValue());
        case 'ContentModelsContentTypeDescription':
          return dson.map(value, new ContentModelsContentTypeDescription());
        case 'ContentModelsContentTypeProperty':
          return dson.map(value, new ContentModelsContentTypeProperty());
        case 'ContentModelsContentTypePropertySection':
          return dson.map(value, new ContentModelsContentTypePropertySection());
        case 'ContentModelsTagMetadataDefinition':
          return dson.map(value, new ContentModelsTagMetadataDefinition());
        case 'ContentModelsTagMetadataItem':
          return dson.map(value, new ContentModelsTagMetadataItem());
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
        case 'DestinyAdvancedAwaAuthorizationResult':
          return dson.map(value, new DestinyAdvancedAwaAuthorizationResult());
        case 'DestinyAdvancedAwaInitializeResponse':
          return dson.map(value, new DestinyAdvancedAwaInitializeResponse());
        case 'DestinyAdvancedAwaPermissionRequested':
          return dson.map(value, new DestinyAdvancedAwaPermissionRequested());
        case 'DestinyAdvancedAwaResponseReason':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyAdvancedAwaType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyAdvancedAwaUserResponse':
          return dson.map(value, new DestinyAdvancedAwaUserResponse());
        case 'DestinyAdvancedAwaUserSelection':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyBaseItemComponentSetOfint32':
          return dson.map(value, new DestinyBaseItemComponentSetOfint32());
        case 'DestinyBaseItemComponentSetOfint64':
          return dson.map(value, new DestinyBaseItemComponentSetOfint64());
        case 'DestinyBaseItemComponentSetOfuint32':
          return dson.map(value, new DestinyBaseItemComponentSetOfuint32());
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
        case 'DestinyComponentsCollectiblesDestinyCollectibleComponent':
          return dson.map(value, new DestinyComponentsCollectiblesDestinyCollectibleComponent());
        case 'DestinyComponentsCollectiblesDestinyCollectiblesComponent':
          return dson.map(value, new DestinyComponentsCollectiblesDestinyCollectiblesComponent());
        case 'DestinyComponentsCollectiblesDestinyProfileCollectiblesComponent':
          return dson.map(value, new DestinyComponentsCollectiblesDestinyProfileCollectiblesComponent());
        case 'DestinyComponentsInventoryDestinyCurrenciesComponent':
          return dson.map(value, new DestinyComponentsInventoryDestinyCurrenciesComponent());
        case 'DestinyComponentsItemsDestinyItemPlugComponent':
          return dson.map(value, new DestinyComponentsItemsDestinyItemPlugComponent());
        case 'DestinyComponentsKiosksDestinyKioskItem':
          return dson.map(value, new DestinyComponentsKiosksDestinyKioskItem());
        case 'DestinyComponentsKiosksDestinyKiosksComponent':
          return dson.map(value, new DestinyComponentsKiosksDestinyKiosksComponent());
        case 'DestinyComponentsPlugSetsDestinyPlugSetsComponent':
          return dson.map(value, new DestinyComponentsPlugSetsDestinyPlugSetsComponent());
        case 'DestinyComponentsPresentationDestinyPresentationNodeComponent':
          return dson.map(value, new DestinyComponentsPresentationDestinyPresentationNodeComponent());
        case 'DestinyComponentsPresentationDestinyPresentationNodesComponent':
          return dson.map(value, new DestinyComponentsPresentationDestinyPresentationNodesComponent());
        case 'DestinyComponentsProfilesDestinyProfileProgressionComponent':
          return dson.map(value, new DestinyComponentsProfilesDestinyProfileProgressionComponent());
        case 'DestinyComponentsRecordsDestinyCharacterRecordsComponent':
          return dson.map(value, new DestinyComponentsRecordsDestinyCharacterRecordsComponent());
        case 'DestinyComponentsRecordsDestinyProfileRecordsComponent':
          return dson.map(value, new DestinyComponentsRecordsDestinyProfileRecordsComponent());
        case 'DestinyComponentsRecordsDestinyRecordComponent':
          return dson.map(value, new DestinyComponentsRecordsDestinyRecordComponent());
        case 'DestinyComponentsRecordsDestinyRecordsComponent':
          return dson.map(value, new DestinyComponentsRecordsDestinyRecordsComponent());
        case 'DestinyComponentsVendorsDestinyVendorGroup':
          return dson.map(value, new DestinyComponentsVendorsDestinyVendorGroup());
        case 'DestinyComponentsVendorsDestinyVendorGroupComponent':
          return dson.map(value, new DestinyComponentsVendorsDestinyVendorGroupComponent());
        case 'DestinyComponentsVendorsDestinyVendorSaleItemSetComponent':
          return dson.map(value, new DestinyComponentsVendorsDestinyVendorSaleItemSetComponent());
        case 'DestinyConfigDestinyManifest':
          return dson.map(value, new DestinyConfigDestinyManifest());
        case 'DestinyConfigGearAssetDataBaseDefinition':
          return dson.map(value, new DestinyConfigGearAssetDataBaseDefinition());
        case 'DestinyConstantsDestinyEnvironmentLocationMapping':
          return dson.map(value, new DestinyConstantsDestinyEnvironmentLocationMapping());
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
        case 'DestinyDefinitionsChecklistsDestinyChecklistDefinition':
          return dson.map(value, new DestinyDefinitionsChecklistsDestinyChecklistDefinition());
        case 'DestinyDefinitionsChecklistsDestinyChecklistEntryDefinition':
          return dson.map(value, new DestinyDefinitionsChecklistsDestinyChecklistEntryDefinition());
        case 'DestinyDefinitionsCollectiblesDestinyCollectibleAcquisitionBlock':
          return dson.map(value, new DestinyDefinitionsCollectiblesDestinyCollectibleAcquisitionBlock());
        case 'DestinyDefinitionsCollectiblesDestinyCollectibleDefinition':
          return dson.map(value, new DestinyDefinitionsCollectiblesDestinyCollectibleDefinition());
        case 'DestinyDefinitionsCollectiblesDestinyCollectibleStateBlock':
          return dson.map(value, new DestinyDefinitionsCollectiblesDestinyCollectibleStateBlock());
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
        case 'DestinyDefinitionsDestinyActivityInsertionPointDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyActivityInsertionPointDefinition());
        case 'DestinyDefinitionsDestinyActivityLoadoutRequirement':
          return dson.map(value, new DestinyDefinitionsDestinyActivityLoadoutRequirement());
        case 'DestinyDefinitionsDestinyActivityLoadoutRequirementSet':
          return dson.map(value, new DestinyDefinitionsDestinyActivityLoadoutRequirementSet());
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
        case 'DestinyDefinitionsDestinyArtDyeReference':
          return dson.map(value, new DestinyDefinitionsDestinyArtDyeReference());
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
        case 'DestinyDefinitionsDestinyFactionVendorDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyFactionVendorDefinition());
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
        case 'DestinyDefinitionsDestinyItemIntrinsicSocketEntryDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemIntrinsicSocketEntryDefinition());
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
        case 'DestinyDefinitionsDestinyItemSocketEntryPlugItemRandomizedDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyItemSocketEntryPlugItemRandomizedDefinition());
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
        case 'DestinyDefinitionsDestinyObjectiveDisplayProperties':
          return dson.map(value, new DestinyDefinitionsDestinyObjectiveDisplayProperties());
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
        case 'DestinyDefinitionsDestinyUnlockValueDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyUnlockValueDefinition());
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
        case 'DestinyDefinitionsDestinyVendorGroupDefinition':
          return dson.map(value, new DestinyDefinitionsDestinyVendorGroupDefinition());
        case 'DestinyDefinitionsDestinyVendorGroupReference':
          return dson.map(value, new DestinyDefinitionsDestinyVendorGroupReference());
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
        case 'DestinyDefinitionsDestinyVendorItemQuantity':
          return dson.map(value, new DestinyDefinitionsDestinyVendorItemQuantity());
        case 'DestinyDefinitionsDestinyVendorItemSocketOverride':
          return dson.map(value, new DestinyDefinitionsDestinyVendorItemSocketOverride());
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
        case 'DestinyDefinitionsDirectorDestinyActivityGraphNodeStateEntry':
          return dson.map(value, new DestinyDefinitionsDirectorDestinyActivityGraphNodeStateEntry());
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
        case 'DestinyDefinitionsItemsDestinyParentItemOverride':
          return dson.map(value, new DestinyDefinitionsItemsDestinyParentItemOverride());
        case 'DestinyDefinitionsItemsDestinyPlugRuleDefinition':
          return dson.map(value, new DestinyDefinitionsItemsDestinyPlugRuleDefinition());
        case 'DestinyDefinitionsLoreDestinyLoreDefinition':
          return dson.map(value, new DestinyDefinitionsLoreDestinyLoreDefinition());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneActivityDefinition':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneActivityDefinition());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneActivityVariantDefinition':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneActivityVariantDefinition());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityDefinition':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityDefinition());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityGraphNodeEntry':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityGraphNodeEntry());
        case 'DestinyDefinitionsMilestonesDestinyMilestoneChallengeDefinition':
          return dson.map(value, new DestinyDefinitionsMilestonesDestinyMilestoneChallengeDefinition());
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
        case 'DestinyDefinitionsPresentationDestinyPresentationChildBlock':
          return dson.map(value, new DestinyDefinitionsPresentationDestinyPresentationChildBlock());
        case 'DestinyDefinitionsPresentationDestinyPresentationNodeChildEntry':
          return dson.map(value, new DestinyDefinitionsPresentationDestinyPresentationNodeChildEntry());
        case 'DestinyDefinitionsPresentationDestinyPresentationNodeChildrenBlock':
          return dson.map(value, new DestinyDefinitionsPresentationDestinyPresentationNodeChildrenBlock());
        case 'DestinyDefinitionsPresentationDestinyPresentationNodeCollectibleChildEntry':
          return dson.map(value, new DestinyDefinitionsPresentationDestinyPresentationNodeCollectibleChildEntry());
        case 'DestinyDefinitionsPresentationDestinyPresentationNodeDefinition':
          return dson.map(value, new DestinyDefinitionsPresentationDestinyPresentationNodeDefinition());
        case 'DestinyDefinitionsPresentationDestinyPresentationNodeRecordChildEntry':
          return dson.map(value, new DestinyDefinitionsPresentationDestinyPresentationNodeRecordChildEntry());
        case 'DestinyDefinitionsPresentationDestinyPresentationNodeRequirementsBlock':
          return dson.map(value, new DestinyDefinitionsPresentationDestinyPresentationNodeRequirementsBlock());
        case 'DestinyDefinitionsProgressionDestinyProgressionLevelRequirementDefinition':
          return dson.map(value, new DestinyDefinitionsProgressionDestinyProgressionLevelRequirementDefinition());
        case 'DestinyDefinitionsRecordsDestinyRecordCompletionBlock':
          return dson.map(value, new DestinyDefinitionsRecordsDestinyRecordCompletionBlock());
        case 'DestinyDefinitionsRecordsDestinyRecordDefinition':
          return dson.map(value, new DestinyDefinitionsRecordsDestinyRecordDefinition());
        case 'DestinyDefinitionsRecordsDestinyRecordTitleBlock':
          return dson.map(value, new DestinyDefinitionsRecordsDestinyRecordTitleBlock());
        case 'DestinyDefinitionsRecordsSchemaRecordStateBlock':
          return dson.map(value, new DestinyDefinitionsRecordsSchemaRecordStateBlock());
        case 'DestinyDefinitionsReportingDestinyReportReasonCategoryDefinition':
          return dson.map(value, new DestinyDefinitionsReportingDestinyReportReasonCategoryDefinition());
        case 'DestinyDefinitionsReportingDestinyReportReasonDefinition':
          return dson.map(value, new DestinyDefinitionsReportingDestinyReportReasonDefinition());
        case 'DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition':
          return dson.map(value, new DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition());
        case 'DestinyDefinitionsSocketsDestinyPlugSetDefinition':
          return dson.map(value, new DestinyDefinitionsSocketsDestinyPlugSetDefinition());
        case 'DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition':
          return dson.map(value, new DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition());
        case 'DestinyDefinitionsSocketsDestinySocketCategoryDefinition':
          return dson.map(value, new DestinyDefinitionsSocketsDestinySocketCategoryDefinition());
        case 'DestinyDefinitionsSocketsDestinySocketTypeDefinition':
          return dson.map(value, new DestinyDefinitionsSocketsDestinySocketTypeDefinition());
        case 'DestinyDefinitionsSocketsDestinySocketTypeScalarMaterialRequirementEntry':
          return dson.map(value, new DestinyDefinitionsSocketsDestinySocketTypeScalarMaterialRequirementEntry());
        case 'DestinyDefinitionsSourcesDestinyItemSourceDefinition':
          return dson.map(value, new DestinyDefinitionsSourcesDestinyItemSourceDefinition());
        case 'DestinyDefinitionsVendorsDestinyVendorLocationDefinition':
          return dson.map(value, new DestinyDefinitionsVendorsDestinyVendorLocationDefinition());
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
        case 'DestinyDestinyAmmunitionType':
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
        case 'DestinyDestinyCollectibleState':
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
        case 'DestinyDestinyGraphNodeState':
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
        case 'DestinyDestinyPresentationDisplayStyle':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyPresentationNodeState':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyPresentationNodeType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyPresentationScreenStyle':
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
        case 'DestinyDestinyRecordState':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyRecordToastStyle':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyRecordValueStyle':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinyScope':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyDestinySocketCategoryStyle':
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
        case 'DestinyDestinyStatCategory':
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
        case 'DestinyDestinyVendorItemState':
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
        case 'DestinyItemComponentSetOfuint32':
          return dson.map(value, new DestinyItemComponentSetOfuint32());
        case 'DestinyItemLocation':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyItemPerkVisibility':
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
        case 'DestinyMilestonesDestinyMilestoneChallengeActivity':
          return dson.map(value, new DestinyMilestonesDestinyMilestoneChallengeActivity());
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
        case 'DestinyMilestonesDestinyMilestoneVendor':
          return dson.map(value, new DestinyMilestonesDestinyMilestoneVendor());
        case 'DestinyMilestonesDestinyPublicMilestone':
          return dson.map(value, new DestinyMilestonesDestinyPublicMilestone());
        case 'DestinyMilestonesDestinyPublicMilestoneActivity':
          return dson.map(value, new DestinyMilestonesDestinyPublicMilestoneActivity());
        case 'DestinyMilestonesDestinyPublicMilestoneActivityVariant':
          return dson.map(value, new DestinyMilestonesDestinyPublicMilestoneActivityVariant());
        case 'DestinyMilestonesDestinyPublicMilestoneChallenge':
          return dson.map(value, new DestinyMilestonesDestinyPublicMilestoneChallenge());
        case 'DestinyMilestonesDestinyPublicMilestoneChallengeActivity':
          return dson.map(value, new DestinyMilestonesDestinyPublicMilestoneChallengeActivity());
        case 'DestinyMilestonesDestinyPublicMilestoneQuest':
          return dson.map(value, new DestinyMilestonesDestinyPublicMilestoneQuest());
        case 'DestinyMilestonesDestinyPublicMilestoneVendor':
          return dson.map(value, new DestinyMilestonesDestinyPublicMilestoneVendor());
        case 'DestinyMiscDestinyColor':
          return dson.map(value, new DestinyMiscDestinyColor());
        case 'DestinyPerksDestinyPerkReference':
          return dson.map(value, new DestinyPerksDestinyPerkReference());
        case 'DestinyPlugAvailabilityMode':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyPlugUiStyles':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyProgressionDestinyFactionProgression':
          return dson.map(value, new DestinyProgressionDestinyFactionProgression());
        case 'DestinyQuestsDestinyObjectiveProgress':
          return dson.map(value, new DestinyQuestsDestinyObjectiveProgress());
        case 'DestinyQuestsDestinyQuestStatus':
          return dson.map(value, new DestinyQuestsDestinyQuestStatus());
        case 'DestinyReportingRequestsDestinyReportOffensePgcrRequest':
          return dson.map(value, new DestinyReportingRequestsDestinyReportOffensePgcrRequest());
        case 'DestinyRequestsActionsDestinyActionRequest':
          return dson.map(value, new DestinyRequestsActionsDestinyActionRequest());
        case 'DestinyRequestsActionsDestinyCharacterActionRequest':
          return dson.map(value, new DestinyRequestsActionsDestinyCharacterActionRequest());
        case 'DestinyRequestsActionsDestinyInsertPlugsActionRequest':
          return dson.map(value, new DestinyRequestsActionsDestinyInsertPlugsActionRequest());
        case 'DestinyRequestsActionsDestinyInsertPlugsRequestEntry':
          return dson.map(value, new DestinyRequestsActionsDestinyInsertPlugsRequestEntry());
        case 'DestinyRequestsActionsDestinyItemActionRequest':
          return dson.map(value, new DestinyRequestsActionsDestinyItemActionRequest());
        case 'DestinyRequestsActionsDestinyItemSetActionRequest':
          return dson.map(value, new DestinyRequestsActionsDestinyItemSetActionRequest());
        case 'DestinyRequestsActionsDestinyItemStateRequest':
          return dson.map(value, new DestinyRequestsActionsDestinyItemStateRequest());
        case 'DestinyRequestsActionsDestinyPostmasterTransferRequest':
          return dson.map(value, new DestinyRequestsActionsDestinyPostmasterTransferRequest());
        case 'DestinyRequestsActionsDestinySocketArrayType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyRequestsDestinyItemTransferRequest':
          return dson.map(value, new DestinyRequestsDestinyItemTransferRequest());
        case 'DestinyResponsesDestinyCharacterResponse':
          return dson.map(value, new DestinyResponsesDestinyCharacterResponse());
        case 'DestinyResponsesDestinyCollectibleNodeDetailResponse':
          return dson.map(value, new DestinyResponsesDestinyCollectibleNodeDetailResponse());
        case 'DestinyResponsesDestinyErrorProfile':
          return dson.map(value, new DestinyResponsesDestinyErrorProfile());
        case 'DestinyResponsesDestinyItemChangeResponse':
          return dson.map(value, new DestinyResponsesDestinyItemChangeResponse());
        case 'DestinyResponsesDestinyItemResponse':
          return dson.map(value, new DestinyResponsesDestinyItemResponse());
        case 'DestinyResponsesDestinyLinkedProfilesResponse':
          return dson.map(value, new DestinyResponsesDestinyLinkedProfilesResponse());
        case 'DestinyResponsesDestinyProfileResponse':
          return dson.map(value, new DestinyResponsesDestinyProfileResponse());
        case 'DestinyResponsesDestinyVendorResponse':
          return dson.map(value, new DestinyResponsesDestinyVendorResponse());
        case 'DestinyResponsesDestinyVendorsResponse':
          return dson.map(value, new DestinyResponsesDestinyVendorsResponse());
        case 'DestinyResponsesInventoryChangedResponse':
          return dson.map(value, new DestinyResponsesInventoryChangedResponse());
        case 'DestinySocketPlugSources':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinySocketTypeActionType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinySocketsDestinyItemPlug':
          return dson.map(value, new DestinySocketsDestinyItemPlug());
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
        case 'DestinyVendorDisplayCategorySortOrder':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'DestinyVendorInteractionType':
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
        case 'DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent());
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
        case 'DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent());
        case 'DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent':
          return dson.map(value, new DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent());
        case 'DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent':
          return dson.map(value, new DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent());
        case 'DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent':
          return dson.map(value, new DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent());
        case 'DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent':
          return dson.map(value, new DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent());
        case 'DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent':
          return dson.map(value, new DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent());
        case 'DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent':
          return dson.map(value, new DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent());
        case 'DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent':
          return dson.map(value, new DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent());
        case 'DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent':
          return dson.map(value, new DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent());
        case 'DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent':
          return dson.map(value, new DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent());
        case 'DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent':
          return dson.map(value, new DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent());
        case 'DictionaryComponentResponseOfuint32AndDestinyVendorComponent':
          return dson.map(value, new DictionaryComponentResponseOfuint32AndDestinyVendorComponent());
        case 'DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent':
          return dson.map(value, new DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent());
        case 'EntitiesEntityActionResult':
          return dson.map(value, new EntitiesEntityActionResult());
        case 'ExceptionsPlatformErrorCodes':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'FireteamFireteamActivityType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'FireteamFireteamDateRange':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'FireteamFireteamMember':
          return dson.map(value, new FireteamFireteamMember());
        case 'FireteamFireteamPlatform':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'FireteamFireteamPlatformInviteResult':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'FireteamFireteamPublicSearchOption':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'FireteamFireteamResponse':
          return dson.map(value, new FireteamFireteamResponse());
        case 'FireteamFireteamSlotSearch':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'FireteamFireteamSummary':
          return dson.map(value, new FireteamFireteamSummary());
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
        case 'GlobalAlert':
          return dson.map(value, new GlobalAlert());
        case 'GlobalAlertLevel':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'GlobalAlertType':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
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
        case 'InlineResponse20055':
          return dson.map(value, new InlineResponse20055());
        case 'InlineResponse20056':
          return dson.map(value, new InlineResponse20056());
        case 'InlineResponse20057':
          return dson.map(value, new InlineResponse20057());
        case 'InlineResponse20058':
          return dson.map(value, new InlineResponse20058());
        case 'InlineResponse20059':
          return dson.map(value, new InlineResponse20059());
        case 'InlineResponse2006':
          return dson.map(value, new InlineResponse2006());
        case 'InlineResponse20060':
          return dson.map(value, new InlineResponse20060());
        case 'InlineResponse20061':
          return dson.map(value, new InlineResponse20061());
        case 'InlineResponse20062':
          return dson.map(value, new InlineResponse20062());
        case 'InlineResponse20063':
          return dson.map(value, new InlineResponse20063());
        case 'InlineResponse20064':
          return dson.map(value, new InlineResponse20064());
        case 'InlineResponse20065':
          return dson.map(value, new InlineResponse20065());
        case 'InlineResponse20066':
          return dson.map(value, new InlineResponse20066());
        case 'InlineResponse20067':
          return dson.map(value, new InlineResponse20067());
        case 'InlineResponse20068':
          return dson.map(value, new InlineResponse20068());
        case 'InlineResponse20069':
          return dson.map(value, new InlineResponse20069());
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
        case 'SearchResultOfContentItemPublicContract':
          return dson.map(value, new SearchResultOfContentItemPublicContract());
        case 'SearchResultOfDestinyEntitySearchResultItem':
          return dson.map(value, new SearchResultOfDestinyEntitySearchResultItem());
        case 'SearchResultOfFireteamResponse':
          return dson.map(value, new SearchResultOfFireteamResponse());
        case 'SearchResultOfFireteamSummary':
          return dson.map(value, new SearchResultOfFireteamSummary());
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
        case 'SingleComponentResponseOfDestinyCharacterRecordsComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyCharacterRecordsComponent());
        case 'SingleComponentResponseOfDestinyCharacterRenderComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyCharacterRenderComponent());
        case 'SingleComponentResponseOfDestinyCollectiblesComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyCollectiblesComponent());
        case 'SingleComponentResponseOfDestinyCurrenciesComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyCurrenciesComponent());
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
        case 'SingleComponentResponseOfDestinyPlugSetsComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyPlugSetsComponent());
        case 'SingleComponentResponseOfDestinyPresentationNodesComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyPresentationNodesComponent());
        case 'SingleComponentResponseOfDestinyProfileCollectiblesComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyProfileCollectiblesComponent());
        case 'SingleComponentResponseOfDestinyProfileComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyProfileComponent());
        case 'SingleComponentResponseOfDestinyProfileProgressionComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyProfileProgressionComponent());
        case 'SingleComponentResponseOfDestinyProfileRecordsComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyProfileRecordsComponent());
        case 'SingleComponentResponseOfDestinyVendorCategoriesComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyVendorCategoriesComponent());
        case 'SingleComponentResponseOfDestinyVendorComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyVendorComponent());
        case 'SingleComponentResponseOfDestinyVendorGroupComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyVendorGroupComponent());
        case 'SingleComponentResponseOfDestinyVendorReceiptsComponent':
          return dson.map(value, new SingleComponentResponseOfDestinyVendorReceiptsComponent());
        case 'StreamInfo':
          return dson.map(value, new StreamInfo());
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
        case 'UserGeneralUser':
          return dson.map(value, new UserGeneralUser());
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
