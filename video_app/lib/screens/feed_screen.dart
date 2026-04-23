import 'package:flutter/material.dart';
import '../widgets/comment_sheet.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  // Logic variable moved inside the State class
  bool isFeedSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. The Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/profile3.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // 2. The Semi-transparent overlay
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.3)),
          ),

          // 3. Top Toggling Headers
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // WHO YOU FOLLOW BUTTON
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isFeedSelected = false;
                    });
                  },
                  child: AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 200),
                    style: TextStyle(
                      fontSize: isFeedSelected ? 16 : 22,
                      color: Colors.white.withOpacity(isFeedSelected ? 0.6 : 1.0),
                      fontWeight: FontWeight.bold,
                    ),
                    child: const Text("Who You Follow"),
                  ),
                ),

                const SizedBox(width: 20),
                const Text("|", style: TextStyle(color: Colors.white30, fontSize: 20)),
                const SizedBox(width: 20),

                // FEED BUTTON
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isFeedSelected = true;
                    });
                  },
                  child: AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 200),
                    style: TextStyle(
                      fontSize: isFeedSelected ? 22 : 16,
                      color: Colors.white.withOpacity(isFeedSelected ? 1.0 : 0.6),
                      fontWeight: FontWeight.bold,
                    ),
                    child: const Text("Feed"),
                  ),
                ),
              ],
            ),
          ),

          // 4. Bottom Description UI
          Positioned(
            bottom: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "@sigmawolf",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "#sigma #andrewtate #wolf",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),

          // 5. Right Sidebar UI
          Positioned(
            bottom: 40,
            right: 10,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/profile1.jpg'),
                ),
                const SizedBox(height: 20),

                // Heart Button
                const Icon(Icons.favorite, color: Colors.white, size: 35),
                const Text("67", style: TextStyle(color: Colors.white)),
                const SizedBox(height: 20),

                // Comment Button
                IconButton(
                  icon: const Icon(
                    Icons.chat_bubble,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent, // Allows rounded corners to show
                      builder: (context) => const CommentSheet(),
                    );
                  },
                ),
                const Text("64", style: TextStyle(color: Colors.white)),
                const SizedBox(height: 20),

                // Download Button
                IconButton(
                  icon: const Icon(
                    Icons.file_download,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {
                    // Placeholder for download logic
                  },
                ),
                const Text(
                  "Download",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}