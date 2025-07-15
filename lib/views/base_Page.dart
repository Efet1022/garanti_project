import 'package:flutter/material.dart';
import 'package:garanti_project/views/account_card_Page.dart';
import 'package:garanti_project/views/applications_Page.dart';
import 'package:garanti_project/views/homePage.dart';
import 'package:garanti_project/views/statusPage.dart';
import 'package:garanti_project/views/transactionsPage.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() =>
      _HomePageState(); // State sınıfı
}

class _HomePageState extends State<BasePage> {
  int selectedIndex = 0; // Seçilen tab'ın indeksi

  final List pages = [
    Homepage(), // 0 - Anasayfa
    AccountCard(), // 1 - Hesap ve Kart
    Applicationspage(), // 2 - Başvurular
    Transactionspage(), // 3 - İşlemler
    Statuspage(), // 4 - Durumum
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        237,
        236,
        236,
      ), // Arka plan rengi

      bottomNavigationBar: BottomNavigationBar(
        // Sayfalar arası geçişi sağlayan alt menü
        selectedItemColor:
            Colors.green, // Seçili ikon rengi
        currentIndex:
            selectedIndex, // Aktif sekme
        onTap: (int index) {
          setState(() {
            selectedIndex =
                index; // Tıklanan index'e göre sayfa değiştir
          });
        },
        selectedFontSize: 11,
        unselectedFontSize: 11,
        type:
            BottomNavigationBarType
                .fixed, // Tüm ikonlar aynı anda görünür

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

      body:
          pages[selectedIndex], // Seçilen sayfa burada gösterilir
    );
  }
}
