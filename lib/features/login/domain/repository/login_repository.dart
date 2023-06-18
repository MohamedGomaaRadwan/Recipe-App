import 'package:recipe_app/core/infrastructure/comon/app_repository.dart';
import 'package:recipe_app/features/login/data/model/user_model.dart';

abstract class LoginRepository extends AppRepository {
  bool login(UserModel userModel);
}