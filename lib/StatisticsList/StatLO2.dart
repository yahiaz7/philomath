import 'package:flutter/material.dart';
import 'package:philomath/widgets/drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class StatLO2 extends StatefulWidget {
  @override
  _StatLO2State createState() => _StatLO2State();
}

class _StatLO2State extends State<StatLO2> {
  String lo2vid1 =
      "https://www.youtube.com/watch?v=NY7SoZtH7sI&list=PLiYz9kp-l2GrBxvXECNr4WVJgSqP9SqX4";
  String lo2vid2 =
      "https://www.youtube.com/watch?v=be2qEgDmaWc&list=PLiYz9kp-l2GrBxvXECNr4WVJgSqP9SqX4&index=2";
  String lo2vid3 =
      "https://www.youtube.com/watch?v=Rg_sCd7Ff04&list=PLiYz9kp-l2GrBxvXECNr4WVJgSqP9SqX4&index=3";
  String lo2vid4 =
      "https://www.youtube.com/watch?v=p3dZxm06OP8&list=PLiYz9kp-l2GrBxvXECNr4WVJgSqP9SqX4&index=4";
  String lo2vid5 =
      "https://www.youtube.com/watch?v=MtFjTbYTj54&list=PLiYz9kp-l2GrBxvXECNr4WVJgSqP9SqX4&index=5";
  String lo2vid6 =
      "https://www.youtube.com/watch?v=cr2gfLTSGtU&list=PLiYz9kp-l2GrBxvXECNr4WVJgSqP9SqX4&index=6";
  String lo2vid7 =
      "https://www.youtube.com/watch?v=9TWkwqRW__U&list=PLiYz9kp-l2GrBxvXECNr4WVJgSqP9SqX4&index=7";

  YoutubePlayerController _vid1;
  YoutubePlayerController _vid2;
  YoutubePlayerController _vid3;
  YoutubePlayerController _vid4;
  YoutubePlayerController _vid5;
  YoutubePlayerController _vid6;
  YoutubePlayerController _vid7;


  @override
  void initState() {
    _vid1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(lo2vid1),
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
      initialVideoId: YoutubePlayer.convertUrlToId(lo2vid2),
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
      initialVideoId: YoutubePlayer.convertUrlToId(lo2vid3),
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
      initialVideoId: YoutubePlayer.convertUrlToId(lo2vid4),
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
      initialVideoId: YoutubePlayer.convertUrlToId(lo2vid5),
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
      initialVideoId: YoutubePlayer.convertUrlToId(lo2vid6),
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
      initialVideoId: YoutubePlayer.convertUrlToId(lo2vid7),
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

    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Stat LO2'),
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
          ),SizedBox(
            height: 20,
          ),
          YoutubePlayer(
            controller: _vid6,
            showVideoProgressIndicator: true,
          ),SizedBox(
            height: 20,
          ),
          YoutubePlayer(
            controller: _vid7,
            showVideoProgressIndicator: true,
          ),

        ],
      ),
    );
  }
}
