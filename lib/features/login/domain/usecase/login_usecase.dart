import 'package:injectable/injectable.dart';
import 'package:recipe_app/features/login/data/model/user_model.dart';
import 'package:recipe_app/features/login/domain/repository/login_repository.dart';
import 'package:recipe_app/core/infrastructure/comon/app_exceptions.dart';
import 'package:recipe_app/core/infrastructure/comon/app_usecase.dart';

@injectable
class LoginUseCase extends AppUseCase<bool?, UserModel> {
  final LoginRepository _authRepository;
  LoginUseCase(this._authRepository);

  @override
  bool execute(UserModel params) {
    try {
      return _authRepository.login(params);
    } catch (error) {
      throw LocalDatabaseException(error.toString());
    }
  }
}
