import '../entities/{{feature_name.snakeCase()}}_entity.dart';
import '../../../../core/utils/typedef.dart';

abstract class {{feature_name.pascalCase()}}Repository {
  ResultFutureType<List<{{feature_name.pascalCase()}}Entity>> getAll();
}