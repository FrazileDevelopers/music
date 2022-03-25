import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/constants/strings.dart';

import '../../widgets/loginclip.dart';

class Genre extends StatefulWidget {
  const Genre({Key? key}) : super(key: key);

  @override
  State<Genre> createState() => _GenreState();
}

class _GenreState extends State<Genre> {
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
    final mq = MediaQuery.of(context);
    final height = mq.size.height;
    final width = mq.size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey[900]!,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * .4,
            width: width,
            child: Stack(
              children: [
                ClipPath(
                  clipper: Loginclip(),
                  child: Container(
                    height: height * .3,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          MusicStrings.bezierImage,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ui.ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * .15,
                  left: width * .05,
                  child: Container(
                    height: width * .4,
                    width: width * .4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          MusicStrings.albumImage,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                Positioned(
                  top: height * .17,
                  left: width * .55,
                  child: Text(
                    'Classical',
                    style: GoogleFonts.lora(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  top: height * .27,
                  left: width * .55,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.pinkAccent,
                    child: Text('Play'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    MusicStrings.songImage,
                  ),
                ),
                title: Text(
                  'Disaster',
                  style: GoogleFonts.lora(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                subtitle: Text(
                  'Lily Wolf',
                  style: GoogleFonts.lora(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
              ),
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
