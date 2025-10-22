import 'package:flutter/material.dart';

class StoryHighlights extends StatelessWidget {
  const StoryHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 90, // Tinggi untuk daftar highlights
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _buildHighlightItem('Story 1', 'https://picsum.photos/200/300?random=2'),
            _buildHighlightItem('Story 2', 'https://picsum.photos/200/300?random=3'),
            _buildHighlightItem('Story 3', 'https://picsum.photos/200/300?random=4'),
            _buildHighlightItem('Story 4', 'https://picsum.photos/200/300?random=5'),
            _buildNewHighlight(),
          ],
        ),
      ),
    );
  }

  Widget _buildHighlightItem(String title, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrl), // Ganti dengan URL gambar Anda
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildNewHighlight() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade400, width: 1),
            ),
            child: const Icon(Icons.add, size: 30, color: Colors.black),
          ),
          const SizedBox(height: 5),
          const Text(
            'New',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}