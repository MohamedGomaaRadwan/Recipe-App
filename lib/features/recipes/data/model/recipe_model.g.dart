// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeModelAdapter extends TypeAdapter<RecipeModel> {
  @override
  final int typeId = 1;

  @override
  RecipeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecipeModel(
      id: fields[0] as String?,
      fats: fields[1] as String?,
      name: fields[2] as String?,
      time: fields[3] as String?,
      image: fields[4] as String?,
      carbos: fields[5] as String?,
      rating: fields[6] as double?,
      ratings: fields[7] as double?,
      calories: fields[8] as String?,
      proteins: fields[9] as String?,
      description: fields[10] as String?,
      ingredients: (fields[11] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, RecipeModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fats)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.time)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.carbos)
      ..writeByte(6)
      ..write(obj.rating)
      ..writeByte(7)
      ..write(obj.ratings)
      ..writeByte(8)
      ..write(obj.calories)
      ..writeByte(9)
      ..write(obj.proteins)
      ..writeByte(10)
      ..write(obj.description)
      ..writeByte(11)
      ..write(obj.ingredients);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) => RecipeModel(
      id: json['id'] as String?,
      fats: json['fats'] as String?,
      name: json['name'] as String?,
      time: json['time'] as String?,
      image: json['image'] as String?,
      carbos: json['carbos'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      ratings: (json['ratings'] as num?)?.toDouble(),
      calories: json['calories'] as String?,
      proteins: json['proteins'] as String?,
      description: json['description'] as String?,
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RecipeModelToJson(RecipeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fats': instance.fats,
      'name': instance.name,
      'time': instance.time,
      'image': instance.image,
      'carbos': instance.carbos,
      'rating': instance.rating,
      'ratings': instance.ratings,
      'calories': instance.calories,
      'proteins': instance.proteins,
      'description': instance.description,
      'ingredients': instance.ingredients,
    };
