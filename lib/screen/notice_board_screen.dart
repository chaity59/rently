import 'package:flutter/material.dart';
import '../model/notice.dart';

class NoticeBoardScreen extends StatelessWidget {
  final List<Notice> notices;

  const NoticeBoardScreen({
    super.key,
    required this.notices,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Central Notice Board'),
      ),
      body: notices.isEmpty
          ? const Center(
              child: Text('No notices available'),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: notices.length,
              itemBuilder: (context, index) {
                final notice = notices[index];

                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notice.title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          notice.description,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),

                        const SizedBox(height: 12),

                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_today,
                              size: 18,
                            ),
                            const SizedBox(width: 6),
                            Text(notice.date),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}