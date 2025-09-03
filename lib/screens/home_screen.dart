// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mediline/screens/chat_screen.dart';
import 'package:mediline/models/gemini_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mediline')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Firebase Connected!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Create GeminiService with API key from .env
                final geminiService = GeminiService(
                  apiKey: dotenv.env['GEMINI_API_KEY']!,
                );

                // Navigate to ChatScreen with service
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ChatScreen(geminiService: geminiService),
                  ),
                );
              },
              child: const Text('Go to Chat'),
            ),
          ],
        ),
      ),
    );
  }
}
