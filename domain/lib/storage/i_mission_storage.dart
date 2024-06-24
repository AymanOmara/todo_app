import 'package:domain/features/mission/entity/mission_entity.dart';

abstract interface class IMissionStorage {
  Future<List<MissionEntity>> fetchMissions();
}
