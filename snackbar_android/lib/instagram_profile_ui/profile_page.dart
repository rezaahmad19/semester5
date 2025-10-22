import 'package:flutter/material.dart';
import 'package:snackbar_android/instagram_profile_ui/profile_header.dart';
import 'package:snackbar_android/instagram_profile_ui/profile_stats.dart';
import 'package:snackbar_android/instagram_profile_ui/story_highlights.dart';
import 'package:snackbar_android/instagram_profile_ui/post_grid.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          children: [
            Text(
              'rezaMore',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Icon(Icons.keyboard_arrow_down, color: Colors.black),
          ],
        ),
        actions: const [
          Icon(Icons.add_box_outlined, color: Colors.black, size: 28),
          SizedBox(width: 16),
          Icon(Icons.menu, color: Colors.black, size: 28),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileHeader(),
            const Divider(height: 1, thickness: 0.5, color: Colors.grey),
            const StoryHighlights(),
            const Divider(height: 1, thickness: 0.5, color: Colors.grey),

            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  const TabBar(
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(icon: Icon(Icons.grid_on)),
                      Tab(icon: Icon(Icons.video_collection_outlined)),
                      Tab(icon: Icon(Icons.person_pin_outlined)),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: const TabBarView(
                      children: [
                        PostGrid(),
                        Center(child: Text("Reels Tab")), // Placeholder
                        Center(child: Text("Tagged Tab")), // Placeholder
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Likes'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}