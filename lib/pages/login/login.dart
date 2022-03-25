import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/constants/strings.dart';

import '../../routes/router.gr.dart';
import '../../widgets/wavy.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final height = mq.size.height;
    final width = mq.size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 200.0,
            child: WavyHeader(),
          ),
          Expanded(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      MusicStrings.loginbtn.toUpperCase(),
                      style: GoogleFonts.lora(
                        color: Colors.white,
                        fontSize: width * .1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: GoogleFonts.lora(
                          color: Colors.blueGrey[800],
                        ),
                        hintText: "Email Address",
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: GoogleFonts.lora(
                          color: Colors.blueGrey[800],
                        ),
                        hintText: "Password",
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MaterialButton(
                      onPressed: () => context.router.replace(
                        BottomNavHomeRouter(),
                      ),
                      minWidth: width * .95,
                      height: 50.0,
                      child: Text(
                        MusicStrings.loginbtn,
                        style: GoogleFonts.lora(
                          color: Colors.blueGrey[800],
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: width * .95,
                      height: 50.0,
                      child: Text(
                        MusicStrings.loginGooglebtn,
                        style: GoogleFonts.lora(
                          color: Colors.blueGrey[800],
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
