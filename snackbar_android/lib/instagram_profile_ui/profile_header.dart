import 'package:flutter/material.dart';
import 'package:snackbar_android/instagram_profile_ui/profile_stats.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 40,
                // Gunakan AssetImage untuk backgroundImage
                backgroundImage: AssetImage('assets/images/gambar3.jpg'),
              ),
              const SizedBox(width: 20),

              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ProfileStats(count: '100', label: 'Posts'),
                    ProfileStats(count: '50K', label: 'Followers'),
                    ProfileStats(count: '1K', label: 'Following'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Nama Pengguna
          const Text(
            'Username',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 5),
          // Deskripsi Bio
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt #hashtag',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 5),
          // Link
          const Text(
            'Link goes here',
            style: TextStyle(color: Colors.blue, fontSize: 14),
          ),
          const SizedBox(height: 15),
          // Tombol Edit Profile
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.grey),
                padding: const EdgeInsets.symmetric(vertical: 8),
              ),
              child: const Text(
                'Edit Profile',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}