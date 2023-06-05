import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constans.dart';
import 'package:netflixclone/core/models/result.dart';
import 'package:netflixclone/presentation/home/widgets/custom_button.dart';
import 'package:netflixclone/presentation/widgets/video_widgets.dart';

class EveryonesWathingWidgets extends StatelessWidget {
  const EveryonesWathingWidgets({
    Key? key,
    required this.movies,
  }) : super(key: key);
  final Result movies;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Text(
          movies.title ?? 'unknown',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kheight,
        Text(
          movies.overview ?? 'Unknown',
          style: TextStyle(color: kgrey),
        ),
        kheight50,
        VideoWidget(image: movies.backdropPath!),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButton(
              icon: (Icons.share),
              title: "Share",
              iconsize: 25,
              textSize: 16,
            ),
            KWidth,
            CustomButton(
              icon: (Icons.add),
              title: "My List",
              iconsize: 25,
              textSize: 16,
            ),
            KWidth,
            CustomButton(
              icon: (Icons.play_arrow),
              title: " Play",
              iconsize: 25,
              textSize: 16,
            ),
            KWidth,
          ],
        )
      ],
    );
  }
}
