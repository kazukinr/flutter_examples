import 'package:flutter/material.dart';
import 'package:flutter_video_cast/flutter_video_cast.dart';

class CastPage extends StatefulWidget {
  @override
  _CastPageState createState() => _CastPageState();
}

class _CastPageState extends State<CastPage> {
  ChromeCastController? _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cast Sample'),
        actions: [
          ChromeCastButton(
            onButtonCreated: (controller) {
              setState(() {
                _controller = controller;
              });
              _controller?.addSessionListener();
            },
            onSessionStarted: () {
              _controller?.loadMedia(
                  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4');
            },
          )
        ],
      ),
    );
  }
}
