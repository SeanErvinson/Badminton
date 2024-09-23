import 'package:baddie_master/controller/auth_controller.dart';
import 'package:baddie_master/screens/screens.dart';
import 'package:baddie_master/values/values.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: Strings.appName,
        theme: ThemeData(
          colorScheme: ColorScheme.light(),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const MyHomePage());
  }
}

enum NavigationTab { home, match, profile }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, this.navigationTab = NavigationTab.home});

  final NavigationTab navigationTab;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  NavigationTab currentNavigationTab = NavigationTab.home;
  String getTitleName() {
    switch (currentNavigationTab) {
      case NavigationTab.match:
        return Strings.matchHistory;
      case NavigationTab.profile:
        return Strings.profile;
      case NavigationTab.home:
      default:
        return Strings.home;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(getTitleName()),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentNavigationTab = NavigationTab.values
                .firstWhere((element) => element.index == index);
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentNavigationTab.index,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: Strings.home,
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.sports_score)),
            label: Strings.match,
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.person_outlined),
            ),
            label: Strings.profile,
          ),
        ],
      ),
      body: <Widget>[
        const HomeScreen(),
        const MatchesScreen(),
        const ProfileScreen(),
      ][currentNavigationTab
          .index], // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
