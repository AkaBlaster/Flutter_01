import 'package:flutter/material.dart';
import 'package:myapp/audio_file.dart';
import 'app_colors.dart' as AppColors;
import 'package:google_fonts/google_fonts.dart';

import 'package:audioplayers/audioplayers.dart';

class DetailedAudioPage extends StatefulWidget {
  final booksData;
  final int index;
  const DetailedAudioPage({Key key, this.booksData, this.index})
      : super(key: key);
  @override
  _DetailedAudioPageState createState() => _DetailedAudioPageState();
}

class _DetailedAudioPageState extends State<DetailedAudioPage> {
  AudioPlayer advancedPlayer;
  @override
  //Intializing State Management for Audiplayer
  void initState() {
    super.initState();
    advancedPlayer = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor1,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenHeight / 3,
            child: Container(
              color: AppColors.menu3Color,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: () {},
                ),
              ],
              backgroundColor: AppColors.menu3Color,
              elevation: 0.0,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: screenHeight * 0.2,
            height: screenHeight * 0.36,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Text(
                      this.widget.booksData[this.widget.index]["title"],
                      style: GoogleFonts.comfortaa(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child:
                        Text(this.widget.booksData[this.widget.index]["author"],
                            style: GoogleFonts.comfortaa(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                            )),
                  ),
                  AudioFile(advancedPlayer: advancedPlayer),
                ],
              ),
            ),
          ),
          Positioned(
              top: screenHeight * 0.12,
              height: (screenHeight * 0.3) / 2,
              left: (screenWidth - 130) / 2,
              right: (screenWidth - 130) / 2,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.silverBackground,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.silverBackground,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        image: DecorationImage(
                          image: AssetImage(this
                              .widget
                              .booksData[this.widget.index]["imageLink"]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}
