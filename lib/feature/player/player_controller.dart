import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class PlayerController extends GetxController {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  bool isLoop = false;
  String url = "https://tembang.fuwuna.tech/api/files/aqly0n339u404q8/43334var2qne4xb/y2meta_eyb_zu_irh_mi_vec6zKWbPX.irik320kbpsmusic.mp3";
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void onInit() {
    super.onInit();

    audioPlayer.onPlayerStateChanged.listen((state){
      isPlaying = state == PlayerState.playing;
      update();
    });

    audioPlayer.onDurationChanged.listen((newDuration){
      duration = newDuration;
      update();
    });

    audioPlayer.onPositionChanged.listen((newPosition){
      position = newPosition;
      update();
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
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
