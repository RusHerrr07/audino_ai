import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class UploadSection extends StatefulWidget {
  final String title;
  final String description;

  const UploadSection({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  _UploadSectionState createState() => _UploadSectionState();
}

class _UploadSectionState extends State<UploadSection> {
  bool _showUploadForm = false; // To control the visibility of the upload form
  String? _selectedUploadType = 'Url'; // Default value for dropdown
  String _languageType = 'English'; // Default language type

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            widget.description,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          SizedBox(height: 20),

          // Upload area
          if (!_showUploadForm)
            DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(12),
              dashPattern: [6, 3],
              color: Colors.grey,
              strokeWidth: 2,
              child: InkWell(
                onTap: () {
                  setState(() {
                    _showUploadForm = true; // Show the upload form when clicked
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.upload, size: 40, color: Colors.grey),
                      SizedBox(height: 10),
                      Text(
                        'Upload Video/Audio',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          // Upload form options that appear after clicking the upload area
          if (_showUploadForm) ...[
            DropdownButtonFormField<String>(
              value: _selectedUploadType,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              items: ['Url', 'File'].map((String type) {
                return DropdownMenuItem<String>(
                  value: type,
                  child: Text(type),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedUploadType = newValue;
                });
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: _selectedUploadType == 'Url'
                    ? 'URL of a video or audio'
                    : 'File path of video or audio',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _languageType,
              decoration: InputDecoration(
                labelText: 'Language type',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              items: ['English', 'Hindi', 'Arabic'].map((String language) {
                return DropdownMenuItem<String>(
                  value: language,
                  child: Text(language),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _languageType = newValue!;
                });
              },
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle the final upload logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
