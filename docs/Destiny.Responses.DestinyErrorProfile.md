# destiny2_api.model.DestinyResponsesDestinyErrorProfile

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errorCode** | [**ExceptionsPlatformErrorCodes**](ExceptionsPlatformErrorCodes.md) | The error that we encountered. You should be able to look up localized text to show to the user for these failures. | [optional] [default to null]
**infoCard** | [**UserUserInfoCard**](UserUserInfoCard.md) | Basic info about the account that failed. Don&#39;t expect anything other than membership ID, Membership Type, and displayName to be populated. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


