import 'package:flutter/material.dart';
import 'package:garanti_project/views/bills.dart';
import 'package:garanti_project/views/credit_Card_Payment.dart';
import 'package:garanti_project/views/money_Transfer.dart';
import 'package:garanti_project/views/qr_Code_Payments.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double maxheight =
        MediaQuery.of(context).size.height;
    double maxwidth =
        MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //Scrollable özelliği için
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                child: Row(
                  //En üst sıradaki circle avatar ve ikonlar
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        "images/profilePhoto.jpg",
                      ),
                    ),
                    SizedBox(
                      width: maxwidth * 0.02,
                    ),
                    CircleAvatar(
                      backgroundColor:
                          Colors.white,
                      child: Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor:
                          Colors.white,
                      backgroundImage: AssetImage(
                        "images/ugi.png",
                      ),
                    ),
                    SizedBox(
                      width: maxwidth * 0.02,
                    ),
                    CircleAvatar(
                      backgroundColor:
                          Colors.white,
                      child: Icon(
                        Icons
                            .notifications_active_outlined,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: maxwidth * 0.05),
              Padding(
                padding:
                    const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                child: SingleChildScrollView(
                  //Üst kısımda bulnan containerları sağ sola scroll edebilmek için yaptım
                  scrollDirection:
                      Axis.horizontal,
                  child: Row(
                    children: [
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
                        child: Container(
                          width: maxwidth * 0.21,
                          height:
                              maxheight * 0.13,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(
                                  5,
                                ),
                          ),
                          child: Column(
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .center,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    Colors.teal,
                                child: Icon(
                                  Icons.qr_code,
                                  color:
                                      Colors
                                          .white,
                                ),
                              ),
                              SizedBox(
                                height:
                                    maxheight *
                                    0.015,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(
                                      horizontal:
                                          2,
                                    ),
                                child: Text(
                                  "TR Karekod İşlemleri",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight:
                                        FontWeight
                                            .w600,
                                  ),
                                  textAlign:
                                      TextAlign
                                          .center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: maxwidth * 0.01,
                      ),
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
                        child: Container(
                          width: maxwidth * 0.21,
                          height:
                              maxheight * 0.13,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(
                                  5,
                                ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .start,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor:
                                      Colors.teal,
                                  child: Icon(
                                    Icons.receipt,
                                    color:
                                        Colors
                                            .white,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      maxheight *
                                      0.02,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(
                                        horizontal:
                                            2,
                                      ),
                                  child: Text(
                                    "Fatura",
                                    style: TextStyle(
                                      fontSize:
                                          11,
                                      fontWeight:
                                          FontWeight
                                              .w600,
                                    ),
                                    textAlign:
                                        TextAlign
                                            .center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: maxwidth * 0.01,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      CreditCardPayment(),
                            ),
                          );
                        },
                        child: Container(
                          width: maxwidth * 0.21,
                          height:
                              maxheight * 0.13,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(
                                  5,
                                ),
                          ),
                          child: Column(
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .start,
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    Colors.teal,
                                child: Icon(
                                  Icons
                                      .credit_card,
                                  color:
                                      Colors
                                          .white,
                                ),
                              ),
                              SizedBox(
                                height:
                                    maxheight *
                                    0.02,
                              ),
                              Text(
                                "Kart Borcu Öde",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight:
                                      FontWeight
                                          .w600,
                                ),
                                textAlign:
                                    TextAlign
                                        .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: maxwidth * 0.01,
                      ),
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
                        child: Container(
                          width: maxwidth * 0.21,
                          height:
                              maxheight * 0.13,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(
                                  5,
                                ),
                          ),
                          child: Column(
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .start,
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    Colors.teal,
                                child: Icon(
                                  Icons.sync_alt,
                                  color:
                                      Colors
                                          .white,
                                ),
                              ),
                              SizedBox(
                                height:
                                    maxheight *
                                    0.02,
                              ),
                              Text(
                                "Para Transferi",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight:
                                      FontWeight
                                          .w600,
                                ),
                                textAlign:
                                    TextAlign
                                        .center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: maxwidth * 0.01,
                      ),
                      Container(
                        width: maxwidth * 0.14,
                        height: maxheight * 0.13,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(
                                5,
                              ),
                        ),
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .start,
                          children: [
                            SizedBox(
                              height:
                                  maxheight *
                                  0.012,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape:
                                    BoxShape
                                        .circle,
                                border: Border.all(
                                  width: 1.5,
                                  color:
                                      Colors.teal,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    Colors.white,
                                child: Icon(
                                  Icons
                                      .edit_outlined,
                                  color:
                                      Colors.teal,
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  maxheight *
                                  0.016,
                            ),
                            Text(
                              "Düzenle",
                              style: TextStyle(
                                color:
                                    Colors.teal,
                                fontSize: 11,
                                fontWeight:
                                    FontWeight
                                        .w600,
                              ),
                              textAlign:
                                  TextAlign
                                      .center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: maxwidth * 0.01,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                //Bakiye ve hesap bilgilerini yazan container
                padding:
                    const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: maxwidth,
                  height: maxheight * 0.15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "BAHÇEŞEHİR • 417-6606799",
                            style: TextStyle(
                              color:
                                  Colors.black54,
                            ),
                          ),
                          SizedBox(
                            width:
                                maxwidth * 0.01,
                          ),
                          Icon(
                            Icons.link,
                            color: Colors.teal,
                          ),
                          Spacer(),
                          Text(
                            "Tümü",
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight:
                                  FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Bakiye",
                            style: TextStyle(
                              fontWeight:
                                  FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "27 Haz • Diğer",
                            style: TextStyle(
                              color:
                                  Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Hesap Hareketleri",
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight:
                                  FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: Colors.teal,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                //kartın resminin bulunduğu ve kullanılabilir limitin bulunduğu container
                margin: EdgeInsets.only(
                  bottom: 15,
                ),
                padding: EdgeInsets.all(15),
                height: maxheight * 0.15,
                width: maxwidth * 0.93,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Kullanılabilir Limit",
                          style: TextStyle(
                            fontWeight:
                                FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Tümü",
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight:
                                FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height:
                              maxheight * 0.027,
                          child: Image.asset(
                            "images/kredikarti.png",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Güncel Borç",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "30 Haz • TRENDYOL YEMEK",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Kart Hareketleri",
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight:
                                FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          color: Colors.teal,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                // 7/24 Nakit Avans Containerı
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                height: maxheight * 0.05,
                width: maxwidth,
                decoration: BoxDecoration(
                  color: Color(0xFFD4F0FF),
                  borderRadius:
                      BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.attach_money),
                    Text(
                      "7/24 Nakit Avans kullanabilirsiniz!",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
              Stack(
                //Net varlığım kısmında bulunan resmi container ın üstüne koymak için stack içine aldım
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(15),
                    height: maxheight * 0.1,
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
                        Row(
                          children: [
                            Text(
                              "Net Varlığım",
                              style: TextStyle(
                                fontWeight:
                                    FontWeight
                                        .w600,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons
                                  .arrow_drop_down,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Varlık ve borç dengenizi\ninceleyebilirsiniz",
                              style: TextStyle(
                                fontSize: 12,
                                color:
                                    Colors
                                        .black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: maxwidth * 0.13,
                    top: maxheight * 0.03,
                    child: SizedBox(
                      height: maxheight * 0.08,
                      child: Image.asset(
                        "images/netvarlik.png",
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                //Yan yana 3 container ın oldupu kısım aracım, evim ve seyahatim
                padding:
                    const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceAround,
                  children: [
                    Container(
                      width: maxwidth * 0.3,
                      height: maxheight * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(
                              10,
                            ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: maxwidth * 0.1,
                            child: Image.asset(
                              "images/araba.png",
                            ),
                          ),
                          SizedBox(
                            height:
                                maxheight * 0.015,
                          ),
                          Text("Aracım"),
                        ],
                      ),
                    ),
                    Container(
                      width: maxwidth * 0.3,
                      height: maxheight * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(
                              10,
                            ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: maxwidth * 0.1,
                            child: Image.asset(
                              "images/ev.png",
                            ),
                          ),
                          SizedBox(
                            height:
                                maxheight * 0.015,
                          ),
                          Text("Evim"),
                        ],
                      ),
                    ),
                    Container(
                      width: maxwidth * 0.3,
                      height: maxheight * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(
                              10,
                            ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: maxwidth * 0.1,
                            child: Image.asset(
                              "images/bavul.png",
                            ),
                          ),
                          SizedBox(
                            height:
                                maxheight * 0.015,
                          ),
                          Text("Seyahatim"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                //Dijital Abonelik ve ekolojik durum kısmı. 3 adet container var biri sadece boşluk olması için rengi yok
                padding:
                    const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceAround,
                  children: [
                    Container(
                      width: maxwidth * 0.3,
                      height: maxheight * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(
                              10,
                            ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: maxwidth * 0.1,
                            child: Image.asset(
                              "images/youtube.png",
                            ),
                          ),
                          SizedBox(
                            height:
                                maxheight * 0.01,
                          ),
                          Text(
                            "Dijital Aboneliklerim",
                            textAlign:
                                TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: maxwidth * 0.3,
                      height: maxheight * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(
                              10,
                            ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: maxwidth * 0.1,
                            child: Image.asset(
                              "images/yaprak.png",
                            ),
                          ),
                          SizedBox(
                            height:
                                maxheight * 0.01,
                          ),
                          Text(
                            "Ekolojik\nDurumum",
                            textAlign:
                                TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: maxwidth * 0.3,
                      height: maxheight * 0.1,
                    ),
                  ],
                ),
              ),
              Container(
                //Hatalı giriş kısmı
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                height: maxheight * 0.05,
                width: maxwidth,
                decoration: BoxDecoration(
                  color: Color(0xFFDDE6F0),
                  borderRadius:
                      BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Text(
                      "Son Hatalı Giriş:",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight:
                            FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: maxwidth * 0.01,
                    ),
                    Text(
                      "20/05/2025 15:46",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_drop_down),
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
