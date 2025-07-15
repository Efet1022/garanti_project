import 'package:flutter/material.dart';

class ShowMoreWidget extends StatelessWidget {
  final bool isVisible;
  final double maxheight;
  final double maxwidth;
  final VoidCallback
  onToggle; // Parent widget'tan gelen fonksiyon. "Daha Fazla/Daha Az Göster" geçişi için kullanılır.

  const ShowMoreWidget({
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
      height:
          maxheight *
          0.35, // Daha kısa alan (önizleme gibi)
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10,
        ), // Köşeleri yumuşatılmış beyaz kutu
      ),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.spaceAround,
        children: [
          // İlk 5 transfer işlemi gösteriliyor
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

          // "Daha Fazla Göster" tıklanabilir satır
          GestureDetector(
            onTap:
                onToggle, // Tıklanınca yukarıdan gelen toggle fonksiyonu çalıştırılır
            child: SizedBox(
              height: maxheight * 0.04,
              child: Container(
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Text(
                      "Daha Fazla Göster", // Kullanıcıya daha fazla işlem gösterme imkânı sunar
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

// Her işlem kategorisi için ortak satır tasarımı
Padding Categories(
  String title, {
  String?
  image, // Opsiyonel olarak "yeni" etiketi görseli
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
            title,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 5),
          image == null
              ? SizedBox() // Görsel yoksa boş alan
              : SizedBox(
                height: 25,
                child: Image.asset(
                  "images/yeni.png",
                ), // Yeni etiketi
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

// Satırları ayıran ince çizgi
Dividing(double maxwidth) {
  return Divider(
    height: 0,
    thickness: 1,
    color: const Color.fromARGB(
      255,
      237,
      236,
      236,
    ), // Açık gri renk
  );
}
