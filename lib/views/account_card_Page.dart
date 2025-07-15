import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    double maxheight =
        MediaQuery.of(
          context,
        ).size.height; // Ekran yüksekliği
    double maxwidth =
        MediaQuery.of(
          context,
        ).size.width; // Ekran genişliği

    return Scaffold(
      body: SafeArea(
        // Çentik gibi alanlara girmemesi için
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.end,
                children: [
                  Icon(
                    // Sağ üstte arama ikonu
                    Icons.search,
                    color: Colors.teal,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(height: maxheight * 0.04),
              Row(
                children: [
                  Text(
                    // Başlık
                    "Hesap ve Kart",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(height: maxheight * 0.05),
              Container(
                // Hesap/Kart içerik kartı
                margin: EdgeInsets.only(
                  bottom: 15,
                ),
                height: maxheight * 0.485,
                width: maxwidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(
                        10,
                      ), // Yuvarlatılmış kenarlar
                ),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    // Her bir kategori için liste öğesi
                    ListTileKategoriler(
                      Icon(
                        Icons
                            .account_balance_wallet_outlined,
                        color: Colors.teal,
                      ),
                      "Hesaplar",
                      maxheight,
                      maxwidth,
                    ),
                    Dividing(
                      maxwidth,
                    ), // Ayırıcı çizgi
                    ListTileKategoriler(
                      Icon(
                        Icons.credit_card,
                        color: Colors.teal,
                      ),
                      "Kartlar",
                      maxheight,
                      maxwidth,
                    ),
                    Dividing(maxwidth),
                    ListTileKategoriler(
                      Icon(
                        Icons.view_stream,
                        color: Colors.teal,
                      ),
                      "Krediler",
                      maxheight,
                      maxwidth,
                    ),
                    Dividing(maxwidth),
                    ListTileKategoriler(
                      Icon(
                        Icons.account_balance,
                        color: Colors.teal,
                      ),
                      "Avans Hesap",
                      maxheight,
                      maxwidth,
                    ),
                    Dividing(maxwidth),
                    ListTileKategoriler(
                      Icon(
                        Icons.umbrella,
                        color: Colors.teal,
                      ),
                      "Sigorta Poliçelerim",
                      maxheight,
                      maxwidth,
                    ),
                    Dividing(maxwidth),
                    ListTileKategoriler(
                      Icon(
                        Icons
                            .insert_drive_file_outlined,
                        color: Colors.teal,
                      ),
                      "Bireysel Emeklilik Sözleşmesi",
                      maxheight,
                      maxwidth,
                    ),
                    Dividing(maxwidth),
                    ListTileKategoriler(
                      Icon(
                        Icons.article_outlined,
                        color: Colors.teal,
                      ),
                      "Çek / Senet",
                      maxheight,
                      maxwidth,
                    ),
                    Dividing(maxwidth),
                    ListTileKategoriler(
                      Icon(
                        Icons.storefront_outlined,
                        color: Colors.teal,
                      ),
                      "Üye İşyeri (POS) İşlemleri",
                      maxheight,
                      maxwidth,
                    ),
                    Dividing(maxwidth),
                    ListTileKategoriler(
                      Icon(
                        Icons.track_changes,
                        color: Colors.teal,
                      ),
                      "Birikim Hedefi",
                      maxheight,
                      maxwidth,
                    ),
                  ],
                ),
              ),
              Container(
                // Benim Bankacım kısmı
                width: maxwidth,
                height: maxheight * 0.06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                      child: SizedBox(
                        height: maxheight * 0.04,
                        child: Image.asset(
                          "images/elmas.png",
                        ), // Sol ikon
                      ),
                    ),
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(
                                    right: 5,
                                  ),
                              child: Text(
                                "Benim Bankacım",
                              ),
                            ),
                            SizedBox(
                              height:
                                  maxheight *
                                  0.02,
                              child: Image.asset(
                                "images/yeni.png",
                              ), // "yeni" etiketi resmi
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Garanti BBVA'da ayrıcalıklısınız.",
                              style: TextStyle(
                                color:
                                    Colors
                                        .black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(), // Boşluk bırakır
                    Padding(
                      padding:
                          const EdgeInsets.only(
                            right: 10,
                          ),
                      child: Icon(
                        Icons.arrow_right,
                      ), // Sağ ok
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Kategori kartı öğesi - tekrar eden yapılar için kullanılır
ListTileKategoriler(
  Icon icon,
  String categoryTitle,
  double maxheight,
  double maxwidth,
) {
  return SizedBox(
    height: maxheight * 0.038,
    width: maxwidth,
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: icon,
          ),
          Text(categoryTitle), // Başlık yazısı
          Spacer(),
          Icon(Icons.arrow_right), // Sağ ok
        ],
      ),
    ),
  );
}

// Ayırıcı çizgi fonksiyonu
Dividing(double maxwidth) {
  return Divider(
    thickness: 1,
    color: Color.fromARGB(
      255,
      237,
      236,
      236,
    ), // Açık gri çizgi
  );
}
