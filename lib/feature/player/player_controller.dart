import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tembang_bali/model/lyric.dart';
import 'package:tembang_bali/model/sekar_rare.dart';

class PlayerController extends GetxController {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  bool isLoop = false;
  String url = "https://tembang.fuwuna.tech/api/files/aqly0n339u404q8/43334var2qne4xb/y2meta_eyb_zu_irh_mi_vec6zKWbPX.irik320kbpsmusic.mp3";
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  
  // ignore: prefer_typing_uninitialized_variables
  SekarRare? songData;

  List<Lyric> lyrics = [];
  final ItemScrollController itemScrollController = ItemScrollController();
  final ScrollOffsetController scrollOffsetController = ScrollOffsetController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener = ScrollOffsetListener.create();
  StreamSubscription? streamSubscription;

  @override
  void onInit() {
    songData = Get.arguments;
    super.onInit();

    // assign to lyrics
    lyrics = songData!.lyrics!;

    audioPlayer.onPlayerStateChanged.listen((state){
      isPlaying = state == PlayerState.playing;
      update();
    });

    audioPlayer.onDurationChanged.listen((newDuration){
      duration = newDuration;
      update();
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      position = newPosition;
      Duration currentPosition = Duration(milliseconds: newPosition.inMilliseconds);

      // Iterate through lyrics to find the appropriate index to scroll to
      int scrollToIndex = 0;
      for (int index = 0; index < lyrics.length; index++) {
        Duration lyricDuration = lyrics[index].timeStamp;

        // Check if currentPosition is within the range of lyricDuration
        if (currentPosition >= lyricDuration) {
          scrollToIndex = index > 1 ? index - 1 : 0; // Adjust index for scrolling
        } else {
          continue; // Stop iterating once we find the correct index
        }
      }

      // Scroll to the calculated index
      itemScrollController.scrollTo(
        index: scrollToIndex,
        duration: const Duration(milliseconds: 600),
      );
      update();
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    streamSubscription?.cancel();
    super.dispose();
  }

  void setLoop() async {
    if(isLoop){
      audioPlayer.setReleaseMode(ReleaseMode.release);
    } else{
      audioPlayer.setReleaseMode(ReleaseMode.loop);
    }
    update();
  }

  String formatDuration(Duration duration) {
    int minutes = duration.inMinutes;
    int seconds = duration.inSeconds % 60;

    // Ensuring the seconds are always two digits
    String twoDigits(int n) => n.toString().padLeft(2, '0');

    return "${twoDigits(minutes)}:${twoDigits(seconds)}";
  }
}
