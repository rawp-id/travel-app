import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: const Text('Tiket Pesawat'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: const Text('Hotel'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: const Text('Paket Wisata'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text('Pesan Tiket Pesawat'),
              Card(
                child: ListTile(
                  leading: Icon(Icons.flight),
                  title: Text('Garuda Indonesia'),
                  subtitle: Text('Surabaya - Jakarta'),
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text('Pesan Hotel'),
              Card(
                child: ListTile(
                  leading: Icon(Icons.hotel),
                  title: Text('Hotel'),
                  subtitle: Text('Bali'),
                  onTap: () {
                    Navigator.pushNamed(context, '/detail-hotel');
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text('Paket Wisata'),
              Card(
                child: ListTile(
                  leading: Icon(Icons.airplanemode_active),
                  title: Text('Bali'),
                  subtitle: Text('3 Hari 2 Malam'),
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text("Tempat Wisata"),
              Card(
                child: ListTile(
                  leading: Icon(Icons.place),
                  title: Text('Bali'),
                  subtitle: Text('Pantai Kuta'),
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text("Kuliner"),
              Card(
                child: ListTile(
                  leading: Icon(Icons.restaurant),
                  title: Text('Bali'),
                  subtitle: Text('Nasi Goreng'),
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
