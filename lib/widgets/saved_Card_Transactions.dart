import 'package:flutter/material.dart';

class SavedCardTransactions
    extends StatelessWidget {
  final double maxheight;
  final double maxwidth;

  const SavedCardTransactions({
    super.key,
    required this.maxheight,
    required this.maxwidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Kayıtlı kart bilgileri
        Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
          ),
          width: maxwidth,
          height: maxheight * 0.1,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Kart", // Başlık
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "S&F PLATINUM AMEX", // Kart adı
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_right,
                  ), // Sağ yön oku
                  SizedBox(
                    width: maxwidth * 0.01,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "3775 **** **** 056", // Kart numarası
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(
          height: maxheight * 0.01,
        ), // Boşluk
        // Borç tipi seçimi
        Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
          ),
          width: maxwidth,
          height: maxheight * 0.07,
          color: Colors.white,
          child: Row(
            children: [
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    "Borç Tipi", // Alt başlık
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "TL", // Varsayılan borç tipi
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_right,
                  ), // Detay için yön oku
                ],
              ),
              SizedBox(width: maxwidth * 0.01),
            ],
          ),
        ),

        SizedBox(height: maxheight * 0.01),

        // Hesap seçimi
        Container(
          padding: EdgeInsets.only(left: 10),
          width: maxwidth,
          height: maxheight * 0.07,
          color: Colors.white,
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Text(
                "Hesap",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_right),
              SizedBox(width: maxwidth * 0.01),
            ],
          ),
        ),

        SizedBox(height: maxheight * 0.01),

        // Ödenecek tutar
        Container(
          padding: EdgeInsets.only(left: 10),
          width: maxwidth,
          height: maxheight * 0.07,
          color: Colors.white,
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Text(
                "Tutar",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: maxheight * 0.01),

        // Devam butonu
        SizedBox(
          height: maxheight * 0.06,
          width: maxwidth,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor:
                  Colors.teal, // Arka plan rengi
              shape:
                  RoundedRectangleBorder(), // Köşeleri düz
            ),
            onPressed: () {
              // Devam butonuna tıklanınca yapılacaklar
            },
            child: Text(
              "Devam", // Buton metni
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
