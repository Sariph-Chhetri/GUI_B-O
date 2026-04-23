import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("@john_sigma"), centerTitle: true),
      body: Column(
        children: [
          const SizedBox(height: 20),
         const CircleAvatar(
                  radius: 40, // Adjust size as needed
                  backgroundImage: AssetImage('assets/profile1.jpg'),
                ),
                const SizedBox(height: 20),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [Text("14"), Text("Following")]),
              SizedBox(width: 30),
              Column(children: [Text("38"), Text("Followers")]),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Hello! Welcome."),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.8,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: 9,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: Colors
                      .grey[800], // Acts as a placeholder while image loads
                  image: const DecorationImage(
                    image: AssetImage('assets/profile2.jpg'),
                    fit: BoxFit
                        .cover, // This makes the image fill the square properly
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 0.5,
                  ), // Optional: adds a thin grid line
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
