import 'package:flutter/material.dart';

class StDrawer extends StatefulWidget {
  const StDrawer({super.key});

  @override
  State<StDrawer> createState() => _StDrawerState();
}

class _StDrawerState extends State<StDrawer> {
  final Map<String, bool> _expansionStates = {
    'files': false,
    'calendar': false,
    'grades': false,
    'registration': false,
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.55,
      child: Drawer(
        backgroundColor: Color(0xFFF6F6F8),
        child: SafeArea(
          child: ListView(
            children: [
              Container(
                height: 117,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'icons/Planet_Arcadia-removebg-preview (2).png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Add your menu items here
              ExpansionTile(
                  trailing: Icon(Icons.person_outline),
                  leading: RotationTransition(
                    turns: _expansionStates['files'] ?? false
                        ? AlwaysStoppedAnimation(-0.25)
                        : AlwaysStoppedAnimation(0),
                    child: Icon(Icons.arrow_back_ios, size: 16),
                  ),
                  title: Directionality(
                    textDirection: TextDirection.rtl, // Right to left
                    child: Text(
                      'ملفاتي',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  onExpansionChanged: (expanded) {
                    setState(() {
                      _expansionStates['files'] = expanded;
                    });
                  },
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 16, right: 32),
                      trailing: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 2,
                          ),
                        ),
                      ),
                      title: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'الشخصي',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      onTap: () {
                        // Handle tap
                      },
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 16, right: 32),
                      trailing: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 2,
                          ),
                        ),
                      ),
                      title: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'الأكاديمي',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      onTap: () {
                        // Handle tap
                      },
                    ),
                  ]),
              ExpansionTile(
                  trailing: Icon(Icons.calendar_month),
                  leading: RotationTransition(
                    turns: _expansionStates['calendar'] ?? false
                        ? AlwaysStoppedAnimation(-0.25)
                        : AlwaysStoppedAnimation(0),
                    child: Icon(Icons.arrow_back_ios, size: 16),
                  ),
                  title: Directionality(
                    textDirection: TextDirection.rtl, // Right to left
                    child: Text(
                      'التقويم',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  onExpansionChanged: (expanded) {
                    setState(() {
                      _expansionStates['calendar'] = expanded;
                    });
                  },
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 16, right: 32),
                      trailing: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 2,
                          ),
                        ),
                      ),
                      title: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'جدول المحاضرات',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      onTap: () {
                        // Handle tap
                      },
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 16, right: 32),
                      trailing: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 2,
                          ),
                        ),
                      ),
                      title: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'جدول الامتحانات',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      onTap: () {
                        // Handle tap
                      },
                    ),
                  ]),
              ExpansionTile(
                  trailing: Icon(Icons.my_library_books_outlined),
                  leading: RotationTransition(
                    turns: _expansionStates['grades'] ?? false
                        ? AlwaysStoppedAnimation(-0.25)
                        : AlwaysStoppedAnimation(0),
                    child: Icon(Icons.arrow_back_ios, size: 16),
                  ),
                  title: Directionality(
                    textDirection: TextDirection.rtl, // Right to left
                    child: Text(
                      'الدرجات',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  onExpansionChanged: (expanded) {
                    setState(() {
                      _expansionStates['grades'] = expanded;
                    });
                  },
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 16, right: 32),
                      trailing: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 2,
                          ),
                        ),
                      ),
                      title: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'علامات الفصل الحالي',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      onTap: () {
                        // Handle tap
                      },
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 16, right: 32),
                      trailing: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 2,
                          ),
                        ),
                      ),
                      title: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'العلامات حسب الفصل',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      onTap: () {
                        // Handle tap
                      },
                    ),
                  ]),
              ExpansionTile(
                  trailing: Icon(Icons.menu_book),
                  leading: RotationTransition(
                    turns: _expansionStates['registration'] ?? false
                        ? AlwaysStoppedAnimation(-0.25)
                        : AlwaysStoppedAnimation(0),
                    child: Icon(Icons.arrow_back_ios, size: 16),
                  ),
                  title: Directionality(
                    textDirection: TextDirection.rtl, // Right to left
                    child: Text(
                      'التسجيل',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  onExpansionChanged: (expanded) {
                    setState(() {
                      _expansionStates['registration'] = expanded;
                    });
                  },
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 16, right: 32),
                      trailing: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 2,
                          ),
                        ),
                      ),
                      title: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'قواعد التسجيل',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      onTap: () {
                        // Handle tap
                      },
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 16, right: 32),
                      trailing: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 2,
                          ),
                        ),
                      ),
                      title: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'تسجيل المقررات',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      onTap: () {
                        // Handle tap
                      },
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 16, right: 32),
                      trailing: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 2,
                          ),
                        ),
                      ),
                      title: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'إضافة وسحب المقررات',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      onTap: () {
                        // Handle tap
                      },
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 16, right: 32),
                      trailing: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 2,
                          ),
                        ),
                      ),
                      title: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'تغيير الفئات',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      onTap: () {
                        // Handle tap
                      },
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 16, right: 32),
                      trailing: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 2,
                          ),
                        ),
                      ),
                      title: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'الانسحاب القهري',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      onTap: () {
                        // Handle tap
                      },
                    ),
                  ]),
              ListTile(
                trailing: Icon(Icons.notifications_active_outlined),
                title: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'الإعلانات',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                onTap: () {
                  // Handle tap
                },
              ),
              ListTile(
                trailing: Icon(Icons.settings),
                title: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'الإعدادات',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                onTap: () {
                  // Handle tap
                },
              ),
              ListTile(
                trailing: Icon(Icons.logout),
                title: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'تسجيل الخروج',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                onTap: () {
                  // Handle tap
                },
              ),
              // ... more list tiles
            ],
          ),
        ),
      ),
    );
  }
}
