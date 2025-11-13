import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<Map<String, dynamic>> newsList = [
    {
      'title': 'Google Releases New AI Education Tools',
      'summary':
          'Google announces new AI-powered tools for students and teachers, focusing on personalized learning and productivity enhancement.',
      'image':
          'https://images.unsplash.com/photo-1594663653925-365bcbf7ef86?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'saved': false,
    },
    {
      'title': 'New Tech Startup Launches Eco App',
      'summary':
          'A startup builds a mobile app to help users track carbon footprint.',
      'image':
          'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?w=500&q=80',
      'saved': true,
    },
    {
      'title': 'Students Win Robotics Competition',
      'summary':
          'Indonesian students achieve world-level robotics championship victory.',
      'image':
          'https://images.unsplash.com/photo-1485827404703-89b55fcc595e?w=500&q=80',
      'saved': false,
    },
    {
      'title': 'New Breakthrough in Cancer Treatment Announced',
      'summary':
          'Researchers reveal a promising immunotherapy treatment that improves patient survival rates in early trials.',
      'image':
          'https://images.unsplash.com/photo-1579154204601-01588f351e67?w=500&q=80',
      'saved': false,
    },
    {
      'title': 'Electric Vehicle Charging Stations Increase 30%',
      'summary':
          'A new report shows rapid growth in EV charging infrastructure worldwide as governments push green transportation initiatives.',
      'image':
          'https://images.unsplash.com/photo-1593941707882-a5bba14938c7?w=500&q=80',
      'saved': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6EDE0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "What's New",
                    style: TextStyle(
                      color: Color(0xFF0B1956),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.search_rounded,
                      size: 28, color: Color(0xFF0B1956)),
                ],
              ),
              const SizedBox(height: 15),

              // List berita
              Expanded(
                child: ListView.builder(
                  itemCount: newsList.length,
                  itemBuilder: (context, index) {
                    final item = newsList[index];
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xFFD2E8FF),
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  item['image'],
                                  width: 75,
                                  height: 75,
                                  fit: BoxFit.cover,
                                  loadingBuilder: (context, child, loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return Container(
                                      width: 75,
                                      height: 75,
                                      color: Colors.grey.shade200,
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          value: loadingProgress.expectedTotalBytes != null
                                              ? loadingProgress.cumulativeBytesLoaded /
                                                  loadingProgress.expectedTotalBytes!
                                              : null,
                                          strokeWidth: 2,
                                        ),
                                      ),
                                    );
                                  },
                                  errorBuilder: (_, __, ___) => Container(
                                    width: 75,
                                    height: 75,
                                    color: Colors.grey.shade300,
                                    child: const Icon(Icons.broken_image),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item['title'],
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0B1956),
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      item['summary'],
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Colors.black87,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),

                          const SizedBox(height: 10),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.chat_bubble_outline, size: 18),
                                  SizedBox(width: 6),
                                  Text("Comment",
                                      style: TextStyle(fontSize: 13)),
                                ],
                              ),

                              // Share static button
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: const [
                                    Icon(Icons.share, size: 18),
                                    SizedBox(width: 6),
                                    Text("Share",
                                        style: TextStyle(fontSize: 13)),
                                  ],
                                ),
                              ),

                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    item['saved'] = !item['saved'];
                                  });
                                },
                                child: Icon(
                                  item['saved']
                                      ? Icons.bookmark
                                      : Icons.bookmark_border,
                                  size: 20,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}