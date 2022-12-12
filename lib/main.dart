import 'package:flutter/material.dart';

void main() => runApp(const MusicApp());

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  static const String _title = 'Music App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: const MusicTabController(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.teal,
        fontFamily: 'RobotoCondensed',
      ),
    );
  }
}

List<Tab> tabs = <Tab>[
  const Tab(text: 'Artists', icon: Icon(Icons.person)),
  const Tab(text: 'Albums', icon: Icon(Icons.album)),
  const Tab(text: 'Playlists', icon: Icon(Icons.playlist_add_check)),
];

class MusicTabController extends StatelessWidget {
  const MusicTabController({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
          }
        });
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            elevation: 0,
            actions: const [],
            bottom: TabBar(
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: tabs.map((Tab tab) {
              return Center(
                child: Text(
                  '${tab.text!} Tab',
                  style: Theme.of(context).textTheme.headline5,
                ),
              );
            }).toList(),
          ),
        );
      }),
    );
  }
}
