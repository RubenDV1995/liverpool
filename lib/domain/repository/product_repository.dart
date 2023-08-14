import '../../utils/either/either.dart';
import '../../utils/enums/failures.dart';
import '../models/product_model.dart';

abstract class ProductRepository{
  Future<Either<FailuresEnum, Temperatures>> getProduct();
}