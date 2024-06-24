import 'package:data/features/mission/model/mission_model.dart';
import 'package:domain/features/mission/entity/mission_entity.dart';

extension MissionEntityMapper on MissionEntity {
  MissionModel toModel() {
    return MissionModel(
      id: id,
      title: title,
      description: description,
      index: index,
    );
  }
}