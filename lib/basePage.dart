import 'package:flutter/material.dart';
import 'package:garanti_project/account_cardPage.dart';
import 'package:garanti_project/applicationsPage.dart';
import 'package:garanti_project/homePage.dart';
import 'package:garanti_project/statusPage.dart';
import 'package:garanti_project/transactionsPage.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() =>
      _HomePageState();
}

class _HomePageState extends State<BasePage> {
  int selectedIndex = 0;
  final List pages = [
    Homepage(),
    AccountCard(),
    Applicationspage(),
    Transactionspage(),
    Statuspage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        237,
        236,
        236,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        selectedFontSize: 11,
        unselectedFontSize: 11,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "Anasayfa",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Hesap ve Kart",
            icon: Icon(Icons.credit_card),
          ),
          BottomNavigationBarItem(
            label: "Başvurular",
            icon: Icon(Icons.plus_one_rounded),
          ),
          BottomNavigationBarItem(
            label: "İşlemler",
            icon: Icon(Icons.list),
          ),
          BottomNavigationBarItem(
            label: "Durumum",
            icon: Icon(Icons.heart_broken),
          ),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
