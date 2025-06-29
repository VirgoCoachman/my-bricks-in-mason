import '../../domain/entities/{{ feature_name.snakeCase()}}_entity.dart';
import '../../domain/repositories/{{ feature_name.snakeCase()}}_repository.dart';
import '../datasources/{{ feature_name.snakeCase()}}_remote_datasource.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/typedef.dart';
import 'package:dartz/dartz.dart';

class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository {
  const {{feature_name.pascalCase()}}RepositoryImpl({required this.{{feature_name.camelCase()}}RemoteDataSource});

  final {{feature_name.pascalCase()}}RemoteDataSource {{feature_name.camelCase()}}RemoteDataSource;

  @override
  ResultFutureType<List<{{feature_name.pascalCase()}}Entity>> getAll() async {
    
    try {
  final result = await {{feature_name.camelCase()}}RemoteDataSource.getAll();
  return Right(result.map((model) => model.toEntity()).toList());
} catch (e) {
  return Left(ServerFailure(message: e.toString()));
}
  }
}