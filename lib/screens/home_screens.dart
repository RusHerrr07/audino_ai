import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/feature_tile.dart';
import '../utils/constants.dart';
import 'content_ai_screen.dart';
import 'meetings_ai_screen.dart';
import 'call_recording_ai_screen.dart';
import 'hate_speech_ai_screen.dart';

class HomeScreen extends StatelessWidget {

   HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Audino AI Features',
      ),
      body: Container(
        color: kBackgroundColor,             // hareee Krishna
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: <Widget>[
            const Text(
              'Audino AI Features',
              style: kTitleTextStyle,
            ),
            const SizedBox(height: 16.0),
            FeatureTile(
              title: 'Content AI',
              description:
              'Convert YouTube Videos, Public Audio, or Video URLs into interactive discussions',
              imageUrl: kContentAIImageUrl,
              roles: ['Video', 'Audio', 'Summary', 'YouTube', 'Chat'],
              onExplore: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContentAIScreen()),
                );
              },
            ),
            FeatureTile(
              title: 'Meetings AI',
              description:
              'Convert Meetings Videos, Audios, or Video URLs into interactive discussions',
              imageUrl: kMeetingsAIImageUrl,
              roles: ['Video', 'Audio', 'Summary', 'Meetings', 'Chat'],
              onExplore: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MeetingsAIScreen()),
                  //MeetingsAIScreen
                );
              },
            ),
            FeatureTile(
              title: 'Call Recording AI',
              description:
              'Convert Call Recording Videos, Audios, or Video URLs into interactive discussions',
              imageUrl: kCallRecordingAIImageUrl,
              roles: ['Video', 'Audio', 'Summary', 'Call', 'Chat'],
              onExplore: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CallRecordingAIScreen()),
                );
              },
            ),
            FeatureTile(
              title: 'Hate Speech AI',
              description: 'Detect hate speech in videos and audios',
              imageUrl: kHateSpeechAIImageUrl,
              roles: ['Video', 'Audio', 'Summary', 'Hate', 'Chat'],
              onExplore: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HateSpeechAIScreen()),
                );
              },
            ),

            Card(


              color: Colors.white,
              elevation: 3,
              margin: EdgeInsets.symmetric(horizontal: 8.0 , vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start

                  ,


                  children: [
                    Text("Have  Any question ?",

                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,

                      ),),

                    SizedBox(height: 10,),
                    Text("We are just a message away. Ask us anything you need to know",
                      style: TextStyle(
                        fontSize: 16,

                      ),),

                    // SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.center,
                      child: Text("or",
                        style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic
                          ,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,



                        ),
                      ),
                    ),
                    SizedBox(height: 10,),

                    Text("Reach to our Team",
                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Enter text",
                        hintText: "Enter your input",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: Colors.black, // Same color for focused and default
                            width: 2.5,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: Colors.green, // Same color as focused
                            width: 1.5,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: Colors.green.withOpacity(0.5), // Lighter color for disabled state
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),


                    SizedBox(height: 20,),
                    // This will match the height similar to the padding of 50.0
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 16.0), // Adjust vertical and horizontal padding
                          hintText: "I have a question",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.black, // Same color for focused and default
                              width: 2.5,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.green, // Same color as focused
                              width: 1.5,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.green.withOpacity(0.5), // Lighter color for disabled state
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),



                  ],
                ),
              ),


            )
          ],


        ),


      ),
    );
  }
}

// SomeOtherFeatureScreen();