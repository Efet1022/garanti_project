import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Statuspage extends StatelessWidget {
  const Statuspage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      builder:
          (context, child) => Scaffold(
            appBar: AppBar(
              actions: [
                Icon(
                  Icons.search,
                  color: Colors.teal,
                  size: 30.sp,
                ),
                SizedBox(width: 15.w),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      //Durumum başlık
                      children: [
                        Text(
                          "Durumum",
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight:
                                FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      //Başlık ile boşluk
                      height: 30.h,
                    ),
                    Container(
                      //Varlıklar / Borçlar Container tamamı
                      height: 308,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(
                              12,
                            ),
                        child: Column(
                          children: [
                            Container(
                              height: 92.h,
                              width:
                                  double.infinity,
                              child: Row(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .start,
                                children: [
                                  Icon(
                                    Icons
                                        .lock_clock,
                                    color:
                                        Colors
                                            .teal,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                    children: [
                                      Text(
                                        "Varlıklar / Borçlar",
                                        style: TextStyle(
                                          fontSize:
                                              16.sp,
                                          fontWeight:
                                              FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            5.h,
                                      ),
                                      Text(
                                        "Varlıklar",
                                        style: TextStyle(
                                          color:
                                              Colors.black54,
                                        ),
                                      ),
                                      Text(
                                        "Borçlar",
                                        style: TextStyle(
                                          color:
                                              Colors.black54,
                                        ),
                                      ),
                                      Text(
                                        "Net Varlığınız",
                                        style: TextStyle(
                                          color:
                                              Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment
                                            .center,
                                    children: [
                                      Icon(
                                        Icons
                                            .arrow_right,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Dividing(),
                            Container(
                              height: 92.h,
                              width:
                                  double.infinity,
                              child: Row(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .start,
                                children: [
                                  Icon(
                                    Icons
                                        .plus_one,
                                    color:
                                        Colors
                                            .teal,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                    children: [
                                      Text(
                                        "Gelirler / Giderler",
                                        style: TextStyle(
                                          fontSize:
                                              16.sp,
                                          fontWeight:
                                              FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            5.h,
                                      ),
                                      Text(
                                        "Gelir",
                                        style: TextStyle(
                                          color:
                                              Colors.black54,
                                        ),
                                      ),
                                      Text(
                                        "Gider",
                                        style: TextStyle(
                                          color:
                                              Colors.black54,
                                        ),
                                      ),
                                      Text(
                                        "Güncel Durum",
                                        style: TextStyle(
                                          color:
                                              Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment
                                            .center,
                                    children: [
                                      Icon(
                                        Icons
                                            .arrow_right,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Dividing(),
                            Container(
                              height: 68.h,
                              width:
                                  double.infinity,
                              child: Row(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .start,
                                children: [
                                  Icon(
                                    Icons
                                        .date_range,
                                    color:
                                        Colors
                                            .teal,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                    children: [
                                      Text(
                                        "Nakit Akışı / Takvim",
                                        style: TextStyle(
                                          fontSize:
                                              16.sp,
                                          fontWeight:
                                              FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            5.h,
                                      ),
                                      Text(
                                        "Belirlediğiniz zaman aralığı için para akışınızı\ntakip edin",
                                        style: TextStyle(
                                          color:
                                              Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment
                                            .center,
                                    children: [
                                      Icon(
                                        Icons
                                            .arrow_right,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      //Araç evim seyahatim kısmı
                      padding:
                          const EdgeInsets.only(
                            top: 15,
                          ),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                        children: [
                          Container(
                            height: 100.h,
                            width: 130.w,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(
                                    10,
                                  ),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
                              children: [
                                SizedBox(
                                  height: 40.h,

                                  child: Image.asset(
                                    "images/araba.png",
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text("Aracım"),
                              ],
                            ),
                          ),
                          Container(
                            height: 100.h,
                            width: 130.w,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(
                                    10,
                                  ),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
                              children: [
                                SizedBox(
                                  height: 40.h,

                                  child: Image.asset(
                                    "images/ev.png",
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text("Evim"),
                              ],
                            ),
                          ),
                          Container(
                            height: 100.h,
                            width: 130.w,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(
                                    10,
                                  ),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
                              children: [
                                SizedBox(
                                  height: 40.h,

                                  child: Image.asset(
                                    "images/bavul.png",
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text("Seyahatim"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      //Dijital abonelik ve Ekolojik durum kısmı fazladan container boşluk vermek için
                      padding:
                          const EdgeInsets.only(
                            top: 5,
                          ),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                        children: [
                          Container(
                            height: 100.h,
                            width: 130.w,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(
                                    10,
                                  ),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
                              children: [
                                SizedBox(
                                  height: 40.h,

                                  child: Image.asset(
                                    "images/youtube.png",
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "Dijital Aboneliklerim",
                                  textAlign:
                                      TextAlign
                                          .center,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100.h,
                            width: 130.w,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(
                                    10,
                                  ),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
                              children: [
                                SizedBox(
                                  height: 40.h,
                                  child: Image.asset(
                                    "images/yaprak.png",
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "Ekolojik\nDurumum",
                                  textAlign:
                                      TextAlign
                                          .center,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100.h,
                            width: 130.w,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      //Finansal sağlık yazısı
                      padding:
                          const EdgeInsets.only(
                            top: 15,
                          ),
                      child: Row(
                        children: [
                          Text(
                            "Finansal Sağlık İpuçları",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight:
                                  FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      //Finansal sağlık resmi ve alttaki yazısı
                      padding:
                          const EdgeInsets.only(
                            top: 10,
                          ),
                      child: Container(
                        height: 150,
                        width: double.infinity,
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
                              height: 100.h,
                              child: Image.asset(
                                "images/kalp.png",
                              ),
                            ),
                            Text(
                              "Sizin için finansal sağlık ipuçları hazırlamaya\ndevam ediyoruz.",
                              style: TextStyle(
                                color:
                                    Colors
                                        .black54,
                              ),
                              textAlign:
                                  TextAlign
                                      .center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      //Planlar yazısı
                      padding:
                          const EdgeInsets.only(
                            top: 10,
                          ),
                      child: Row(
                        children: [
                          Text(
                            "Planlar",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight:
                                  FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      //Planlar altındaki container
                      padding:
                          const EdgeInsets.only(
                            top: 5,
                            bottom: 30,
                          ),
                      child: Container(
                        padding: EdgeInsets.all(
                          15,
                        ),
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(
                                10,
                              ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                              children: [
                                Text(
                                  "Harcama Planı ile Kontrol Sizde",
                                  style: TextStyle(
                                    fontWeight:
                                        FontWeight
                                            .w600,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Harcama planı ile giderlerinizi kontrol altına\nalabilir, bütçenizi daha iyi yöneterek tasarruf\nedebilirsiniz.",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color:
                                        Colors
                                            .black54,
                                  ),
                                  textAlign:
                                      TextAlign
                                          .start,
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      "Hemen Oluştur",
                                      style: TextStyle(
                                        color:
                                            Colors
                                                .teal,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Icon(
                                      Icons
                                          .arrow_right_alt,
                                      color:
                                          Colors
                                              .teal,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .start,
                              children: [
                                SizedBox(
                                  height: 75.h,
                                  child: Image.asset(
                                    "images/takvim.png",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}

Dividing() {
  // Boşluk vermek için
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
