import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: const Text("My Portfolio"),
    centerTitle: true,
  );
}

Widget _buildBody() {
  return Padding(
    padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/Margub Morshed.jpg"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Margub Morshed",
                  style: _fontProperties(
                      Colors.black87, 26, FontWeight.bold, FontStyle.normal),
                ),
                const Divider(
                  height: 5,
                ),
                Text(
                  "App Developer (Flutter)",
                  style: _fontProperties(
                      Colors.black87, 18, FontWeight.normal, FontStyle.normal),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

TextStyle _fontProperties(
    Color textColor, double i, FontWeight? depth, FontStyle? style) {
  return TextStyle(
      color: textColor, fontSize: i, fontWeight: depth, fontStyle: style);
}
