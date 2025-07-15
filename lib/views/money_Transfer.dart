import 'package:flutter/material.dart';
import 'package:garanti_project/widgets/show_Less_Widget.dart'; // Daha az gösterilen widget
import 'package:garanti_project/widgets/show_More_Widget.dart'; // Daha fazla gösterilen widget

class MoneyTransfer extends StatefulWidget {
  const MoneyTransfer({super.key});

  @override
  State<MoneyTransfer> createState() =>
      _MoneyTransferState();
}

class _MoneyTransferState
    extends State<MoneyTransfer> {
  bool isVisible =
      true; // Başlangıçta "show more" açık olsun

  @override
  Widget build(BuildContext context) {
    // Ekran yüksekliği ve genişliği alınıyor
    double maxheight =
        MediaQuery.of(context).size.height;
    double maxwidth =
        MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(
              context,
            ); // Geri butonuna tıklandığında bir önceki sayfaya dön
          },
          child: Icon(
            Icons.arrow_back, // Geri ikonu
            color: Colors.teal,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ), // Yatay padding
        child: Column(
          children: [
            Text(
              "Para Transferi", // Sayfa başlığı
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: maxheight * 0.015,
            ), // Başlık altı boşluk
            // isVisible true ise ShowMoreWidget gösterilir, false ise ShowLessWidget
            isVisible
                ? ShowMoreWidget(
                  isVisible:
                      isVisible, // Widget içerisindeki durum kontrolü için
                  maxheight:
                      maxheight, // Ekran yüksekliği
                  maxwidth:
                      maxwidth, // Ekran genişliği
                  onToggle: () {
                    setState(() {
                      isVisible =
                          !isVisible; // Tıklanma durumuna göre tersine çevir
                    });
                  },
                )
                : ShowLessWidget(
                  isVisible: isVisible,
                  maxheight: maxheight,
                  maxwidth: maxwidth,
                  onToggle: () {
                    // Callback ile buradaki işlem diğer widget'a aktarılıyor
                    setState(() {
                      isVisible =
                          !isVisible; // Göster/gizle durumu değiştirilir
                    });
                  },
                ),
          ],
        ),
      ),
    );
  }
}
