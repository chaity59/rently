import 'package:flutter/material.dart';

import '../model/rent_record.dart';

class RentRecordsScreen extends StatelessWidget {
  final List<RentRecord> records;

  const RentRecordsScreen({
    super.key,
    required this.records,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rent Records'),
      ),
      body: records.isEmpty
          ? const Center(
              child: Text('No rent records available'),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: records.length,
              itemBuilder: (context, index) {
                final record = records[index];

                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          record.month,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          'Amount: ${record.amount}',
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),

                        const SizedBox(height: 6),

                        Text(
                          'Status: ${record.status}',
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),

                        const SizedBox(height: 6),

                        Text(
                          'Payment Date: ${record.paymentDate}',
                          style: const TextStyle(
                            fontSize: 15,
                          ),
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