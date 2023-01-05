import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  bool isSwitch = false;
  bool? ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Learn Flutter'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint('Actions');
              },
              icon: const Icon(
                Icons.info_outline,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Image.asset('assets/images.jpg'),
          const SizedBox(
            height: 10,
            width: 50,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.lightGreen,
              child: const Center(
                child: const Text('this is text ',
                    style: TextStyle(color: Colors.green)),
              )),
        ])));
  }
}
