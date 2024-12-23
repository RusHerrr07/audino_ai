import 'package:flutter/material.dart';

class AudioItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String taskInfo;
  final String duration;
  final String imageUrl;

  const AudioItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.taskInfo,
    required this.duration,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
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
        children: [
          Image.network(imageUrl, fit: BoxFit.cover, height: 150, width: double.infinity),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        taskInfo,
                        style: TextStyle(color: Colors.green[700]),
                      ),
                    ),
                    Spacer(),
                    Text(
                      title,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Row(
                    children: [
                      Icon(Icons.play_arrow, color: Colors.black),
                      Expanded(
                        child: Slider(
                          value: 0,
                          onChanged: (value) {},
                          activeColor: Colors.black,
                          inactiveColor: Colors.black26,
                        ),
                      ),
                      Text(
                        duration,
                        style: TextStyle(color: Colors.black54),
                      ),
                      Icon(Icons.volume_up, color: Colors.black),
                      Icon(Icons.more_vert, color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
