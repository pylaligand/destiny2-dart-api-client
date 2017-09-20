part of destiny2_api.api;

@Entity()
enum ApplicationsApplicationScopes {
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
  _1024
  
}

class ApplicationsApplicationScopesTypeTransformer extends TypeTransformer<ApplicationsApplicationScopes> {

  @override
  dynamic encode(ApplicationsApplicationScopes data) {
    switch(data) {
      case ApplicationsApplicationScopes._1: return 1;
      case ApplicationsApplicationScopes._2: return 2;
      case ApplicationsApplicationScopes._4: return 4;
      case ApplicationsApplicationScopes._8: return 8;
      case ApplicationsApplicationScopes._16: return 16;
      case ApplicationsApplicationScopes._32: return 32;
      case ApplicationsApplicationScopes._64: return 64;
      case ApplicationsApplicationScopes._128: return 128;
      case ApplicationsApplicationScopes._256: return 256;
      case ApplicationsApplicationScopes._512: return 512;
      case ApplicationsApplicationScopes._1024: return 1024;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  ApplicationsApplicationScopes decode(dynamic data) {
    switch (data) {
      case 1: return ApplicationsApplicationScopes._1;
      case 2: return ApplicationsApplicationScopes._2;
      case 4: return ApplicationsApplicationScopes._4;
      case 8: return ApplicationsApplicationScopes._8;
      case 16: return ApplicationsApplicationScopes._16;
      case 32: return ApplicationsApplicationScopes._32;
      case 64: return ApplicationsApplicationScopes._64;
      case 128: return ApplicationsApplicationScopes._128;
      case 256: return ApplicationsApplicationScopes._256;
      case 512: return ApplicationsApplicationScopes._512;
      case 1024: return ApplicationsApplicationScopes._1024;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

