import 'package:flutter/material.dart';
import 'package:audino_ai/widgets/upload_section.dart';
import 'package:audino_ai/widgets/audio_item.dart';
import 'package:audino_ai/widgets/custom_app_bar.dart';

import '../utils/constants.dart';

  class CallRecordingAIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Audino Call Recording AI',

      ),
      body: Container(
        color: kBackgroundColor,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: const [
            UploadSection(
              title: 'Audino Call Recording AI',
              description: 'Convert Call Recording Audio, or Video URLs into interactive discussions. Simply input the URL to generate summaries, and engage in dynamic chat discussions.',
            ),
            SizedBox(height: 20),
            AudioItem(
              title: 'Assistance Call',
              subtitle: 'Uploaded 5 months ago by Prahlad Yadav',
              taskInfo: '1 task completed',
              duration: '0:00 / 2:52',
              imageUrl: 'https://cdn.prod.website-files.com/60740020d222cb8d835a05fc/61d783cfe174373b566e492c_6193483c31fcfc2ff9a75af4_seo%25209%25206.png',
            ),
            AudioItem(
              title: 'Consultation Call',
              subtitle: 'Uploaded 6 months ago by Sanjay Yadav',
              taskInfo: '2 tasks completed',
              duration: '0:00 / 9:26',
              imageUrl: 'https://cdn.prod.website-files.com/60740020d222cb8d835a05fc/61d783cfe174373b566e492c_6193483c31fcfc2ff9a75af4_seo%25209%25206.png',
            ),
            // Add more audio items here if needed...
          ],
        ),
      ),
    );
  }
}
