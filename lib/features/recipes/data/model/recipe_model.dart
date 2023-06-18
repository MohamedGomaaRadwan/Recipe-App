import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'recipe_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class RecipeModel {
  static String recipeBoxKey = 'recipeBoxKey';
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? fats;
  @HiveField(2)
  String? name;
  @HiveField(3)
  String? time;
  @HiveField(4)
  String? image;
  @HiveField(5)
  String? carbos;
  @HiveField(6)
  double? rating;
  @HiveField(7)
  double? ratings;
  @HiveField(8)
  String? calories;
  @HiveField(9)
  String? proteins;
  @HiveField(10)
  String? description;
  @HiveField(11)
  List<String>? ingredients;

  RecipeModel({
    this.id,
    this.fats,
    this.name,
    this.time,
    this.image,
    this.carbos,
    this.rating,
    this.ratings,
    this.calories,
    this.proteins,
    this.description,
    this.ingredients,
  });

  Map<String, dynamic> toJson() => _$RecipeModelToJson(this);

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);

  RecipeModel fromJson(Map<String, dynamic> json) => RecipeModel.fromJson(json);
}
