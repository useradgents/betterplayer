import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

///Controller of Better Player List Video Player.
class BetterPlayerListVideoPlayerController {
  BetterPlayerController? _betterPlayerController;

  void setVolume(double volume) {
    _betterPlayerController?.setVolume(volume);
  }


  void pause() {
    _betterPlayerController?.pause();
  }

  void play() {
    _betterPlayerController?.play();
  }

  void seekTo(Duration duration) {
    _betterPlayerController?.seekTo(duration);
  }
  void startCast(Duration duration , BuildContext context){
    _betterPlayerController?.startCast(duration, context);
  }

  // ignore: use_setters_to_change_properties
  void setBetterPlayerController(
      BetterPlayerController? betterPlayerController) {
    _betterPlayerController = betterPlayerController;
  }

  void setMixWithOthers(bool mixWithOthers) {
    _betterPlayerController?.setMixWithOthers(mixWithOthers);
  }
}