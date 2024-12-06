import 'package:clippath/clippers/demo_clipper.dart';
import 'package:clippath/clippers/wave_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              // clipper: WaveClipperTwo(flip: false, reverse: false),
              clipper: OvalTopBorderClipper(),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 200,
                color: Colors.purple,
              ),
            ),
          ),
          ClipPath(
            clipper: WaveClipperTwo(flip: false, reverse: false),
            // clipper: MovieTicketClipper(),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 500,
              color: Colors.blue,
            ),
          ),
          ListView(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 10,
            ),
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: MediaQuery.sizeOf(context).width * 0.5,
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  isDense: true,
                  labelText: "Email",
                  contentPadding: const EdgeInsets.all(10),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.email,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  isDense: true,
                  labelText: "Password",
                  contentPadding: const EdgeInsets.all(10),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.password,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () {},
                    child: const Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
