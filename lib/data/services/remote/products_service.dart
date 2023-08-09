import 'package:prueba_liverpool/data/services/http/http.dart';
import 'package:prueba_liverpool/domain/models/product_model.dart';

import '../../../utils/either/either.dart';
import '../../../utils/enums/failures.dart';

class ProductsService {
  final Http _http;

  ProductsService(this._http);

  Future<Either<FailuresEnum, Product>> getProducts() async {
    final result = await _http.request(
      'https://shopappst.liverpool.com.mx/appclienteservices/services/v6/plp/sf?page-number=1&search-string=&sort-option=&force-plp=false&number-of-items-per-page=40&cleanProductName=false',
      userApiKey: false,
      method: HttpMethod.get,
      onSuccess: (responseBody) {
        final json = responseBody;
        final Map<String, dynamic> data = json;
        return Product.fromJson(data);
      },
    );

    return result.when(
      (failure) async => Either.left(
        failure,
      ),
      (result) => Either.right(
        result,
      ),
    );
  }
}
