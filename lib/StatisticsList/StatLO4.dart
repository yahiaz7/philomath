import 'package:flutter/material.dart';
import 'package:philomath/widgets/drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class StatLO4 extends StatefulWidget {
  @override
  _StatLO4State createState() => _StatLO4State();
}

class _StatLO4State extends State<StatLO4> {
  String lo4vid1 = "https://www.youtube.com/watch?v=31p-a1nzzfc";
  String lo4vid2 = "https://www.youtube.com/watch?v=Vwv5M-CV3C8";
  String lo4vid3 = "https://www.youtube.com/watch?v=KS6KEWaoOOE";

  YoutubePlayerController _vid1;
  YoutubePlayerController _vid2;
  YoutubePlayerController _vid3;

  @override
  void initState() {
    _vid1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo4vid1),
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
      initialVideoId: YoutubePlayer.convertUrlToId(lo4vid2),
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
    _vid3 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo4vid3),
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
        title: Text('Stat LO4'),
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
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
