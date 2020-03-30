import 'package:flutter/material.dart';
import 'package:philomath/widgets/drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MathsLO9 extends StatefulWidget {
  @override
  _MathsLO9State createState() => _MathsLO9State();
}

class _MathsLO9State extends State<MathsLO9> {
  String lo9_3vid1 = "https://www.youtube.com/watch?v=IAh00vU3FSY";
  String lo9_3vid2 = "https://www.youtube.com/watch?v=tGu-764KHCk";
  String lo9_3vid3 = "https://www.youtube.com/watch?v=gJdeJ1CoFnU";
  String lo9_3vid4 = "https://www.youtube.com/watch?v=flvhNBoOsiA";
  String lo9_3vid5 = "https://www.youtube.com/watch?v=r5MIraVUVUA";
  String lo9_3vid6 = "https://www.youtube.com/watch?v=WOZNsBAbFCE";

  YoutubePlayerController _vid1;
  YoutubePlayerController _vid2;
  YoutubePlayerController _vid3;
  YoutubePlayerController _vid4;
  YoutubePlayerController _vid5;
  YoutubePlayerController _vid6;

  @override
  void initState() {
    _vid1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo9_3vid1),
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
      initialVideoId: YoutubePlayer.convertUrlToId(lo9_3vid2),
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
      initialVideoId: YoutubePlayer.convertUrlToId(lo9_3vid3),
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
    _vid4 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo9_3vid4),
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
    _vid5 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo9_3vid5),
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
    _vid6 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo9_3vid6),
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
    _vid4.pause();
    _vid5.pause();
    _vid6.pause();
    super.initState();
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _vid1.pause();
    _vid2.pause();
    _vid3.pause();
    _vid4.pause();
    _vid5.pause();
    _vid6.pause();

    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Maths LO9'),
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
          YoutubePlayer(
            controller: _vid4,
            showVideoProgressIndicator: true,
          ),
          SizedBox(
            height: 20,
          ),
          YoutubePlayer(
            controller: _vid5,
            showVideoProgressIndicator: true,
          ),
          SizedBox(
            height: 20,
          ),
          YoutubePlayer(
            controller: _vid6,
            showVideoProgressIndicator: true,
          ),
        ],
      ),
    );
  }
}
