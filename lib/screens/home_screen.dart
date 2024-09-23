import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ];
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Events",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              width: double.infinity,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "MSAC - Court 1",
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Sunday - 10 - 11am",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                child: FlutterImageStack(
                                  itemRadius: 40,
                                  imageList: images,
                                  totalCount: images.length,
                                  itemCount: 3,
                                  showTotalCount: true,
                                ),
                                onTap: () {
                                  showModalBottomSheet(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(16.0)),
                                    ),
                                    useSafeArea: true,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 400,
                                        color: Colors.white,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.0,
                                                  vertical: 16.0),
                                              child: Text(
                                                "Who's coming",
                                                style: TextStyle(
                                                    fontSize: 28.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Expanded(
                                                child: ListView(
                                              children: [
                                                ...List.generate(
                                                  20,
                                                  (int index) {
                                                    return const ListTile(
                                                      leading: CircleAvatar(
                                                        child: Text('AH'),
                                                      ),
                                                      title: Text("Hello"),
                                                      trailing:
                                                          Icon(Icons.close),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ))
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              const Center(
                                  child: Icon(
                                Icons.check_circle,
                                color: Colors.amber,
                              ))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0))),
                      clipBehavior: Clip.antiAlias,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.red.shade300,
                              child: TextButton(
                                child: const Icon(Icons.close),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.green.shade400,
                              child: TextButton(
                                  child: const Icon(Icons.check),
                                  onPressed: () {}),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "On-going Match",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            children: [
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  baseline: TextBaseline.alphabetic,
                                  child: PulsatingIcon()),
                              TextSpan(
                                  text: 'Live',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              FlutterImageStack(
                                imageList: const [
                                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                ],
                                totalCount: 2,
                                itemRadius: 40,
                              ),
                              Text("Sean Avi"),
                            ],
                          ),
                          const Expanded(
                              child: Center(
                            child: Text("1-2",
                                style: TextStyle(
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.w600)),
                          )),
                          Column(
                            children: [
                              FlutterImageStack(
                                imageList: const [
                                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                  "https://images.unsplash.com/photo-1709494795426-2740f2439248?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                ],
                                totalCount: 2,
                                itemRadius: 40,
                              ),
                              Text("Sean\nAvi"),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Text(
              "Wall of shame",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              width: double.infinity,
              child: Card(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'Ranking',
                      style: TextStyle(
                          fontSize: 28.0, fontWeight: FontWeight.bold)),
                  WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: SizedBox(width: 10)),
                  WidgetSpan(
                      child: Icon(
                    Icons.leaderboard,
                    size: 28.0,
                  )),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              width: double.infinity,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PulsatingIcon extends StatefulWidget {
  const PulsatingIcon({super.key});

  @override
  State<PulsatingIcon> createState() => _PulsatingIconState();
}

class _PulsatingIconState extends State<PulsatingIcon>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1500),
  )..repeat();
  late final Animation<double> _scaleAnimation =
      Tween<double>(begin: 0.6, end: 1.2).animate(_controller);
  late final Animation<double> _fadeAnimation =
      Tween<double>(begin: 1, end: 0.2).animate(_controller);

  @override
  Widget build(BuildContext context) {
    const size = 20.0;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        FadeTransition(
          opacity: _fadeAnimation,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              width: size * 1.5,
              height: size * 1.5,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green.shade300),
            ),
          ),
        ),
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green.shade300,
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
