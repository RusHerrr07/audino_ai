import 'package:flutter/material.dart';
import 'package:audino_ai/widgets/upload_section.dart';
import 'package:audino_ai/widgets/video_item.dart';
import 'package:audino_ai/widgets/custom_app_bar.dart';

import '../utils/constants.dart';

class ContentAIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Audino Content AI',
      ),
      body: Container(
        color: kBackgroundColor,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            UploadSection(
              title: 'Audino Content AI',
              description: 'Convert YouTube Videos, Public Audio, or Video URLs into interactive discussions. Simply input the URL to generate chapters, summaries, and engage in dynamic chat discussions.',
            ),
            SizedBox(height: 20),
            VideoItem(
              title: 'Alex Gravely from GitHub and...',
              subtitle: 'Uploaded 6 months ago by Prahlad Yadav',
              imageUrl: 'https://img.youtube.com/vi/dQw4w9WgXcQ/0.jpg',
            ),
            VideoItem(
              title: 'AI: The convergence of Bran...',
              subtitle: 'Uploaded 3 months ago by Prahlad Yadav',
              imageUrl: 'https://img.youtube.com/vi/dQw4w9WgXcQ/0.jpg',
            ),
            // Add more video items here if needed...
          ],
        ),
      ),
    );
  }
}
