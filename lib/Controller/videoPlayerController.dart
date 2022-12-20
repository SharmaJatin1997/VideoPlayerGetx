import 'package:chewie/chewie.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoController extends GetxController{
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  @override
  void onInit() {
    videoPlayerController = VideoPlayerController.network(
      "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    );
    chewieController= ChewieController(
        videoPlayerController: videoPlayerController,
        aspectRatio: 16/9,
        autoPlay: true,
        allowedScreenSleep: false
    );
    super.onInit();
  }
  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
}