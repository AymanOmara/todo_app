import 'package:data/features/mission/model/mission_model.dart';
import 'package:hive/hive.dart';

class MissionRepository {
  Future<List<MissionModel>> fetchMissions() async {
    List<MissionModel> list = missionBox.values.toList();
    return list;
  }

  Box<MissionModel> get missionBox => Hive.box("mission");

  void addMission(MissionModel mission) {
    missionBox.add(mission);
  }

  void updateMission(MissionModel mission) {
    missionBox.put(mission.id, mission);
  }

  void deleteMission(MissionModel mission) {
    missionBox.delete(mission.id);
  }
}
