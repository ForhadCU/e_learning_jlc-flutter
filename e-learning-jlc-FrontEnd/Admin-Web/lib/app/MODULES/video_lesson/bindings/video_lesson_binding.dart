import 'package:get/get.dart';

import '../controllers/video_lesson_controller.dart';

class VideoLessonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoLessonController>(
      () => VideoLessonController(),
    );
  }
}
