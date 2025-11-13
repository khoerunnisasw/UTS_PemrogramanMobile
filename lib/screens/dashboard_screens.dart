import 'package:flutter/material.dart';
import 'biodata_screens.dart';
import 'contact_screens.dart';
import 'calculator_screens.dart';
import 'weather_screens.dart';
import 'news_screens.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DashboardHome(),
    BiodataScreen(),
    ContactScreen(),
    CalculatorScreen(),
    WeatherScreen(),
    NewsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 6),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: SizedBox(
            height: 70,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color(0xFF0B1956),
              selectedItemColor: const Color(0xFFD2E8FF),
              unselectedItemColor: Colors.white.withOpacity(0.6),
              showSelectedLabels: true,
              showUnselectedLabels: false,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    _selectedIndex == 0
                        ? Icons.dashboard
                        : Icons.dashboard_outlined,
                  ),
                  label: 'Dashboard',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    _selectedIndex == 1
                        ? Icons.person
                        : Icons.person_outline,
                  ),
                  label: 'Biodata',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    _selectedIndex == 2
                        ? Icons.contacts
                        : Icons.contacts_outlined,
                  ),
                  label: 'Contact',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    _selectedIndex == 3
                        ? Icons.calculate
                        : Icons.calculate_outlined,
                  ),
                  label: 'Calculator',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    _selectedIndex == 4
                        ? Icons.wb_sunny
                        : Icons.wb_sunny_outlined,
                  ),
                  label: 'Weather',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    _selectedIndex == 5
                        ? Icons.article
                        : Icons.article_outlined,
                  ),
                  label: 'News',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DashboardHome extends StatelessWidget {
  const DashboardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF3EB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat Datang',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xFF0B1956).withOpacity(0.6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'MyDash',
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xFF0B1956),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFD2E8FF),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.notifications_outlined,
                        color: Color(0xFF0B1956),
                        size: 26,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // Featured Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF0B1956),
                        Color(0xFF1E3A8A),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF0B1956).withOpacity(0.3),
                        blurRadius: 15,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.stars_rounded,
                        color: Color(0xFFD2E8FF),
                        size: 40,
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Explore MyDash',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Access all menus easily and quickly from here.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Menu Title
                const Text(
                  'Menu Utama',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF0B1956),
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 16),

                // Menu Grid
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1.1,
                  children: [
                    _MenuCard(
                      title: 'Biodata',
                      subtitle: 'Info Pribadi',
                      icon: Icons.person,
                      gradient: const LinearGradient(
                        colors: [Color(0xFFD2E8FF), Color(0xFFB4D4FF)],
                      ),
                      onTap: () {
                        final state = context.findAncestorStateOfType<_DashboardScreenState>();
                        state?._onItemTapped(1);
                      },
                    ),
                    _MenuCard(
                      title: 'Contact',
                      subtitle: 'Contact List',
                      icon: Icons.contacts,
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFFE5B4), Color(0xFFFFD89C)],
                      ),
                      onTap: () {
                        final state = context.findAncestorStateOfType<_DashboardScreenState>();
                        state?._onItemTapped(2);
                      },
                    ),
                    _MenuCard(
                      title: 'Calculator',
                      subtitle: 'Quick Calculate',
                      icon: Icons.calculate,
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFFD4E5), Color(0xFFFFB8D4)],
                      ),
                      onTap: () {
                        final state = context.findAncestorStateOfType<_DashboardScreenState>();
                        state?._onItemTapped(3);
                      },
                    ),
                    _MenuCard(
                      title: 'Weather',
                      subtitle: 'Weather Info',
                      icon: Icons.wb_sunny,
                      gradient: const LinearGradient(
                        colors: [Color(0xFFB4E5FF), Color(0xFF9CD4FF)],
                      ),
                      onTap: () {
                        final state = context.findAncestorStateOfType<_DashboardScreenState>();
                        state?._onItemTapped(4);
                      },
                    ),
                    _MenuCard(
                      title: 'News',
                      subtitle: 'Latest News',
                      icon: Icons.article,
                      gradient: const LinearGradient(
                        colors: [Color(0xFFD4FFB4), Color(0xFFBFFF9C)],
                      ),
                      onTap: () {
                        final state = context.findAncestorStateOfType<_DashboardScreenState>();
                        state?._onItemTapped(5);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MenuCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Gradient gradient;
  final VoidCallback onTap;

  const _MenuCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.gradient,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: const Color(0xFF0B1956),
                  size: 32,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0B1956),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: const Color(0xFF0B1956).withOpacity(0.7),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}