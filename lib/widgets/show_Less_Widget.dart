import 'package:flutter/material.dart';

class ShowLessWidget extends StatelessWidget {
  final bool isVisible;
  final double maxheight;
  final double maxwidth;
  final VoidCallback
  onToggle; // Parent widget'tan gelen görünürlük kontrolü için callback fonksiyonu

  const ShowLessWidget({
    super.key,
    required this.isVisible,
    required this.maxheight,
    required this.maxwidth,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: maxwidth,
      height: maxheight * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10,
        ), // Köşeleri yumuşatılmış beyaz arka plan
      ),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment
                .spaceAround, // Elemanlar eşit aralıkla yerleştiriliyor
        children: [
          Categories("Kayıtlı Kişiye Transfer"),
          Dividing(maxwidth),
          Categories(
            "IBAN'a Transfer (Havale ve EFT)",
          ),
          Dividing(maxwidth),
          Categories(
            "Hesap No'ya Transfer (Havale ve EFT)",
          ),
          Dividing(maxwidth),
          Categories("Kendi Hesabıma Transfer"),
          Dividing(maxwidth),
          Categories(
            "Yabancı Para Transferi",
            image: "images/yeni.png",
          ),
          Dividing(maxwidth),
          Categories(
            "Diğer Bankadan Para Getir",
            image: "images/yeni.png",
          ),
          Dividing(maxwidth),
          Categories("Kolay Adrese Transfer"),
          Dividing(maxwidth),
          Categories(
            "TR Karekod ile Para Gönder",
          ),
          Dividing(maxwidth),
          Categories(
            "Cep No'ya Transfer (CepBank)",
          ),
          Dividing(maxwidth),
          Categories(
            "İsme Transfer (Garanti BBVA'ya)",
          ),
          Dividing(maxwidth),
          Categories(
            "Düzenli Transfer Emirlerim",
          ),
          Dividing(maxwidth),
          Categories(
            "Tek Seferlik Transfer Emirlerim",
          ),
          Dividing(maxwidth),

          // "Daha Az Göster" tıklanabilir alan
          GestureDetector(
            onTap:
                onToggle, // Tıklanınca callback fonksiyon çalışır (görünürlük değiştirir)
            child: SizedBox(
              height: maxheight * 0.04,
              child: Container(
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Text(
                      "Daha Az Göster",
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight:
                            FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Her transfer kategorisi için satır oluşturan fonksiyon
Padding Categories(
  String title, {
  String?
  image, // İsteğe bağlı 'yeni' etiketi resmi
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 10,
    ),
    child: SizedBox(
      child: Row(
        children: [
          Text(
            title, // Başlık metni
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 5),
          image == null
              ? SizedBox() // Eğer görsel verilmemişse boş kutu döner
              : SizedBox(
                height: 25,
                child: Image.asset(
                  "images/yeni.png",
                ), // 'Yeni' görseli
              ),
          Spacer(),
          Icon(
            Icons.arrow_right_alt,
          ), // Sağ yön simgesi
        ],
      ),
    ),
  );
}

// Ayırıcı çizgi
Dividing(double maxwidth) {
  return Divider(
    height: 0,
    thickness: 1,
    color: const Color.fromARGB(
      255,
      237,
      236,
      236,
    ), // Açık gri çizgi
  );
}
