import 'package:audino_ai/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:audino_ai/widgets/upload_section.dart';
import 'package:audino_ai/widgets/video_item.dart';
import 'package:audino_ai/widgets/custom_app_bar.dart';

class MeetingsAIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Audino Meetings AI',

      ),
      body: Container(
        color: kBackgroundColor,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            UploadSection(
              title: 'Audino Meetings AI',
              description: 'Convert Meetings Audio, or Video URLs into interactive discussions. Simply input the URL to generate summaries, and engage in dynamic chat discussions.',
            ),
            SizedBox(height: 20),
            VideoItem(
              title: '[REC] Key Meeting - Engineering Team',
              subtitle: 'Uploaded 5 months ago by Rohan Kumar',
              imageUrl: 'https://img.youtube.com/vi/dQw4w9WgXcQ/0.jpg',
            ),
            VideoItem(
              title: 'DEx Retro - Jan 11, 2024',
              subtitle: 'Uploaded 3 months ago by John Doe',
              imageUrl: 'https://img.youtube.com/vi/dQw4w9WgXcQ/0.jpg',
            ),
            // Add more video items here if needed...
          ],
        ),
      ),
    );
  }
}
