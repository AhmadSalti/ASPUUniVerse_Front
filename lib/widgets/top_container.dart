import 'package:flutter/material.dart';

class top_container extends StatelessWidget {
  final String studentId;

  const top_container({
    super.key,
    required this.studentId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, right: 25.0, left: 25.0),
      child: SizedBox(
        width: double.infinity,
        child: Container(
            height: 61,
            decoration: BoxDecoration(
              color: Color(0xFFC0B6AC),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset.zero,
                  blurRadius: 6.0,
                  blurStyle: BlurStyle.normal,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage('icons/icon.png'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Text(
                      "020041694",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 'ar',
                          child: Text('العربية', style: TextStyle()),
                        ),
                      ],
                      onSelected: (value) {
                        // Handle language change here
                      },
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              ],
            )),
      ),
    );
  }
}
