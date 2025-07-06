import 'package:flutter/material.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double maxheight =
        MediaQuery.of(context).size.height;
    double maxwidth =
        MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: maxheight * 0.11,
            centerTitle: true,
            pinned: true,
            leading: IconButton(
              onPressed:
                  () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.teal,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,

              background: Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Ödemeler",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: maxheight * 0.01,
                    ),

                    SizedBox(
                      height: maxheight * 0.03,
                    ),
                    Container(
                      height: maxheight * 0.96,
                      width: maxwidth,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(
                              10,
                            ),
                      ),
                      child: Column(
                        children: [
                          ListTileKategoriler(
                            "Fatura",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
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
                            categoryImage:
                                "images/yeni.png",
                            maxheight,
                            maxwidth,
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
                            categoryImage:
                                "images/yeni.png",
                            maxheight,
                            maxwidth,
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
                            categoryImage:
                                "images/yeni.png",
                            maxheight,
                            maxwidth,
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

ListTileKategoriler(
  String categoryTitle,
  double maxheight,
  double maxwidth, {
  String? categoryImage,
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
                ? SizedBox(width: maxwidth * 0.01)
                : Container(),
            categoryImage != null
                ? SizedBox(
                  height: maxheight * 0.025,
                  child: Image.asset(
                    categoryImage,
                  ),
                )
                : SizedBox(),
            Spacer(),
            Icon(Icons.arrow_right),
          ],
        ),
      ),
    ),
  );
}

Dividing(double maxwidth) {
  return Divider(
    thickness: 1,
    color: const Color.fromARGB(
      255,
      237,
      236,
      236,
    ),
  );
}
