import 'package:flutter/material.dart';
import 'package:shop_online_project/screens/home/components/body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:const Text('GAMING ONLINE STORE ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
        leading:
        IconButton(
          icon: const  Icon(Icons.videogame_asset, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Body1(),
    );
  }
}