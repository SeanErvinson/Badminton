import 'package:baddie_master/dto/player_dto.dart';
import 'package:baddie_master/models/match.dart';
import 'package:baddie_master/models/matchScore.dart';

class MatchDto {
  MatchType matchType;
  DateTime playedOn;
  List<PlayerDto> greenSidePlayers;
  List<PlayerDto> redSidePlayers;
  MatchScore score;
  Side winner;
  bool isMatchTie;

  MatchDto(
      {required this.greenSidePlayers,
      required this.isMatchTie,
      required this.matchType,
      required this.playedOn,
      required this.redSidePlayers,
      required this.score,
      required this.winner});
}
