import 'package:video_player/video_player.dart';


class MyClass {
  final VideoPlayerController _controller;

  MyClass() : _controller = VideoPlayerController.network("assets/videos/Winter_Branch_4K_Living_Background.mp4")
  {
    _controller.initialize();
  }
}

