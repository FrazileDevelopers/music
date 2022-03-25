import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../routes/router.gr.dart';

class BottomNavHome extends StatefulWidget {
  const BottomNavHome({Key? key}) : super(key: key);

  @override
  State<BottomNavHome> createState() => _BottomNavHomeState();
}

class _BottomNavHomeState extends State<BottomNavHome>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  @override
  void initState() {
    WidgetsBinding.instance?.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRouter(),
        MyMusicRouter(),
        LocationRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
        backgroundColor: Colors.blueGrey[900]!,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.blueGrey[300],
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Free Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'My Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gps_fixed),
            label: 'Location',
          ),
        ],
      ),
    );
  }
}
