abstract class AppStrings {
  static const String loginFailed = "Username or Password is in correct";
  static const String recipeApp = "Recipe App";
  static const String recipes = "Recipes";
  static const String username = "Username";
  static const String password = "Password";
  static const String login = "Login";
  static const String loginAlert = "Login Alert";
  static const String home = "Home";
  static const String whatDoYouWantToCook = "What do you want to cook today ?";
  static const String favoritesList = "Favorites List";
  static const String min = "min";
  static const String undefined = "Undefined";
  static const String ingredients = "Ingredients";
  static const String calories = "Calories";
  static const String fats = "Fats";
  static const String proteins = "Proteins";
  static const String carbs = "Carbs";
  static const String kcal = "Kcal";
  static const String gm = "gm";
  static const String ok = "ok";
  static const String ratings = "Ratings";
  static const String description = "Description";
  static const String yourFavorites = "Your Favorites!";
  static const String yourCartIsEmpty = "your cart is empty !";
  static const String addSomeProducts =
      "add some recipes to your favorites list";

  static String getPeriod(String? str) {
    return str != null
        ? str.replaceAll(RegExp('[^0-9]'), '')
        : AppStrings.undefined;
  }
}
