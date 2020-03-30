import 'package:flutter/material.dart';
import 'package:philomath/widgets/drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MechLO1and2 extends StatefulWidget {
  @override
  _MechLO1and2State createState() => _MechLO1and2State();
}

class _MechLO1and2State extends State<MechLO1and2> {
  String lo1vid1 = "https://www.youtube.com/watch?v=ihWB1hLY6uE";
  String lo1vid2 = "https://www.youtube.com/watch?v=NueuPY2Yqq4";
  String lo1vid3 = "https://www.youtube.com/watch?v=SbqnqKS9QlA";

  YoutubePlayerController _vid1;
  YoutubePlayerController _vid2;
  YoutubePlayerController _vid3;

  @override
  void initState() {
    _vid1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo1vid1),
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
    _vid2 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo1vid2),
      flags: YoutubePlayerFlags(controlsVisibleAtStart: true,
        captionLanguage: 'English',
        autoPlay: false,
        hideThumbnail: true,
        mute: false,
        disableDragSeek: false,
        forceHideAnnotation: true,
        enableCaption: true,
      ),
    );
    _vid3 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo1vid3),
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
    _vid2.pause();
    _vid3.pause();
    super.initState();
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _vid1.pause();
    _vid2.pause();
    _vid3.pause();

    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Mech LO1&2'),
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
          YoutubePlayer(
            controller: _vid2,
            showVideoProgressIndicator: true,
          ),
          SizedBox(
            height: 20,
          ),
          YoutubePlayer(
            controller: _vid3,
            showVideoProgressIndicator: true,
          ),
        ],
      ),
    );
  }
}
