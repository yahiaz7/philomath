import 'package:flutter/material.dart';
import 'package:philomath/widgets/drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class StatLO3 extends StatefulWidget {
  @override
  _StatLO3State createState() => _StatLO3State();
}

class _StatLO3State extends State<StatLO3> {
  String lo3vid1 = "https://www.youtube.com/watch?v=CxMhjPQIru8";

  YoutubePlayerController _vid1;

  @override
  void initState() {
    _vid1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo3vid1),
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
        title: Text('Stat LO3'),
      ),
      body: ListView(
        children: [
          SizedBox(
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
