import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
class HomeViewController extends GetxController {
  late final AudioCache audioPlayer;


  @override
  void initState() {
  audioPlayer = AudioCache();
    
  }

  void playMusic() {
    audioPlayer.play('yaranamadim.mp3');
  }

  final RxBool _isMicOpen = false.obs;
  bool get isMicOpen => _isMicOpen.value;
  set isMicOpen(bool value) => _isMicOpen.value = value;
}
