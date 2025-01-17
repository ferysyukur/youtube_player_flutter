import 'package:flutter/material.dart';

import '../utils/youtube_player_controller.dart';

/// A widget to display the full screen toggle button.
class FullScreenButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.of(context);
    return IconButton(
      icon: Icon(
        controller.value.isFullScreen
            ? Icons.fullscreen_exit
            : Icons.fullscreen,
        color: Colors.white,
      ),
      onPressed: () {
        if (controller.value.isFullScreen) {
          controller.exitFullScreenMode();
        } else {
          controller.enterFullScreenMode();
        }
      },
    );
  }
}
