import 'package:flutter/material.dart';
import 'package:garanti_project/views/bills.dart'; // Fatura sayfasına geçiş için

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Ekran boyut bilgileri
    double maxheight =
        MediaQuery.of(context).size.height;
    double maxwidth =
        MediaQuery.of(context).size.width;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Üstte scroll ile küçülen app bar
          SliverAppBar(
            expandedHeight:
                maxheight *
                0.11, // App bar yüksekliği
            centerTitle: true,
            pinned:
                true, // Scroll edilince yukarıda sabit kalır
            leading: IconButton(
              onPressed:
                  () => Navigator.pop(
                    context,
                  ), // Geri tuşu
              icon: Icon(
                Icons.arrow_back,
                color: Colors.teal,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode:
                  CollapseMode
                      .pin, // Scroll edilince yapışır
              background: Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Ödemeler", // Sayfa başlığı
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Scroll edilebilir içerik
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: maxheight * 0.04,
                    ), // Üst boşluk
                    Container(
                      height:
                          maxheight *
                          0.96, // Liste yüksekliği
                      width: maxwidth,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(
                              10,
                            ), // Köşeleri yuvarla
                      ),
                      child: Column(
                        children: [
                          // Fatura seçeneği - tıklanınca Bills sayfasına gider
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          Bills(),
                                ),
                              );
                            },
                            child: SizedBox(
                              height:
                                  maxheight *
                                  0.04,
                              width: maxwidth,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(
                                      horizontal:
                                          10,
                                    ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(
                                        horizontal:
                                            10,
                                        vertical:
                                            8,
                                      ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Fatura", // Ödeme kategorisi
                                        style: TextStyle(
                                          fontSize:
                                              15,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons
                                            .arrow_right,
                                      ), // Sağ ok
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Dividing(
                            maxwidth,
                          ), // Ayırıcı çizgi
                          ListTileKategoriler(
                            "Kredi Kartı Borcu Ödeme",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "Kredi Kartı Taksit Ödeme",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "Garanti Pay",
                            maxheight,
                            maxwidth,
                            categoryImage:
                                "images/yeni.png",
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "Şans Oyunları",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "GSM TL / Paket Yükleme",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "Vergi / Para Cezası",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "HGS İşlemleri",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "Ulaşım Kartları",
                            maxheight,
                            maxwidth,
                            categoryImage:
                                "images/yeni.png",
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "SGK İşlemleri",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "Güvenli Alım Satım",
                            maxheight,
                            maxwidth,
                            categoryImage:
                                "images/yeni.png",
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "Geciken Ürünler",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "Üniversite",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "Hesaptan Öde",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "App Store & iTunes",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "Senet İşlemleri",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileKategoriler(
                            "Bağış",
                            maxheight,
                            maxwidth,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: maxheight * 0.05,
                    ), // Alt boşluk
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

// Ödeme kategorileri için liste elemanı
ListTileKategoriler(
  String categoryTitle, // Başlık
  double maxheight,
  double maxwidth, {
  String?
  categoryImage, // Sağda küçük resim (örn: "yeni" ikonu)
}) {
  return SizedBox(
    height: maxheight * 0.04,
    width: maxwidth,
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        child: Row(
          children: [
            Text(
              categoryTitle,
              style: TextStyle(fontSize: 15),
            ),
            categoryImage != null
                ? SizedBox(
                  width: maxwidth * 0.01,
                ) // Resim varsa boşluk bırak
                : Container(),
            categoryImage != null
                ? SizedBox(
                  height: maxheight * 0.025,
                  child: Image.asset(
                    categoryImage,
                  ), // "yeni" resmi gibi küçük simge
                )
                : SizedBox(),
            Spacer(),
            Icon(
              Icons.arrow_right,
            ), // Sağ ok simgesi
          ],
        ),
      ),
    ),
  );
}

// Aralara çizgi ekleyen fonksiyon
Dividing(double maxwidth) {
  return Divider(
    thickness: 1,
    color: const Color.fromARGB(
      255,
      237,
      236,
      236,
    ), // Açık gri çizgi
  );
}
