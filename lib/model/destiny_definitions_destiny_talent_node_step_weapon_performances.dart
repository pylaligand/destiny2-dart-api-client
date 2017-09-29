part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(this.value);

  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances none = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(0);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances rateOfFire = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(1);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances damage = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(2);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances accuracy = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(4);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances range = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(8);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances zoom = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(16);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances recoil = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(32);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances ready = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(64);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances reload = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(128);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances hairTrigger = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(256);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances ammoAndMagazine = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(512);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances trackingAndDetonation = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(1024);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances shotgunSpread = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(2048);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances chargeTime = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(4096);
  static const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances all = const DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._internal(8191);
}

class DestinyDefinitionsDestinyTalentNodeStepWeaponPerformancesTypeTransformer extends TypeTransformer<DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances> {

  @override
  dynamic encode(DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances data) {
    return data.value;
  }

  @override
  DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.none;
      case 1: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.rateOfFire;
      case 2: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.damage;
      case 4: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.accuracy;
      case 8: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.range;
      case 16: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.zoom;
      case 32: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.recoil;
      case 64: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.ready;
      case 128: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.reload;
      case 256: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.hairTrigger;
      case 512: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.ammoAndMagazine;
      case 1024: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.trackingAndDetonation;
      case 2048: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.shotgunSpread;
      case 4096: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.chargeTime;
      case 8191: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances.all;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

