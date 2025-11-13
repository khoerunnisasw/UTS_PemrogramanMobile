import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  int selectedHour = 1;

  List<Map<String, dynamic>> hourlyWeather = [
    {"temp": "25°", "time": "13.00", "img": "assets/weather/rain.png"},
    {"temp": "26°", "time": "14.00", "img": "assets/weather/thunderclouds.png"},
    {"temp": "25°", "time": "15.00", "img": "assets/weather/rain.png"},
    {"temp": "24°", "time": "16.00", "img": "assets/weather/cloudy.png"},
    {"temp": "23°", "time": "17.00", "img": "assets/weather/rain.png"},
    {"temp": "22°", "time": "18.00", "img": "assets/weather/cloudy.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF3E8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // =================== LOCATION =====================
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.location_pin, color: Color(0xFF0B1956), size: 22),
                      SizedBox(width: 5),
                      Text(
                        "Parongpong",
                        style: TextStyle(
                          color: Color(0xFF0B1956),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                // ================= CLOUD IMAGE ==================
                Image.asset(
                  'assets/weather/thunderclouds.png',
                  height: 100,
                ),
                const SizedBox(height: 8),

                // ================= TEMPERATURE =====================
                const Text(
                  "25°",
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0B1956),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFB4D4FF).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Thunderclouds",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF0B1956),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // ================= STATUS BAR =====================
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 15,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      _WeatherInfo(icon: Icons.air, label: "Wind", value: "13km/h"),
                      _VerticalDivider(),
                      _WeatherInfo(icon: Icons.water_drop, label: "Humidity", value: "70%"),
                      _VerticalDivider(),
                      _WeatherInfo(icon: Icons.water_damage, label: "Rain", value: "87%"),
                    ],
                  ),
                ),

                const SizedBox(height: 14),

                // ================= HOURLY HEADER ====================
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Today",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0B1956),
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFFB4D4FF).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: const [
                            Text(
                              "7 Days",
                              style: TextStyle(
                                color: Color(0xFF0B1956),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Color(0xFF0B1956),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // ================= HOURLY CARDS ====================
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hourlyWeather.length,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    itemBuilder: (context, index) {
                      final item = hourlyWeather[index];
                      final isSelected = selectedHour == index;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedHour = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                          width: isSelected ? 90 : 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            gradient: isSelected
                                ? LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      const Color(0xFFD2E8FF),
                                      const Color(0xFFB4D4FF),
                                    ],
                                  )
                                : null,
                            color: isSelected ? null : Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: isSelected 
                                    ? const Color(0xFFB4D4FF).withOpacity(0.4)
                                    : Colors.black.withOpacity(0.05),
                                blurRadius: isSelected ? 12 : 6,
                                offset: Offset(0, isSelected ? 6 : 4),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                item["temp"],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF0B1956),
                                  fontSize: isSelected ? 18 : 16,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: isSelected 
                                      ? Colors.white.withOpacity(0.5)
                                      : Colors.transparent,
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  item["img"], 
                                  width: isSelected ? 36 : 32,
                                  height: isSelected ? 36 : 32,
                                ),
                              ),
                              Text(
                                item["time"],
                                style: TextStyle(
                                  color: const Color(0xFF0B1956),
                                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _WeatherInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _WeatherInfo({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFFB4D4FF).withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 26, color: const Color(0xFF0B1956)),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF0B1956),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF0B1956),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class _VerticalDivider extends StatelessWidget {
  const _VerticalDivider();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 1.5,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF0B1956).withOpacity(0.1),
            const Color(0xFF0B1956).withOpacity(0.3),
            const Color(0xFF0B1956).withOpacity(0.1),
          ],
        ),
      ),
    );
  }
}