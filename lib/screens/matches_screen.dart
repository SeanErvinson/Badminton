import 'package:baddie_master/dto/match_dto.dart';
import 'package:baddie_master/dto/player_dto.dart';
import 'package:baddie_master/models/match.dart';
import 'package:baddie_master/models/matchScore.dart';
import 'package:baddie_master/screens/match_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:get/route_manager.dart';

import '../values/values.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<MatchDto> matches = [
      MatchDto(
          greenSidePlayers: [
            PlayerDto(
              name: "Stella",
              profilePhoto:
                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
            PlayerDto(
              name: "Sean",
              profilePhoto:
                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            )
          ],
          isMatchTie: false,
          matchType: MatchType.doubles,
          playedOn: DateTime.now().toUtc(),
          redSidePlayers: [
            PlayerDto(
              name: "Avi",
              profilePhoto:
                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
            PlayerDto(
              name: "Yip",
              profilePhoto:
                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            )
          ],
          score: MatchScore(greenSideScore: 1, redSideScore: 11),
          winner: Side.red),
      MatchDto(
          greenSidePlayers: [
            PlayerDto(
              name: "Sean",
              profilePhoto:
                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            )
          ],
          isMatchTie: false,
          matchType: MatchType.singles,
          playedOn: DateTime.now().toUtc(),
          redSidePlayers: [
            PlayerDto(
              name: "Avi",
              profilePhoto:
                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            )
          ],
          score: MatchScore(greenSideScore: 1, redSideScore: 11),
          winner: Side.red),
      MatchDto(
          greenSidePlayers: [
            PlayerDto(
              name: "Sean",
              profilePhoto:
                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            )
          ],
          isMatchTie: false,
          matchType: MatchType.singles,
          playedOn: DateTime.now().toUtc(),
          redSidePlayers: [
            PlayerDto(
              name: "Avi",
              profilePhoto:
                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            )
          ],
          score: MatchScore(greenSideScore: 1, redSideScore: 11),
          winner: Side.green),
      MatchDto(
          greenSidePlayers: [
            PlayerDto(
              name: "Sean",
              profilePhoto:
                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
            PlayerDto(
              name: "Sean",
              profilePhoto:
                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            )
          ],
          isMatchTie: false,
          matchType: MatchType.doubles,
          playedOn: DateTime.now().toUtc(),
          redSidePlayers: [
            PlayerDto(
              name: "Sean",
              profilePhoto:
                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
            PlayerDto(
              name: "Sean",
              profilePhoto:
                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            )
          ],
          score: MatchScore(greenSideScore: 1, redSideScore: 11),
          winner: Side.green)
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(MatchFormScreen()),
        tooltip: Strings.addNewGame,
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.black26,
          );
        },
        itemBuilder: (context, index) {
          final match = matches[index];
          return ListTile(
            leading: PlayerIconHeading(
              match: match,
            ),
            title: PlayerHeading(
              match: match,
            ),
            trailing: MatchScoreTrailing(match: match),
          );
        },
        itemCount: matches.length,
      ),
    );
  }
}

class MatchScoreTrailing extends StatelessWidget {
  const MatchScoreTrailing({
    super.key,
    required this.match,
  });

  final MatchDto match;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(TextSpan(
          children: [
            TextSpan(
                text: match.score.greenSideScore.toString(), style: listTitle),
            match.winner == Side.green
                ? const WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    baseline: TextBaseline.alphabetic,
                    child: Icon(
                      Icons.arrow_left,
                      color: Colors.green,
                    ))
                : const TextSpan(),
          ],
        )),
        Text.rich(TextSpan(
          children: [
            TextSpan(
                text: match.score.redSideScore.toString(), style: listTitle),
            match.winner == Side.red
                ? const WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    baseline: TextBaseline.alphabetic,
                    child: Icon(
                      Icons.arrow_left,
                      color: Colors.green,
                    ))
                : const TextSpan(),
          ],
        ))
      ],
    );
  }
}

class PlayerIconHeading extends StatelessWidget {
  final MatchDto match;
  const PlayerIconHeading({
    required this.match,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> greenImages = [
      match.greenSidePlayers.first.profilePhoto
    ];
    final List<String> redImages = [match.redSidePlayers.first.profilePhoto];
    if (match.matchType == MatchType.doubles) {
      greenImages.add(match.greenSidePlayers.last.profilePhoto);
      redImages.add(match.greenSidePlayers.last.profilePhoto);
    }
    return SizedBox(
      width: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterImageStack(
              imageList: greenImages, totalCount: greenImages.length),
          FlutterImageStack(imageList: redImages, totalCount: redImages.length)
        ],
      ),
    );
  }
}

class PlayerHeading extends StatelessWidget {
  final MatchDto match;
  const PlayerHeading({
    required this.match,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (match.matchType == MatchType.singles) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(match.greenSidePlayers.first.name, style: listTitle),
          Text(match.redSidePlayers.first.name, style: listTitle),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(TextSpan(children: [
          TextSpan(text: match.greenSidePlayers.first.name, style: listTitle),
          const TextSpan(text: " - "),
          TextSpan(text: match.greenSidePlayers.last.name, style: listTitle),
        ])),
        Text.rich(TextSpan(children: [
          TextSpan(text: match.redSidePlayers.first.name, style: listTitle),
          const TextSpan(text: " - "),
          TextSpan(text: match.redSidePlayers.last.name, style: listTitle),
        ])),
      ],
    );
  }
}
