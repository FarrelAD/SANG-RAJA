import 'package:flutter/material.dart';
import 'package:sang_raja/pages/home_page.dart';
import 'package:sang_raja/pages/kegiatan_page.dart';
import 'package:sang_raja/pages/keuangan_page.dart';
import 'package:sang_raja/pages/masyarakat_page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  final _pages = [
    const HomePage(),
    const KegiatanPage(),
    const KeuanganPage(),
    const MasyarakatPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'Beranda'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event), 
            label: 'Kegiatan'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Keuangan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Masyarakat',
          ),
        ],
      ),
    );
  }
}
