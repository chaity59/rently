import 'package:flutter/material.dart';

import 'model/apartment.dart';
import 'screen/apartment_details_screen.dart';

import 'model/notice.dart';
import 'screen/notice_board_screen.dart';

import 'model/rent_record.dart';
import 'screen/rent_records_screen.dart';

void main() {
  runApp(const RentlyApp());
}

class RentlyApp extends StatelessWidget {
  const RentlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const apartment = Apartment(
      name: 'Green View Apartment',
      location: 'Rajshahi, Bangladesh',
      rent: '৳15,000 / month',
      description:
          'This apartment provides a comfortable living space '
          'for tenants. More apartment information can be '
          'displayed here.',
      imageUrl:
          'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267',
    );

    const notices = [
      Notice(
        title: 'Rent Payment Reminder',
        description: 'Please pay your rent before the due date.',
        date: '27 August 2026',
      ),
      Notice(
        title: 'Water Maintenance Notice',
        description: 'Water supply will be temporarily unavailable.',
        date: '28 August 2026',
      ),
    ];

    const rentRecords = [
  RentRecord(
    month: 'August 2026',
    amount: '৳15,000',
    status: 'Paid',
    paymentDate: '25 August 2026',
  ),
  RentRecord(
    month: 'July 2026',
    amount: '৳15,000',
    status: 'Paid',
    paymentDate: '24 July 2026',
  ),
  RentRecord(
    month: 'June 2026',
    amount: '৳15,000',
    status: 'Due',
    paymentDate: 'Not Paid',
  ),
];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rently',
      home: const RentRecordsScreen(
  records: rentRecords,
),
    );
  }
}