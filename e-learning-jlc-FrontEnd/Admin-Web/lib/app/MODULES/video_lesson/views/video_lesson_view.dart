import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/video_lesson_controller.dart';

class VideoLessonView extends GetView<VideoLessonController> {
  const VideoLessonView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VideoLessonView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VideoLessonView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
