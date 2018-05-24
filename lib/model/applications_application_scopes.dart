part of destiny2_api.api;

@Entity()
class ApplicationsApplicationScopes {
  /// The underlying value of this enum member.
  final int value;

  const ApplicationsApplicationScopes._internal(this.value);

  /// Read basic user profile information such as the user's handle, avatar icon, etc.
  static const ApplicationsApplicationScopes readBasicUserProfile = const ApplicationsApplicationScopes._internal(1);
  /// Read Group/Clan Forums, Wall, and Members for groups and clans that the user has joined.
  static const ApplicationsApplicationScopes readGroups = const ApplicationsApplicationScopes._internal(2);
  /// Write Group/Clan Forums, Wall, and Members for groups and clans that the user has joined.
  static const ApplicationsApplicationScopes writeGroups = const ApplicationsApplicationScopes._internal(4);
  /// Administer Group/Clan Forums, Wall, and Members for groups and clans that the user is a founder or an administrator.
  static const ApplicationsApplicationScopes adminGroups = const ApplicationsApplicationScopes._internal(8);
  /// Create new groups, clans, and forum posts.
  static const ApplicationsApplicationScopes bnetWrite = const ApplicationsApplicationScopes._internal(16);
  /// Move or equip Destiny items
  static const ApplicationsApplicationScopes moveEquipDestinyItems = const ApplicationsApplicationScopes._internal(32);
  /// Read Destiny 1 Inventory and Vault contents. For Destiny 2, this scope is needed to read anything regarded as private. This is the only scope a Destiny 2 app needs for read operations against Destiny 2 data such as inventory, vault, currency, vendors, milestones, progression, etc.
  static const ApplicationsApplicationScopes readDestinyInventoryAndVault = const ApplicationsApplicationScopes._internal(64);
  /// Read user data such as who they are web notifications, clan/group memberships, recent activity, muted users.
  static const ApplicationsApplicationScopes readUserData = const ApplicationsApplicationScopes._internal(128);
  /// Edit user data such as preferred language, status, motto, avatar selection and theme.
  static const ApplicationsApplicationScopes editUserData = const ApplicationsApplicationScopes._internal(256);
  /// Access vendor and advisor data specific to a user. OBSOLETE. This scope is only used on the Destiny 1 API.
  static const ApplicationsApplicationScopes readDestinyVendorsAndAdvisors = const ApplicationsApplicationScopes._internal(512);
  /// Read offer history and claim and apply tokens for the user.
  static const ApplicationsApplicationScopes readAndApplyTokens = const ApplicationsApplicationScopes._internal(1024);
  /// Can perform actions that will result in a prompt to the user via the Destiny app.
  static const ApplicationsApplicationScopes advancedWriteActions = const ApplicationsApplicationScopes._internal(2048);
}

class ApplicationsApplicationScopesTypeTransformer extends TypeTransformer<ApplicationsApplicationScopes> {

  @override
  dynamic encode(ApplicationsApplicationScopes data) {
    return data.value;
  }

  @override
  ApplicationsApplicationScopes decode(dynamic data) {
    switch (data) {
      case 1: return ApplicationsApplicationScopes.readBasicUserProfile;
      case 2: return ApplicationsApplicationScopes.readGroups;
      case 4: return ApplicationsApplicationScopes.writeGroups;
      case 8: return ApplicationsApplicationScopes.adminGroups;
      case 16: return ApplicationsApplicationScopes.bnetWrite;
      case 32: return ApplicationsApplicationScopes.moveEquipDestinyItems;
      case 64: return ApplicationsApplicationScopes.readDestinyInventoryAndVault;
      case 128: return ApplicationsApplicationScopes.readUserData;
      case 256: return ApplicationsApplicationScopes.editUserData;
      case 512: return ApplicationsApplicationScopes.readDestinyVendorsAndAdvisors;
      case 1024: return ApplicationsApplicationScopes.readAndApplyTokens;
      case 2048: return ApplicationsApplicationScopes.advancedWriteActions;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

