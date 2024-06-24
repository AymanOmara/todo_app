import 'package:data/features/mission/model/mission_model.dart';
import 'package:hive/hive.dart';

class MissionRepository {
  Future<List<MissionModel>> fetchMissions() async {
    List<MissionModel> list = missionBox.values.toList();
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
