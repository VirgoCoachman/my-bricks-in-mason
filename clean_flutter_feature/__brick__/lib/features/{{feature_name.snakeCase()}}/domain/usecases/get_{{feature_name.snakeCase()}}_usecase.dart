import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/operation_entity.dart';
import '../repositories/operation_repository.dart';

class Get{{feature_name.pascalCase()}}UseCase extends UsecaseWithoutParams<List<{{feature_name.pascalCase()}}Entity>> {
  final {{feature_name.pascalCase()}}Repository repository;

  const Get{{feature_name.pascalCase()}}UseCase(this.repository);

  @override
  ResultFutureType<List<{{feature_name.pascalCase()}}Entity>> call() async{
    return await repository.getAll();
  }
}
