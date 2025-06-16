// import 'dart:convert';

// import 'package:dio/dio.dart';
// import 'package:ecommerce/common/constants/constants.dart';
// import 'package:ecommerce/common/repos/localdb_repository.dart';
// import 'package:ecommerce/common/repos/preferences_repository.dart';

// import 'package:logger/logger.dart';

// class ApiRepository {
//   final log = Logger();
//   final Dio _dio;
//   final PreferencesRepository prefRepo;
//   final LocalDBRepository localDB;

//   ApiRepository(
//     this._dio,
//     this.prefRepo,
//     this.localDB,
//   ) {
//     _dio.options.headers["Authorization"] =
//         "Bearer ${prefRepo.getPreference(Constants.store.AUTH_TOKEN)}";
//   }

//   String buildRequest({required Map<String, dynamic> data}) {
//     try {
//       final Map<String, dynamic> requestJson = {
//         "requester": {
//           "name": Constants.app.APP_NAME,
//           "version": "1.0",
//           "timestamp": DateTime.now().toUtc().toIso8601String(),
//           "requestedby": prefRepo.getPreference(Constants.store.USER_ID),
//         },
//       }; // Define default request JSON

//       for (var key in data.keys) {
//         log.d("ApiRepository:::In BuildRequest:$key - ${data[key]}");
//         requestJson[key] = data[key];
//       }
//       log.d("ApiRepository:::In BuildRequest:$requestJson");
//       return json.encode(requestJson);
//     } catch (error) {
//       log.e("ApiRepository:::Error in BuildRequest:$error");
//       rethrow;
//     }
//   }

//   Future<Map<String, dynamic>> postRequest({
//     required String url,
//     required Map<String, dynamic> data,
//   }) async {
//     try {
//       log.d("ApiRepository:::postRequest:Inputs::$url:::$data");

//       String? authToken = prefRepo.getPreference(Constants.store.AUTH_TOKEN);

//       log.d("ApiRepository:::postRequest:AuthToken::$authToken");

//       // Add headers if needed
//       _dio.options.headers['Authorization'] = 'Bearer $authToken';

//       String requestUrl = Constants.api.API_BASE_URL + url;
//       String requestData = buildRequest(data: data);

//       log.d(
//           "ApiRepository:::postRequest:Calling Dio Post with::$requestUrl:::$requestData");

//       final response = await _dio.post(requestUrl,
//           data: buildRequest(data: json.decode(requestData)));

//       // log.d("ApiRepository:::postRequest:Response from Post::$url:::$response");

//       final responseMap = _handleResponse(response) as Map<String, dynamic>;

//       return responseMap;
//     } on DioException catch (exception, error) {
//       log.e("ApiRepository:::postRequest:Error in post::$error");
//       throw _handleError(exception);
//     }
//   }

//   dynamic _handleResponse(Response response) {
//     if (response.statusCode! >= 200 && response.statusCode! < 300) {
//       final responseData = response.data;
//       if (responseData is Map) {
//         return responseData;
//       } else if (responseData is String) {
//         try {
//           return jsonDecode(responseData);
//         } catch (error) {
//           log.e(
//               "ApiRepository:::handleResponse:Error in handling response::$error");
//           throw Exception("Failed to decode response: $error");
//         }
//       } else {
//         return responseData;
//       }
//     } else {
//       log.e(
//           "ApiRepository:::handleResponse:Error response::${response.statusCode}:::${response.statusMessage}");
//       throw Exception(
//           "Failed to get response: ${response.statusCode} - ${response.statusMessage}");
//     }
//   }

//   Exception _handleError(DioException error) {
//     log.e("APIRepository:::handleError:Error Message::${error.message}");
//     String errorMessage;
//     switch (error.type) {
//       case DioExceptionType.connectionError:
//         errorMessage = "Connection Error.";
//         break;
//       case DioExceptionType.connectionTimeout:
//         errorMessage = "Connection timed out.";
//         break;
//       case DioExceptionType.receiveTimeout:
//         errorMessage = "Receive timeout.";
//         break;
//       case DioExceptionType.sendTimeout:
//         errorMessage = "Send timeout.";
//         break;
//       case DioExceptionType.cancel:
//         errorMessage = "Request cancelled.";
//         break;
//       case DioExceptionType.badResponse:
//         errorMessage =
//             "Response error: ${error.response?.statusCode} - ${error.response?.statusMessage}";
//         break;
//       case DioExceptionType.unknown:
//       default:
//         errorMessage = "Default error: $error";
//     }
//     return Exception(errorMessage);
//   }
// }
