import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Basic Flutter App')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _launchUrl(),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
          child: Text(
            'Visit GitHub',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    Uri uri = Uri.parse('https://github.com/olamijulo/basic_flutter_app');
    if (await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }
}
