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
        _firstPartInfo(),
        const SizedBox(
          height: 30,
        ),
        _midPartProperties(),
        const SizedBox(
          height: 30,
        ),
        const Center(child: Text("About Me")),
        Center(
            child: Text(
          "Created By Morshed",
          style: _fontProperties(
              Colors.black87, 18, FontWeight.normal, FontStyle.normal),
        ))
      ],
    ),
  );
}

Widget _firstPartInfo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const CircleAvatar(
        radius: 70,
        backgroundImage: AssetImage("assets/images/Margub Morshed.jpg"),
      ),
      const SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Margub Morshed",
            style: _fontProperties(
                Colors.black87, 22, FontWeight.bold, FontStyle.normal),
          ),
          const Divider(
            height: 5,
          ),
          Text(
            "App Developer (Flutter)",
            style: _fontProperties(
                Colors.black87, 18, FontWeight.normal, FontStyle.normal),
          ),
        ],
      ),
    ],
  );
}

Widget _midPartProperties() {
  return Container(
      margin: const EdgeInsets.only(left: 15),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // first item institute
              Row(
                children: [
                  const Icon(
                    Icons.school,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "B.Sc. in CSE from WUB",
                    style: _fontProperties(
                        Colors.black, 19, FontWeight.normal, FontStyle.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              // second item project
              Row(
                children: [
                  const Icon(
                    Icons.branding_watermark_sharp,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "News App on GitHub",
                    style: _fontProperties(
                        Colors.black, 19, FontWeight.normal, FontStyle.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              // third item location
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Jigatala, Dhaka, BD",
                    style: _fontProperties(
                        Colors.black, 19, FontWeight.normal, FontStyle.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              // fourth item mail
              Row(
                children: [
                  const Icon(
                    Icons.mail,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "morshedraian12345@gmail.com",
                    style: _fontProperties(Colors.black, 19.5,
                        FontWeight.normal, FontStyle.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              // fifth item call
              Row(
                children: [
                  const Icon(
                    Icons.call,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "01521434245",
                    style: _fontProperties(
                        Colors.black, 19, FontWeight.normal, FontStyle.normal),
                  ),
                ],
              ),
            ],
          ),
        ],
      ));
}

TextStyle _fontProperties(
    Color textColor, double i, FontWeight? depth, FontStyle? style) {
  return TextStyle(
      color: textColor, fontSize: i, fontWeight: depth, fontStyle: style);
}
