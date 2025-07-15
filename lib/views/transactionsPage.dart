import 'package:flutter/material.dart';
import 'package:garanti_project/views/money_Transfer.dart';
import 'package:garanti_project/views/paymentsPage.dart';
import 'package:garanti_project/views/qr_Code_Payments.dart';

class Transactionspage extends StatefulWidget {
  const Transactionspage({super.key});

  @override
  State<Transactionspage> createState() =>
      _TransactionspageState();
}

class _TransactionspageState
    extends State<Transactionspage> {
  @override
  Widget build(BuildContext context) {
    // Ekran boyutları alınıyor
    double maxheight =
        MediaQuery.of(context).size.height;
    double maxwidth =
        MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ), // Genel yatay padding
          child: Column(
            children: [
              Row(
                children: [
                  Spacer(), // Arama ikonunu sağa yaslamak için
                  Icon(
                    Icons.search,
                    color: Colors.teal,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: maxheight * 0.04,
              ), // Üst boşluk
              Row(
                // Sayfa başlığı
                children: [
                  Text(
                    "İşlemler",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: maxheight * 0.05,
              ), // Başlık altı boşluk
              // Ana kutu: işlem seçenekleri
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(
                  bottom: 15,
                ),
                height: maxheight * 0.5,
                width: maxwidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceEvenly,
                  children: [
                    // Para Transferi seçeneği
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    MoneyTransfer(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: maxheight * 0.038,
                        width: maxwidth,
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(
                                      right: 10,
                                    ),
                                child: Icon(
                                  Icons.sync_alt,
                                  color:
                                      Colors.teal,
                                ),
                              ),
                              Text(
                                "Para Transferleri",
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_right,
                              ), // Sağ ok
                            ],
                          ),
                        ),
                      ),
                    ),
                    Dividing(
                      maxwidth,
                    ), // Ayırıcı çizgi
                    // Ödemeler seçeneği
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      PaymentsPage(),
                            ),
                          );
                        });
                      },
                      child: SizedBox(
                        height: maxheight * 0.038,
                        width: maxwidth,
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(
                                      right: 10,
                                    ),
                                child: Icon(
                                  Icons
                                      .account_balance_wallet,
                                  color:
                                      Colors.teal,
                                ),
                              ),
                              Text("Ödemeler"),
                              SizedBox(
                                width:
                                    maxwidth *
                                    0.01,
                              ),
                              SizedBox(
                                height:
                                    maxheight *
                                    0.025,
                                child: Image.asset(
                                  "images/yeni.png",
                                ), // 'Yeni' etiketi
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_right,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Dividing(maxwidth),

                    // Ödeme İste
                    ListTileKategoriler(
                      Icon(
                        Icons.request_page,
                        color: Colors.teal,
                      ),
                      "Ödeme İste",
                      maxheight,
                      maxwidth,
                    ),
                    Dividing(maxwidth),

                    // Döviz ve Kıymetli Madenler
                    ListTileKategoriler(
                      Icon(
                        Icons.attach_money,
                        color: Colors.teal,
                      ),
                      "Döviz ve Kıymetli Madenler",
                      maxheight,
                      maxwidth,
                    ),
                    Dividing(maxwidth),

                    // Yatırımlar
                    ListTileKategoriler(
                      Icon(
                        Icons.trending_up,
                        color: Colors.teal,
                      ),
                      "Yatırımlar",
                      maxheight,
                      maxwidth,
                    ),
                    Dividing(maxwidth),

                    // Kripto Para
                    ListTileKategoriler(
                      Icon(
                        Icons.currency_bitcoin,
                        color: Colors.teal,
                      ),
                      "Kripto Para İşlemleri",
                      maxheight,
                      maxwidth,
                      categoryImage:
                          "images/yeni.png", // 'Yeni' etiketi
                    ),
                    Dividing(maxwidth),

                    // Başvurular
                    ListTileKategoriler(
                      Icon(
                        Icons.add_circle_outline,
                        color: Colors.teal,
                      ),
                      "Başvurular",
                      maxheight,
                      maxwidth,
                    ),
                    Dividing(maxwidth),

                    // TR Karekod İşlemleri
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    QrCodePayments(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: maxheight * 0.038,
                        width: maxwidth,
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(
                                      right: 10,
                                    ),
                                child: Icon(
                                  Icons.qr_code,
                                  color:
                                      Colors.teal,
                                ),
                              ),
                              Text(
                                "TR Karekod İşlemleri",
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_right,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Dividing(maxwidth),

                    // Akıllı İşlemler
                    ListTileKategoriler(
                      Icon(
                        Icons.auto_fix_high,
                        color: Colors.teal,
                      ),
                      "Akıllı İşlemler",
                      maxheight,
                      maxwidth,
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

// İşlem satırlarını oluşturan yardımcı fonksiyon
ListTileKategoriler(
  Icon icon,
  String categoryTitle,
  double maxheight,
  double maxwidth, {
  String?
  categoryImage, // Opsiyonel resim (örneğin 'yeni')
}) {
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
          Text(categoryTitle),
          categoryImage != null
              ? SizedBox(width: maxwidth * 0.01)
              : Container(),
          categoryImage != null
              ? SizedBox(
                height: maxheight * 0.025,
                child: Image.asset(categoryImage),
              )
              : SizedBox(),
          Spacer(),
          Icon(Icons.arrow_right), // Sağ ok
        ],
      ),
    ),
  );
}

// Satırları ayıran çizgi
Dividing(double maxwidth) {
  return Divider(
    thickness: 1,
    color: const Color.fromARGB(
      255,
      237,
      236,
      236,
    ), // Açık gri renk
  );
}
