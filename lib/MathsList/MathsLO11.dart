import 'package:flutter/material.dart';
import 'package:philomath/widgets/drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MathsLO11 extends StatefulWidget {
  @override
  _MathsLO11State createState() => _MathsLO11State();
}

class _MathsLO11State extends State<MathsLO11> {
  String lo10_3vid1 = "https://www.youtube.com/watch?v=MkjazYnvNP8";
  String lo10_3vid2 = "https://www.youtube.com/watch?v=_W3aVWsMp14";
  String lo10_3vid3 = "https://www.youtube.com/watch?v=2sZKZHyaQJ8";
  String lo10_3vid4 = "https://www.youtube.com/watch?v=rL9UXzZYYo4";
  String lo10_3vid5 = "https://www.youtube.com/watch?v=zWMTTRJ0l4w";
  String lo10_3vid6 = "https://www.youtube.com/watch?v=cemF45vNOhg";
  String lo10_3vid7 = "https://www.youtube.com/watch?v=ZoCxUV893fo";
  String lo10_3vid8 = "https://www.youtube.com/watch?v=Rw70zkvqEiE";

  YoutubePlayerController _vid1;
  YoutubePlayerController _vid2;
  YoutubePlayerController _vid3;
  YoutubePlayerController _vid4;
  YoutubePlayerController _vid5;
  YoutubePlayerController _vid6;
  YoutubePlayerController _vid7;
  YoutubePlayerController _vid8;

  @override
  void initState() {
    _vid1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo10_3vid1),
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
    _vid2 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo10_3vid2),
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
      initialVideoId: YoutubePlayer.convertUrlToId(lo10_3vid3),
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
      initialVideoId: YoutubePlayer.convertUrlToId(lo10_3vid4),
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
      initialVideoId: YoutubePlayer.convertUrlToId(lo10_3vid5),
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
      initialVideoId: YoutubePlayer.convertUrlToId(lo10_3vid6),
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
    _vid7 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo10_3vid7),
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
    _vid8 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo10_3vid8),
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
    _vid7.pause();
    _vid8.pause();

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
    _vid7.pause();
    _vid8.pause();
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
          SizedBox(
            height: 20,
          ),
          YoutubePlayer(
            controller: _vid7,
            showVideoProgressIndicator: true,
          ),
          SizedBox(
            height: 20,
          ),
          YoutubePlayer(
            controller: _vid8,
            showVideoProgressIndicator: true,
          ),
        ],
      ),
    );
  }
}
