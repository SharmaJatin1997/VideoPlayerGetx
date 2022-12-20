import 'package:chewie/chewie.dart';
import 'package:flip_widget/flip_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mediaplayer/Controller/videoPlayerController.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

void main() {
  runApp(
    GetMaterialApp(
      home: VideoPlayerScreen(),
    ),
  );
}

class VideoPlayerScreen extends StatelessWidget {
  VideoPlayerScreen({Key? key}) : super(key: key);
  final controller = Get.put(VideoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Video Player"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Chewie(controller: controller.chewieController),
              )
            ],
          ),
        ));
  }
}
