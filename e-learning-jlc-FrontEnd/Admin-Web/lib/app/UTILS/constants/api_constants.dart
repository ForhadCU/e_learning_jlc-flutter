import 'enums.dart';

/// This class consists the all Constants used in APIs
class TApiConstants {
  TApiConstants._();
  // Example
  static const String mySecretApiKey = "blabla......";
  static const String demoUserID = "a52e68df-2833-458f-aaeb-9f872a85eb39";
}

class TApiPayloads {
  TApiPayloads._();

  static Map<String, String> allBoxes({
     String? userID,
     String? dataLimit,
     String? pageNumber,
  }) {
    return {
      "userID": userID ?? '',
      "dataLimit": dataLimit ?? '0',
      "pageNumber": pageNumber ?? '0',
    };
  }

  static Map<String, String> allProducts({
     String? userID,
     String? dataLimit,
     String? pageNumber,
  }) {
    return {
      "userID": userID ?? '',
      "dataLimit": dataLimit ?? '0',
      "pageNumber": pageNumber ?? '0',
    };
  }
}

class TApiEndpoints {
  TApiEndpoints._();
  static final _allBoxes = ApiRoute(
    url: "/api/v1/box/all-boxes",
    reqMethod: HttpMethods.get,
  );
  static final _allProducts = ApiRoute(
    url: "/api/v1/product/all-products",
    reqMethod: HttpMethods.get,
  );

  /// -- Public getter for routes
  static ApiRoute get allBoxes => _allBoxes;
  static ApiRoute get allProducts => _allProducts;
}

class ApiRoute {
  String url;
  Enum reqMethod;
  ApiRoute({required this.url, required this.reqMethod});
}
