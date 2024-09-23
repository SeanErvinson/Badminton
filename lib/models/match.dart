import 'package:baddie_master/models/matchScore.dart';

import 'player.dart';

class Match {
  MatchType matchType;
  DateTime createdOn = DateTime.now().toUtc();
  DateTime? endedOn;
  List<Player> greenSidePlayers;
  List<Player> redSidePlayers;
  MatchScore matchScore;
  double greenSideEloRating;
  double redSideEloRating;
  Side? winner;
  bool isMatchTie = false;

  Match({
    this.matchType = MatchType.singles,
    required this.greenSidePlayers,
    required this.redSidePlayers,
  })  : matchScore = MatchScore(),
        greenSideEloRating = greenSidePlayers
            .map((e) => e.eloRating)
            .reduce((value, element) => _calculateAverage([value, element])),
        redSideEloRating = redSidePlayers
            .map((e) => e.eloRating)
            .reduce((value, element) => _calculateAverage([value, element]));

  void concludeMatch(Side side, bool isTie) {
    endedOn = DateTime.now().toUtc();
    if (isTie) {
      isMatchTie = true;
      return;
    }
    winner = side;
  }

  void incrementGreenSide() {
    matchScore.greenSideScore++;
  }

  void incrementRedSide() {
    matchScore.redSideScore++;
  }

  void decrementGreenSide() {
    if (matchScore.greenSideScore <= 0) {
      return;
    }
    matchScore.greenSideScore--;
  }

  void decrementRedSide() {
    if (matchScore.redSideScore <= 0) {
      return;
    }
    matchScore.redSideScore--;
  }

  static double _calculateAverage(List<double> values) =>
      values.reduce((value, element) => (value + element) / values.length);
}

enum Side { green, red }

enum MatchType { singles, doubles }
