import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/controller/home_view_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeViewController _controller = Get.put(HomeViewController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
            ),
            Obx(() => IconButton(
                  onPressed: () {
                    if (_controller.isMicOpen) {
                      _controller.isMicOpen = !_controller.isMicOpen;
                      _controller.playMusic();
                    } else {

                      _controller.isMicOpen = !_controller.isMicOpen;
                      _controller.stopPlaying();
                    }
                  },
                  icon: _controller.isMicOpen ? const Icon(Icons.mic_off) : const Icon(Icons.mic),
                ))
          ],
        ),
      ),
    );
  }
}
