import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/controller/home_view_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final HomeViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = Get.put(HomeViewController());
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
                  onPressed: () => null,
                  icon: Icon(_controller.isMicOpen ? Icons.mic_off : Icons.mic),
                ))
          ],
        ),
      ),
    );
  }
}
