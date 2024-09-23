import 'package:baddie_master/models/user.dart';

class Player {
  String id;
  User user;
  double eloRating;

  Player({required this.id, required this.user, required this.eloRating});
}
