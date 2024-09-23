import 'package:baddie_master/models/match.dart';
import 'package:baddie_master/screens/scoreboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../values/values.dart';

class MatchFormScreen extends StatefulWidget {
  const MatchFormScreen({super.key});

  @override
  State<MatchFormScreen> createState() => _MatchFormScreenState();
}

class _MatchFormScreenState extends State<MatchFormScreen> {
  final matchFormKey = GlobalKey<FormState>();
  final searchController = TextEditingController();
  final matchTypeChoiceController = Get.put(MatchTypeChoiceController());

  late List<String> players = ["A", "B", "C", "D"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(Strings.addNewGame),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(Strings.matchType),
            const SizedBox(
              height: 10,
            ),
            const MatchTypeChoice(),
            const Text(Strings.players),
            const SizedBox(
              height: 10,
            ),
            const CourtView(),
            TextField(
              decoration: const InputDecoration(hintText: Strings.search),
              controller: searchController,
            ),
            Container(
              height: 200,
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.solid)),
              child: GridView.count(
                physics: const ScrollPhysics(),
                crossAxisCount: 4,
                children: List.generate(100, (index) {
                  return const Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Text('AH'),
                        ),
                        Text('Sean Ong')
                      ],
                    ),
                  );
                }),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () => {}, child: const Text("Reset")),
                ElevatedButton(
                  onPressed: () {
                    Get.off(const ScoreBoardScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                  child: const Text("Start"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    matchTypeChoiceController.dispose();
    super.dispose();
  }
}

class CourtView extends StatelessWidget {
  const CourtView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final MatchTypeChoiceController controller = Get.find();
    List<String> greenPlayers = [];
    List<String> redPlayers = [];

    var placeholder = Container(
      decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all()),
      width: 40,
    );

    List<Widget> greenSideChildren = [
      Positioned(left: 50, top: 25, child: placeholder),
      Positioned(left: 50, bottom: 25, child: placeholder)
    ];
    List<Widget> redSideChildren = [
      Positioned(right: 50, top: 25, child: placeholder),
      Positioned(right: 50, bottom: 25, child: placeholder),
    ];
    if (controller.selectedMatchType.value == MatchType.singles) {
      greenSideChildren = [
        Positioned(
            left: 50,
            top: 50,
            child: CircleAvatar(
                child: Text(
                    controller.selectedMatchType.value == MatchType.singles
                        ? "Singles"
                        : "Doubles"))),
      ];
      redSideChildren = [
        Positioned(
            left: 50,
            top: 50,
            child: CircleAvatar(
                child: Text(
                    controller.selectedMatchType.value == MatchType.singles
                        ? "Singles"
                        : "Doubles"))),
      ];
    }

    return Container(
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/badminton-court.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [...greenSideChildren, ...redSideChildren],
      ),
    );
  }
}

class MatchTypeChoiceController extends GetxController {
  var selectedMatchType = MatchType.singles.obs;
  selectMatchType(MatchType matchType) => selectedMatchType.value = matchType;
}

class MatchTypeChoice extends StatefulWidget {
  const MatchTypeChoice({super.key});

  @override
  State<MatchTypeChoice> createState() => _MatchTypeChoiceState();
}

class _MatchTypeChoiceState extends State<MatchTypeChoice> {
  String? selectedValue = "singles";
  final MatchTypeChoiceController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ChoiceChip(
          showCheckmark: false,
          label: const Text('Singles'),
          selected: controller.selectedMatchType.value == MatchType.singles,
          onSelected: (bool selected) {
            setState(() {
              controller.selectedMatchType(MatchType.singles);
            });
          },
        ),
        ChoiceChip(
          showCheckmark: false,
          label: const Text('Doubles'),
          selected: controller.selectedMatchType.value == MatchType.doubles,
          onSelected: (bool selected) {
            setState(() {
              controller.selectedMatchType(MatchType.doubles);
            });
          },
        )
      ],
    );
  }
}
