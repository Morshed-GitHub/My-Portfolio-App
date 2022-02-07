import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: const Text("My Portfolio"),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 1.0,
  );
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/bg.jpg",
              ),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.only(top: 65.0, left: 15.0, right: 15),
        child: Column(
          children: [
            const SizedBox(height: 20),
            _firstPartIntro(),
            const SizedBox(
              height: 30,
            ),
            _midPartInfo(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Hi 👋, I'm Morshed. A passionate App Developer. I'm a CSE student at a private university in Bangladesh. I’m interested in learning new technologies, I’m currently learning Flutter Mobile App Development. I have completed my training on Flutter from the Mobile Application Development program by ICT division Bangladesh.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  height: 2),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 70,
            ),
            Center(
                child: Text(
              "Created By Morshed",
              style: _fontProperties(
                  Colors.white, 19, FontWeight.normal, FontStyle.normal),
            )),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    ),
  );
}

Widget _firstPartIntro() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage("assets/images/Margub Morshed.jpg"),
      ),
      const SizedBox(
        width: 5,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Margub Morshed",
            style: _fontProperties(
                Colors.white, 22, FontWeight.bold, FontStyle.normal),
          ),
          const Divider(
            height: 5,
          ),
          Text(
            "App Developer (Flutter)",
            style: _fontProperties(
                Colors.white, 18, FontWeight.normal, FontStyle.normal),
          ),
        ],
      ),
    ],
  );
}

Widget _midPartInfo() {
  const String number = "01521434245";
  const String email = "morshedraian12345@gmail.com";
  return Column(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // first item institute
          Row(
            children: [
              const Icon(Icons.school, size: 25, color: Colors.white),
              const SizedBox(width: 20),
              Text(
                "B.Sc. in CSE from WUB",
                style: _fontProperties(
                    Colors.white, 19, FontWeight.normal, FontStyle.normal),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),

          // second item project
          InkWell(
            onTap: () async {
              // print("Tapped on link");
              const url = "https://github.com/Morshed-GitHub?tab=repositories";
              if (await canLaunch(url)) {
                // We use urlLaucher here
                await launch(
                  url,
                  forceSafariVC: true, // ios
                  forceWebView: true, // android
                  enableJavaScript: true, // android
                );
              } else {
                throw Exception("Cannot Lauch Url");
              }
            },
            child: Row(
              children: [
                const Icon(Icons.post_add_outlined,
                    size: 25, color: Colors.white),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Morshed-GitHub",
                  style: _fontProperties(
                      Colors.white, 19, FontWeight.normal, FontStyle.normal),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          // third item location
          Row(
            children: [
              const Icon(Icons.location_on, size: 25, color: Colors.white),
              const SizedBox(
                width: 20,
              ),
              Text(
                "Jigatala, Dhaka, BD",
                style: _fontProperties(
                    Colors.white, 19, FontWeight.normal, FontStyle.normal),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),

          // fourth item mail
          InkWell(
            onTap: () async {
              launch("mailto: $email");
            },
            child: Row(
              children: [
                const Icon(Icons.mail, size: 25, color: Colors.white),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  email,
                  style: _fontProperties(
                      Colors.white, 19, FontWeight.normal, FontStyle.normal),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          // fifth item call
          InkWell(
            onTap: () async {
              // call indirect
              launch("tel:$number");
            },
            child: Row(
              children: [
                const Icon(Icons.call, size: 25, color: Colors.white),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "+880-1521434245",
                  style: _fontProperties(
                      Colors.white, 19, FontWeight.normal, FontStyle.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

TextStyle _fontProperties(
    Color textColor, double i, FontWeight? depth, FontStyle? style) {
  return TextStyle(
      color: textColor, fontSize: i, fontWeight: depth, fontStyle: style);
}
