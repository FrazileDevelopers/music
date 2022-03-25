import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMusic extends StatefulWidget {
  const MyMusic({Key? key}) : super(key: key);

  @override
  State<MyMusic> createState() => _MyMusicState();
}

class _MyMusicState extends State<MyMusic> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final height = mq.size.height;
    final width = mq.size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey[900]!,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Center(
                  child: Text(
                    'My Music',
                    style: GoogleFonts.lora(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.pink[300],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .03,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    'Local Music',
                    style: GoogleFonts.lora(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(
                    Icons.music_note,
                    color: Colors.white,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    'Recently Played',
                    style: GoogleFonts.lora(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    'Favorites',
                    style: GoogleFonts.lora(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'My Playlists',
                        style: GoogleFonts.lora(
                          color: Colors.white,
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Text('Create Playlist'),
                        color: Colors.pink,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    'Local Playlists (0)',
                    style: GoogleFonts.lora(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(
                    Icons.arrow_drop_up_sharp,
                    color: Colors.white,
                    size: 45.0,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    'Online Playlists (0)',
                    style: GoogleFonts.lora(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(
                    Icons.arrow_drop_up_sharp,
                    color: Colors.white,
                    size: 45.0,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    'Collected Playlists (0)',
                    style: GoogleFonts.lora(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(
                    Icons.arrow_drop_up_sharp,
                    color: Colors.white,
                    size: 45.0,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
