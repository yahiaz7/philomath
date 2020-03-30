import 'package:flutter/material.dart';
import 'package:philomath/widgets/drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MathsLO7 extends StatefulWidget {
  @override
  _MathsLO7State createState() => _MathsLO7State();
}

class _MathsLO7State extends State<MathsLO7> {
  String lo7_3vid1 = "https://www.youtube.com/watch?v=4zJ6fl1Xakg";


  YoutubePlayerController _vid1;


  @override
  void initState() {
    _vid1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo7_3vid1),
      flags: YoutubePlayerFlags(
        controlsVisibleAtStart: true,
        captionLanguage: 'English',
        autoPlay: false,
        hideThumbnail: true,
        mute: false,
        disableDragSeek: false,
        forceHideAnnotation: true,
        enableCaption: true,
      ),
    );

    _vid1.pause();

    super.initState();
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _vid1.pause();

    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Maths LO7'),
      ),
      body: ListView(
        children: [          SizedBox(
          height: 20,
        ),

          YoutubePlayer(
            controller: _vid1,
            showVideoProgressIndicator: true,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
