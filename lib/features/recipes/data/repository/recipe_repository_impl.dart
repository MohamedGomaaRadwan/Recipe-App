import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/infrastructure/comon/api_path.dart';
import 'package:recipe_app/core/infrastructure/comon/api_service.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';
import 'package:recipe_app/features/recipes/domain/repository/recipe_repository.dart';

@Injectable(as: RecipeRepository)
class RecipeRepositoryImpl extends RecipeRepository {
  final ApiService _apiService;
  RecipeRepositoryImpl(this._apiService);

  @override
  Future<List<RecipeModel>> fetchRecipes() async {
    final Response response = await _apiService.getApi(ApiPath.recipes);
    List<dynamic> list = response.data as List<dynamic>;
    List<RecipeModel> result =
        List<RecipeModel>.from(list.map((e) => RecipeModel.fromJson(e)));
    return result;
  }
}
