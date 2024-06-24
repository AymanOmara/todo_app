import 'package:data/features/mission/model/mission_model.dart';
import 'package:domain/features/mission/entity/mission_entity.dart';

extension MissionModelMapper on MissionModel {
  MissionEntity toEntity() {
    return MissionEntity(
      id: id,
      title: title,
      description: description,
      index: index,
    );
  }
}
