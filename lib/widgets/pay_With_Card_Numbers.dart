import 'package:flutter/material.dart';

class PayWithCardNumbers extends StatefulWidget {
  final double maxheight;
  final double maxwidth;

  const PayWithCardNumbers({
    super.key,
    required this.maxheight,
    required this.maxwidth,
  });

  @override
  State<PayWithCardNumbers> createState() =>
      _PayWithCardNumbersState();
}

class _PayWithCardNumbersState
    extends State<PayWithCardNumbers> {
  bool check = true; // Checkbox kontrol durumu

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Kart Tipi seçimi
        Container(
          padding: EdgeInsets.only(left: 10),
          width: widget.maxwidth,
          height: widget.maxheight * 0.07,
          color: Colors.white,
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Text(
                "Kart Tipi",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_right,
              ), // Sağ yön simgesi
              SizedBox(
                width: widget.maxwidth * 0.01,
              ),
            ],
          ),
        ),

        SizedBox(
          height: widget.maxheight * 0.01,
        ), // Boşluk
        // Hesap seçimi
        Container(
          padding: EdgeInsets.only(left: 10),
          width: widget.maxwidth,
          height: widget.maxheight * 0.07,
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
              SizedBox(
                width: widget.maxwidth * 0.01,
              ),
            ],
          ),
        ),

        SizedBox(height: widget.maxheight * 0.01),

        // Kart numarası alanı (şimdilik sadece metin olarak görünüyor)
        Container(
          padding: EdgeInsets.only(left: 10),
          width: widget.maxwidth,
          height: widget.maxheight * 0.07,
          color: Colors.white,
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Text(
                "Kart Numarası",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: widget.maxheight * 0.01),

        // Tutar alanı (şimdilik sadece metin olarak görünüyor)
        Container(
          padding: EdgeInsets.only(left: 10),
          width: widget.maxwidth,
          height: widget.maxheight * 0.07,
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

        SizedBox(height: widget.maxheight * 0.01),

        // Ödeme kaydı tanımlama checkbox'ı
        Container(
          width: widget.maxwidth,
          height: widget.maxheight * 0.06,
          color: Colors.white,
          child: Row(
            children: [
              Checkbox(
                activeColor: Colors.teal,
                value: check,
                onChanged: (value) {
                  setState(() {
                    check =
                        !check; // Checkbox durumunu değiştir
                  });
                },
              ),
              Text(
                "Ödeme Kaydı Tanımla",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),

        SizedBox(height: widget.maxheight * 0.01),

        // Devam butonu
        SizedBox(
          height: widget.maxheight * 0.06,
          width: widget.maxwidth,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor:
                  Colors.teal, // Buton rengi
              shape:
                  RoundedRectangleBorder(), // Köşeleri düz
            ),
            onPressed: () {
              // Buton basıldığında yapılacak işlemler
            },
            child: Text(
              "Devam",
              style: TextStyle(
                color: Colors.white, // Yazı rengi
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
