import 'package:hive/hive.dart';

class MissionModel extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String title;
  @HiveField(2)
  String description;
  @HiveField(3)
  int index;

  MissionModel({
    required this.id,
    required this.title,
    required this.description,
    required this.index,
  });
}
