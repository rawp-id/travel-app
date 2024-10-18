import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailTiketPesawat extends StatefulWidget {
  const DetailTiketPesawat({super.key});

  @override
  _DetailTiketPesawatState createState() => _DetailTiketPesawatState();
}

class _DetailTiketPesawatState extends State<DetailTiketPesawat> {
  DateTime? _departureDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Book Flight Ticket',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 16),
              Text(
                'Garuda Indonesia',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text("Surabaya (SUB) - Jakarta (CGK)"),
              const SizedBox(height: 16),
              ListTile(
                title: const Text('Departure Date'),
                subtitle: Text(
                  _departureDate == null
                      ? 'Select Date'
                      : _departureDate!.toLocal().toString().split(' ')[0],
                ),
                trailing: const Icon(Icons.calendar_today),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2030),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      _departureDate = pickedDate;
                    });
                  }
                },
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Center(
                  child: Text('Book Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
