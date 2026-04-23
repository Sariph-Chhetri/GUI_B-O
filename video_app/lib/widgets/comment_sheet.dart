import 'package:flutter/material.dart';

class CommentSheet extends StatelessWidget {
  const CommentSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // Hardcoded data with local asset paths
    final List<Map<String, String>> comments = [
      {"user": "john", "text": "Something Nice", "profile": "assets/profile1.jpg"},
      {"user": "alice", "text": "Great video!", "profile": "assets/profile1.jpg"},
      {"user": "sariph", "text": "GG", "profile": "assets/profile1.jpg"},
    ];

    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      // Change background to grayish white and ensure full opacity
      decoration: const BoxDecoration(
        color: Color(0xFFF5F5F5), // Grayish white (f5f5f5)
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          // Header with Title and Cross Button
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "579 comments",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black, // Explicit black text
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context), // Closes the sheet
                    child: const Icon(Icons.close, color: Colors.black, size: 20),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          
          Expanded(
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    // Use the asset path from your array
                    backgroundImage: AssetImage(comments[index]['profile']!),
                  ),
                  title: Text(
                    comments[index]['user']!,
                    style: const TextStyle(
                      fontSize: 13, 
                      fontWeight: FontWeight.bold, 
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    comments[index]['text']!,
                    style: const TextStyle(color: Colors.black87),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.favorite_border, size: 18, color: Colors.red),
                      Text("55", style: TextStyle(fontSize: 10, color: Colors.black54)),
                    ],
                  ),
                );
              },
            ),
          ),
          // Add comment bar placeholder
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 10,
              left: 16,
              right: 16,
              top: 10,
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text("Add comment...", style: TextStyle(color: Colors.grey)),
            ),
          ),
        ],
      ),
    );
  }
}