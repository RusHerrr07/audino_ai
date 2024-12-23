import 'package:flutter/material.dart';
import '../utils/constants.dart';

class FeatureTile extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final List<String> roles;
  final VoidCallback onExplore;

  const FeatureTile({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.roles,
    required this.onExplore,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kCardBackgroundColor,
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Image.network(imageUrl, width: 120, height: 120),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: kFeatureTitleTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: kFeatureDescriptionTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 15.0,
              alignment: WrapAlignment.center,
              children: roles
                  .map((role) => Chip(
                label: Text(role),
                backgroundColor: kChipBackgroundColor,
                labelStyle: kChipLabelTextStyle,
              ))
                  .toList(),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onExplore,
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              
              child: const Text(
                'Explore',
                style: kButtonTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
