import 'package:prueba_liverpool/data/services/http/http.dart';
import 'package:prueba_liverpool/domain/models/product_model.dart';

import '../../../utils/either/either.dart';
import '../../../utils/enums/failures.dart';
import '../../datasources/temperatures_datasource.dart';

class ProductsService {
  final Http _http;

  ProductsService(this._http);

  Future<Either<FailuresEnum, Temperatures>> getProducts() async {
    final result = await _http.request(
      'https://shopappst.liverpool.com.mx/appclienteservices/services/v6/plp/sf?page-number=1&search-string=&sort-option=&force-plp=false&number-of-items-per-page=40&cleanProductName=false',
      userApiKey: false,
      method: HttpMethod.get,
      onSuccess: (responseBody) {
        final json = responseBody;
        final Map<String, dynamic> data = json;
        return Temperatures.fromJson(data);
      },
    );

    try {
      final Temperatures temperatures = Temperatures.fromJson(jsonTemperature);
      return Either.right(
        temperatures,
      );
    } catch (e) {
      return Either.left(
        FailuresEnum.parseError,
      );
    }
  }
}
