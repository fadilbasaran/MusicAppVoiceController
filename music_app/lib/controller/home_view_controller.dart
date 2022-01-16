import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  final AudioPlayer _audioPlayer = AudioPlayer();
  late final AudioCache audioPlayer = AudioCache(prefix: 'assets/audio/', fixedPlayer: _audioPlayer);

  void playMusic() {
    audioPlayer.play('yaranamadim.mp3', mode: PlayerMode.MEDIA_PLAYER);
  }

  void stopPlaying() {
    _audioPlayer.stop();
  }

  void pausePlaying(){
    _audioPlayer.pause();
  }


  final RxBool _isMicOpen = false.obs;
  bool get isMicOpen => _isMicOpen.value;
  set isMicOpen(bool value) => _isMicOpen.value = value;
}
