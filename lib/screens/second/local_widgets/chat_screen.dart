import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE3E3E3),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(87),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFC0B6AC),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 2),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 2.0, top: 16.0, right: 12.0, bottom: 16.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 24,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                'icons/istockphoto-1010001882-612x612-removebg-preview (1).png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'ASPU AI Assistant',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                'Online',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      PopupMenuButton(
                        icon: const Icon(Icons.more_horiz, color: Colors.black),
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 'rate',
                            child: Text(
                              'تقييم المجيب',
                              style: TextStyle(fontSize: 14),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          const PopupMenuItem(
                            value: 'forward',
                            child: Text(
                              'توجيه المحادثة الى رئيس الدائرة',
                              style: TextStyle(fontSize: 14),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ],
                        onSelected: (value) {
                          switch (value) {
                            case 'rate':
                              // Handle rating
                              break;
                            case 'forward':
                              // Handle forwarding
                              break;
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )),
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 14,
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextField(
                            controller: _messageController,
                            textDirection: TextDirection.rtl,
                            maxLength: 180,
                            maxLines: null,
                            minLines: 1,
                            decoration: const InputDecoration(
                              hintText: "اكتب رسالتك...",
                              hintTextDirection: TextDirection.rtl,
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              counterText: "",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF26A5D0),
                          radius: 20,
                          child: const Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
