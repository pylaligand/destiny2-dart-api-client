# destiny2_api.model.ApplicationsApplication

## Load the model package
```dart
import 'package:destiny2_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**applicationType** | [**ApplicationsOAuthApplicationType**](ApplicationsOAuthApplicationType.md) |  | [optional] [default to null]
**applicationId** | **int** | Unique ID assigned to the application | [optional] [default to null]
**name** | **String** | Name of the application | [optional] [default to null]
**redirectUrl** | **String** | URL used to pass the user&#39;s authorization code to the application | [optional] [default to null]
**link** | **String** | Link to website for the application where a user can learn more about the app. | [optional] [default to null]
**scope** | **int** | Permissions the application needs to work | [optional] [default to null]
**origin** | **String** | Value of the Origin header sent in requests generated by this application. | [optional] [default to null]
**status** | [**ApplicationsApplicationStatus**](ApplicationsApplicationStatus.md) | Current status of the application. | [optional] [default to null]
**creationDate** | [**DateTime**](DateTime.md) | Date the application was first added to our database. | [optional] [default to null]
**statusChanged** | [**DateTime**](DateTime.md) | Date the application status last changed. | [optional] [default to null]
**firstPublished** | [**DateTime**](DateTime.md) | Date the first time the application status entered the &#39;Public&#39; status. | [optional] [default to null]
**team** | [**List&lt;ApplicationsApplicationDeveloper&gt;**](ApplicationsApplicationDeveloper.md) | List of team members who manage this application on Bungie.net. Will always consist of at least the application owner. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


