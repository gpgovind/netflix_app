import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constans.dart';
import 'package:netflixclone/presentation/home/widgets/functions/functions.dart';
import 'package:netflixclone/presentation/new_and_hot/functions/functions.dart';
import 'package:netflixclone/presentation/new_and_hot/widgets/coming_soon.dart';
import 'package:netflixclone/presentation/new_and_hot/widgets/everyones_watching.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              "Hot & New",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: [
              const Icon(
                Icons.cast,
                size: 30,
                color: Colors.white,
              ),
              KWidth,
              Container(
                width: 30,
                height: 30,
                color: Colors.blue,
              ),
              KWidth
            ],
            bottom: TabBar(
                labelColor: kblack,
                unselectedLabelColor: kwhite,
                labelStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(color: kwhite, borderRadius: kradius30),
                tabs: const [
                  Tab(
                    text: " 🍿 Comming Soon",
                  ),
                  Tab(
                    text: " 👀  Everyone's Watching",
                  ),
                ]),
          ),
        ),
        body: TabBarView(
            children: [_buildComingSoon(), _buildEveryonesWatching()]),
      ),
    );
  }
}

Widget _buildComingSoon() {
  return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) => Column(
            children: [
              kheight,
              ComingSoonWidgets(
                movie: HomeFunction.comingSoon[index],
              )
            ],
          ));
}

Widget _buildEveryonesWatching() {
  return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return EveryonesWathingWidgets(
          movies: NewAndHotFunctions.discover[index],
        );
      });
}
