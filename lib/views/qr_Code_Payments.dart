import 'package:flutter/material.dart';

class QrCodePayments extends StatelessWidget {
  const QrCodePayments({super.key});

  @override
  Widget build(BuildContext context) {
    // Ekran boyutlarını alıyoruz
    double maxheight =
        MediaQuery.of(context).size.height;
    double maxwidth =
        MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        // Geri tuşu için GestureDetector kullanılıyor
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Geri git
          },
          child: Icon(
            Icons.arrow_back, // Geri ikonu
            color: Colors.teal,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          15.0,
        ), // Sayfa genel padding
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "TR Karekod İşlemleri", // Sayfa başlığı
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: maxheight * 0.025,
            ), // Başlık altı boşluk
            // İçerik kutusu (3 satırlı seçenekler)
            Container(
              width: maxwidth,
              height: maxheight * 0.19,
              decoration: BoxDecoration(
                color:
                    Colors
                        .white, // Beyaz arka plan
                borderRadius:
                    BorderRadius.circular(
                      10,
                    ), // Köşeleri yuvarla
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceEvenly, // Dikeyde eşit boşluk
                  children: [
                    // 1. seçenek: Para Çek/Yatır
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                      child: Row(
                        children: [
                          Text(
                            "Para Çek/Yatır", // Seçenek başlığı
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_right,
                          ), // Sağ ok
                        ],
                      ),
                    ),
                    Dividing(
                      maxwidth,
                    ), // Ayırıcı çizgi
                    // 2. seçenek: TR Karekod ile Öde
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                      child: Row(
                        children: [
                          Text(
                            "TR Karekod ile Öde",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                    Dividing(maxwidth),

                    // 3. seçenek: TR Karekod ile Para Gönder
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                      child: Row(
                        children: [
                          Text(
                            "TR Karekod ile Para Gönder",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Satırları ayırmak için Divider fonksiyonu
Dividing(double maxwidth) {
  return Divider(
    thickness: 1, // Çizgi kalınlığı
    color: const Color.fromARGB(
      255,
      237,
      236,
      236,
    ), // Açık gri çizgi
  );
}
