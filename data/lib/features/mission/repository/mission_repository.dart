import 'package:data/features/mission/mappers/mission_model_mapper.dart';
import 'package:data/features/mission/model/mission_model.dart';
import 'package:domain/features/mission/entity/mission_entity.dart';
import 'package:domain/storage/i_mission_storage.dart';
import 'package:hive/hive.dart';

class MissionRepository implements IMissionStorage{

  @override
  Future<List<MissionEntity>> fetchMissions() async {
    List<MissionEntity> list = missionBox.values.map((e)=>e.toEntity()).toList();
    return list;
  }

  Box<MissionModel> get missionBox => Hive.box("mission");

  Future<void> addMission(MissionModel mission) async {
    await missionBox.add(mission);
  }

  Future<void> updateMission(MissionModel mission) async {
    await missionBox.put(mission.id, mission);
  }

  Future<void> deleteMission(MissionModel mission) async {
    await missionBox.delete(mission.id);
  }
}
