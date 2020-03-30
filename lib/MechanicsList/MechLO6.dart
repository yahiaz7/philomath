import 'package:flutter/material.dart';
import 'package:philomath/widgets/drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MechLO6 extends StatefulWidget {
  @override
  _MechLO6State createState() => _MechLO6State();
}

class _MechLO6State extends State<MechLO6> {
  String lo6vid1 = "https://www.youtube.com/watch?v=REIP2mf6sIQ";


  YoutubePlayerController _vid1;


  @override
  void initState() {
    _vid1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo6vid1),
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
        title: Text('Mech LO6'),
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
