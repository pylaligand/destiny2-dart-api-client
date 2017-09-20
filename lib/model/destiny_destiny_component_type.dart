part of destiny2_api.api;

@Entity()
enum DestinyDestinyComponentType {
  _0,
  _100,
  _101,
  _102,
  _103,
  _200,
  _201,
  _202,
  _203,
  _204,
  _205,
  _300,
  _301,
  _302,
  _303,
  _304,
  _305,
  _306,
  _307,
  _308,
  _400,
  _401,
  _402,
  _500
  
}

class DestinyDestinyComponentTypeTypeTransformer extends TypeTransformer<DestinyDestinyComponentType> {

  @override
  dynamic encode(DestinyDestinyComponentType data) {
    switch(data) {
      case DestinyDestinyComponentType._0: return 0;
      case DestinyDestinyComponentType._100: return 100;
      case DestinyDestinyComponentType._101: return 101;
      case DestinyDestinyComponentType._102: return 102;
      case DestinyDestinyComponentType._103: return 103;
      case DestinyDestinyComponentType._200: return 200;
      case DestinyDestinyComponentType._201: return 201;
      case DestinyDestinyComponentType._202: return 202;
      case DestinyDestinyComponentType._203: return 203;
      case DestinyDestinyComponentType._204: return 204;
      case DestinyDestinyComponentType._205: return 205;
      case DestinyDestinyComponentType._300: return 300;
      case DestinyDestinyComponentType._301: return 301;
      case DestinyDestinyComponentType._302: return 302;
      case DestinyDestinyComponentType._303: return 303;
      case DestinyDestinyComponentType._304: return 304;
      case DestinyDestinyComponentType._305: return 305;
      case DestinyDestinyComponentType._306: return 306;
      case DestinyDestinyComponentType._307: return 307;
      case DestinyDestinyComponentType._308: return 308;
      case DestinyDestinyComponentType._400: return 400;
      case DestinyDestinyComponentType._401: return 401;
      case DestinyDestinyComponentType._402: return 402;
      case DestinyDestinyComponentType._500: return 500;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyComponentType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyComponentType._0;
      case 100: return DestinyDestinyComponentType._100;
      case 101: return DestinyDestinyComponentType._101;
      case 102: return DestinyDestinyComponentType._102;
      case 103: return DestinyDestinyComponentType._103;
      case 200: return DestinyDestinyComponentType._200;
      case 201: return DestinyDestinyComponentType._201;
      case 202: return DestinyDestinyComponentType._202;
      case 203: return DestinyDestinyComponentType._203;
      case 204: return DestinyDestinyComponentType._204;
      case 205: return DestinyDestinyComponentType._205;
      case 300: return DestinyDestinyComponentType._300;
      case 301: return DestinyDestinyComponentType._301;
      case 302: return DestinyDestinyComponentType._302;
      case 303: return DestinyDestinyComponentType._303;
      case 304: return DestinyDestinyComponentType._304;
      case 305: return DestinyDestinyComponentType._305;
      case 306: return DestinyDestinyComponentType._306;
      case 307: return DestinyDestinyComponentType._307;
      case 308: return DestinyDestinyComponentType._308;
      case 400: return DestinyDestinyComponentType._400;
      case 401: return DestinyDestinyComponentType._401;
      case 402: return DestinyDestinyComponentType._402;
      case 500: return DestinyDestinyComponentType._500;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

