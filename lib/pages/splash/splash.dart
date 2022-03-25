import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/blocs/auth/auth_bloc.dart';
import 'package:music/constants/strings.dart';

import '../../routes/router.gr.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  navigateToHome() async {
    Timer(Duration(seconds: 5), () {
      // 5s over, navigate to a new page
      context.router.replaceAll(
        [
          LoginRouter(),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final height = mq.size.height;
    final width = mq.size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            FaIcon(
              FontAwesomeIcons.music,
              color: Colors.white,
              size: width * .35,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                MusicStrings.tag1,
                style: GoogleFonts.lora(
                  color: Colors.white,
                  fontSize: width * .07,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                MusicStrings.tag2,
                style: GoogleFonts.lora(
                  color: Colors.white,
                  fontSize: width * .05,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
