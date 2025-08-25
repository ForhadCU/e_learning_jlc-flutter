import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class InteractiveVideoPlayer extends StatefulWidget {
  final String videoUrl;
  const InteractiveVideoPlayer({super.key, required this.videoUrl});

  @override
  State<InteractiveVideoPlayer> createState() => _InteractiveVideoPlayerState();
}

class _InteractiveVideoPlayerState extends State<InteractiveVideoPlayer> {
  late VideoPlayerController _controller;
  late List<Duration> questionTimestamps;
  int nextQuestionIndex = 0;
  bool showQuestion = false;

  @override
  void initState() {
    super.initState();

    // Your question pop-up times (in seconds)
    questionTimestamps = [
      Duration(seconds: 5),
      Duration(seconds: 10),
      Duration(seconds: 15),
    ];

    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();

        // Start listening to position
        _controller.addListener(_checkForQuestion);
      });
  }

  void _checkForQuestion() {
    if (nextQuestionIndex < questionTimestamps.length) {
      final currentPosition = _controller.value.position;

      if (currentPosition >= questionTimestamps[nextQuestionIndex]) {
        _controller.pause();
        setState(() {
          showQuestion = true;
        });
      }
    }
  }

  void _onQuestionAnswered() {
    // After user answers question
    setState(() {
      showQuestion = false;
      nextQuestionIndex++;
    });
    _controller.play();
  }

  @override
  void dispose() {
    _controller.removeListener(_checkForQuestion);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : CircularProgressIndicator(),
          ),

          // Question UI overlay
          if (showQuestion)
            Container(
              color: Colors.black.withOpacity(0.6),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Question Time!",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    ElevatedButton(
                      onPressed: _onQuestionAnswered,
                      child: Text("Answer Question & Continue"),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
