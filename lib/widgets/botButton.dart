import 'package:flutter/material.dart';

class botButton extends StatefulWidget {
  const botButton({super.key});

  @override
  State<botButton> createState() => _botButtonState();
}

class _botButtonState extends State<botButton> {
  bool _isChatOpen = false;

  void _toggleChat() {
    setState(() {
      _isChatOpen = !_isChatOpen;
    });
    // chat interface logic
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 153,
      height: 153,
      child: FloatingActionButton(
        onPressed: () {
          // Handle button tap
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: CircleBorder(),
        child: Image.asset(
          'icons/istockphoto-1010001882-612x612-removebg-preview (1).png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
