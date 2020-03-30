import 'package:flutter/material.dart';
import 'package:philomath/widgets/drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MechLO5 extends StatefulWidget {
  @override
  _MechLO5State createState() => _MechLO5State();
}

class _MechLO5State extends State<MechLO5> {
  String lo5vid1 = "https://www.youtube.com/watch?v=WzjIMuf-yuo";


  YoutubePlayerController _vid1;


  @override
  void initState() {
    _vid1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo5vid1),
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
        title: Text('Mech LO5'),
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
