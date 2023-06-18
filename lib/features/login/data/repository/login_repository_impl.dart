import 'package:injectable/injectable.dart';
import 'package:recipe_app/features/login/data/model/user_model.dart';
import 'package:recipe_app/features/login/domain/repository/login_repository.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl extends LoginRepository {

  @override
  login(UserModel userModel){
    if (userModel.email=="Admin@gmail.com" &&
        userModel.password=="admin" ) return true;
    return false;
  }
}
