import 'package:audino_ai/screens/content_ai_screen.dart';
import 'package:audino_ai/screens/hate_speech_ai_screen.dart';
import 'package:audino_ai/screens/meetings_ai_screen.dart';
import 'package:audino_ai/screens/call_recording_ai_screen.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  void _onButtonPressed(BuildContext context, String value) {
    // Navigate to the respective screen based on the button pressed
    switch (value) {
      case 'Hate Speech AI':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HateSpeechAIScreen()),
        );
        break;
      case 'Meetings AI':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MeetingsAIScreen()),
        );
        break;
      case 'Content AI':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContentAIScreen()),
        );
        break;
      case 'Call Recording AI':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CallRecordingAIScreen()),
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kCardBackgroundColor,
      elevation: 0,
      title: Image.network(
        kLogoUrl,
        width: 120,
        height: 120,
        fit: BoxFit.contain,
      ),
      actions: <Widget>[
        PopupMenuButton<String>(
          color: Colors.white, // Set the background color of the entire popup menu to white
          onSelected: (String value) {},
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem<String>(
                enabled: false, // Disable the default behavior
                child: Container(
                  width: MediaQuery.of(context).size.width, // Set width to screen width
                  color: Colors.white, // Ensure the container background is also white
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextButton(
                        onPressed: () => _onButtonPressed(context, 'Features'),
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.greenAccent),
                          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        child: Text('Features', style: TextStyle(fontSize: 16)),
                      ),
                      TextButton(
                        onPressed: () => _onButtonPressed(context, 'Content AI'),
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
                          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        child: Text('Content AI', style: TextStyle(fontSize: 16, color: Colors.black)),
                      ),
                      TextButton(
                        onPressed: () => _onButtonPressed(context, 'Meetings AI'),
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
                          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        child: Text('Meetings AI', style: TextStyle(fontSize: 16, color: Colors.black)),
                      ),
                      TextButton(
                        onPressed: () => _onButtonPressed(context, 'Call Recording AI'),
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
                          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        child: Text('Call Recording AI', style: TextStyle(fontSize: 16, color: Colors.black)),
                      ),
                      TextButton(
                        onPressed: () => _onButtonPressed(context, 'Hate Speech AI'),
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
                          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        child: Text('Hate Speech AI', style: TextStyle(fontSize: 16, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          icon: const Icon(Icons.menu, color: kAppBarIconColor),
          iconSize: 36,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}
