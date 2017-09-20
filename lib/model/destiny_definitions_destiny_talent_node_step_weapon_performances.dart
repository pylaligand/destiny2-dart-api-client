part of destiny2_api.api;

@Entity()
enum DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances {
  _0,
  _1,
  _2,
  _4,
  _8,
  _16,
  _32,
  _64,
  _128,
  _256,
  _512,
  _1024,
  _2048,
  _4096,
  _8191
  
}

class DestinyDefinitionsDestinyTalentNodeStepWeaponPerformancesTypeTransformer extends TypeTransformer<DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances> {

  @override
  dynamic encode(DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances data) {
    switch(data) {
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._0: return 0;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._1: return 1;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._2: return 2;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._4: return 4;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._8: return 8;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._16: return 16;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._32: return 32;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._64: return 64;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._128: return 128;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._256: return 256;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._512: return 512;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._1024: return 1024;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._2048: return 2048;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._4096: return 4096;
      case DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._8191: return 8191;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._0;
      case 1: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._1;
      case 2: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._2;
      case 4: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._4;
      case 8: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._8;
      case 16: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._16;
      case 32: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._32;
      case 64: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._64;
      case 128: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._128;
      case 256: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._256;
      case 512: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._512;
      case 1024: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._1024;
      case 2048: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._2048;
      case 4096: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._4096;
      case 8191: return DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances._8191;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

