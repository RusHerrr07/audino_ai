import 'package:flutter/material.dart';
import 'package:audino_ai/widgets/upload_section.dart';
import 'package:audino_ai/widgets/video_item.dart';
import 'package:audino_ai/widgets/custom_app_bar.dart';

import '../utils/constants.dart';

 // Define your background color here

class HateSpeechAIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(

        title: 'Audino Hate Speech AI',
      ),
      body: Container(
        color: kBackgroundColor, // Set background color here
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            UploadSection(
              title: 'Audino Hate Speech AI',
              description: 'Detect hate speech in audio or video files using our AI models.',
            ),
            SizedBox(height: 20),
            VideoItem(
              title: 'Meet a Hate Speech Specialist',
              subtitle: 'Uploaded 4 months ago by Prahlad Yadav',
              imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/e/ee/Dhruv_Rathee.jpg',
            ),
            VideoItem(
              title: 'Sri Lanka \'bombing mastermind \' named  Moulvi Zahran Hashmi',
              subtitle: 'Uploaded 6 months ago by John Doe',
              imageUrl: 'https://www.telegraph.co.uk/content/dam/news/2019/04/23/TELEMMGLPICT000194949560_trans_NvBQzQNjv4BqAdw0VrjqLWSqJHfZ45Ae0Zhw_iIPZqUNP2EjAIFcGyw.jpeg',
            ),
            // Add more video items here if needed...
          ],
        ),
      ),
    );
  }
}
