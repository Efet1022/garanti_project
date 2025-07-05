import 'package:flutter/material.dart';
import 'package:garanti_project/homepage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() =>
      _HomePageState();
}

class _HomePageState
    extends State<Loginpage> {
  final GlobalKey<FormState>
  validatorkey = GlobalKey<FormState>();
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    var maxheight =
        MediaQuery.sizeOf(
          context,
        ).height;
    var maxwidth =
        MediaQuery.sizeOf(
          context,
        ).width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: maxheight,
            width: maxwidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/Homepage.jpg",
                ),
                fit: BoxFit.fill,
                opacity: 0.7,
                colorFilter:
                    ColorFilter.mode(
                      Colors.black38,
                      BlendMode.darken,
                    ),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height:
                      maxheight * 0.02,
                ),
                Row(
                  //Garanti BBVA Logo ve Notification
                  mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                  children: [
                    Spacer(flex: 12),
                    Container(
                      height:
                          maxheight *
                          0.14,
                      child: Image.asset(
                        "images/GarantiLogo.png",
                        fit:
                            BoxFit.fill,
                      ),
                    ),
                    Spacer(flex: 9),
                    CircleAvatar(
                      backgroundColor:
                          Colors
                              .black12,
                      radius: 20,
                      child: Icon(
                        Icons
                            .notifications_none_rounded,
                        color:
                            Colors
                                .white,
                      ),
                    ),
                    Spacer(flex: 1),
                  ],
                ),
                SizedBox(
                  height:
                      maxheight * 0.15,
                ),
                Row(
                  //Profil fotosu
                  mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                  children: [
                    Container(
                      height:
                          maxheight *
                          0.07,
                      width:
                          maxwidth *
                          0.15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color:
                              Colors
                                  .white38,
                        ),
                        borderRadius:
                            BorderRadius.circular(
                              100,
                            ),
                        image: DecorationImage(
                          image: AssetImage(
                            "images/profilePhoto.jpg",
                          ),
                          fit:
                              BoxFit
                                  .cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height:
                      maxheight * 0.02,
                ),
                Row(
                  //İsim soyisim yazısı
                  mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                  children: [
                    Text(
                      "Efe Gerek",
                      style: TextStyle(
                        color:
                            Colors
                                .white,
                        fontWeight:
                            FontWeight
                                .bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height:
                      maxheight * 0.02,
                ),
                Row(
                  //Giriş yap butonu
                  mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(
                              horizontal:
                                  15,
                            ),
                        child: Padding(
                          padding:
                              const EdgeInsets.all(
                                4.0,
                              ),
                          child:
                              isVisible
                                  ? TextButton(
                                    onPressed: () {
                                      setState(
                                        () {
                                          isVisible =
                                              !isVisible;
                                        },
                                      );
                                    },
                                    style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                      backgroundColor:
                                          Colors.white,
                                    ),
                                    child: Text(
                                      "Giriş Yap",
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                          255,
                                          7,
                                          179,
                                          159,
                                        ),
                                        fontSize:
                                            16,
                                      ),
                                    ),
                                  )
                                  : Form(
                                    key:
                                        validatorkey,
                                    child: TextFormField(
                                      maxLength:
                                          6,
                                      validator: (
                                        value,
                                      ) {
                                        if (value!.length <
                                            6) {
                                          return "En az 6 sayı girmelisiniz";
                                        }
                                        if (value !=
                                            "123456") {
                                          return "Şifre Hatalı";
                                        }
                                      },
                                      onTapOutside: (
                                        event,
                                      ) {
                                        setState(
                                          () {
                                            isVisible =
                                                !isVisible;
                                          },
                                        );
                                      },
                                      decoration: InputDecoration(
                                        hintText:
                                            "• • • • • •",
                                        hintStyle: TextStyle(
                                          wordSpacing:
                                              20,
                                          fontSize:
                                              15,
                                          fontWeight:
                                              FontWeight.bold,
                                          color:
                                              Colors.grey,
                                        ),
                                        filled:
                                            true,
                                        fillColor:
                                            Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            if (validatorkey.currentState!.validate()) {
                                              setState(
                                                () {
                                                  Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder:
                                                          (
                                                            context,
                                                          ) =>
                                                              HomePage(),
                                                    ),
                                                  );
                                                },
                                              );
                                            }
                                          },
                                          child: Icon(
                                            Icons.arrow_right_alt_outlined,
                                            size:
                                                40,
                                            color:
                                                Colors.teal,
                                          ),
                                        ),
                                      ),
                                      obscureText:
                                          true,
                                      keyboardType:
                                          TextInputType.number,
                                    ),
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height:
                      maxheight * 0.02,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                    children: [
                      Text(
                        "Farklı Kullanıcı Girişi",
                        style: TextStyle(
                          color:
                              Colors
                                  .white,
                          fontWeight:
                              FontWeight
                                  .bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Yardım Merkezi",
                        style: TextStyle(
                          color:
                              Colors
                                  .white,
                          fontWeight:
                              FontWeight
                                  .bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            //Draggable Scrollable Sheet
            initialChildSize: 0.25,
            minChildSize: 0.1,
            maxChildSize: 0.6,
            builder: (context, sc) {
              return Container(
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(
                        255,
                        237,
                        236,
                        236,
                      ),
                  borderRadius:
                      BorderRadius.vertical(
                        top:
                            Radius.circular(
                              20,
                            ),
                      ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  controller: sc,
                  child: Column(
                    children: [
                      SizedBox(
                        height:
                            maxheight *
                            0.01,
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .center,
                        children: [
                          Icon(
                            Icons
                                .keyboard_arrow_up,
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(
                              top: 30,
                              left: 14,
                              right: 14,
                              bottom:
                                  20,
                            ),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceAround,
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    child: Text(
                                      "fas₺",
                                      style: TextStyle(
                                        color:
                                            Colors.white,
                                      ),
                                    ),
                                    radius:
                                        30,
                                    backgroundColor:
                                        Colors.teal,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(
                                      8.0,
                                    ),
                                    child: Text(
                                      "Fast İşlemleri",
                                      textAlign:
                                          TextAlign.center,
                                      style: TextStyle(
                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              height:
                                  maxheight *
                                  0.15,
                              width:
                                  maxwidth *
                                  0.23,
                              decoration: BoxDecoration(
                                color:
                                    Colors.white,
                                borderRadius:
                                    BorderRadius.circular(
                                      10,
                                    ),
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Colors.teal,
                                    child: Icon(
                                      Icons.money_rounded,
                                      color:
                                          Colors.white,
                                    ),
                                    radius:
                                        30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(
                                      8,
                                    ),
                                    child: Text(
                                      "Para\nÇek / Yatır",
                                      textAlign:
                                          TextAlign.center,
                                      style: TextStyle(
                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              height:
                                  maxheight *
                                  0.15,
                              width:
                                  maxwidth *
                                  0.23,
                              decoration: BoxDecoration(
                                color:
                                    Colors.white,
                                borderRadius:
                                    BorderRadius.circular(
                                      10,
                                    ),
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Colors.teal,
                                    child: Icon(
                                      Icons.mobile_friendly,
                                      color:
                                          Colors.white,
                                    ),
                                    radius:
                                        30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(
                                      8,
                                    ),
                                    child: Text(
                                      "Mobilden Öde",
                                      textAlign:
                                          TextAlign.center,
                                      style: TextStyle(
                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              height:
                                  maxheight *
                                  0.15,
                              width:
                                  maxwidth *
                                  0.23,
                              decoration: BoxDecoration(
                                color:
                                    Colors.white,
                                borderRadius:
                                    BorderRadius.circular(
                                      10,
                                    ),
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Colors.teal,
                                    child: Icon(
                                      Icons.calculate,
                                      color:
                                          Colors.white,
                                    ),
                                    radius:
                                        30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(
                                      8,
                                    ),
                                    child: Text(
                                      "Hesaplama Yap",
                                      textAlign:
                                          TextAlign.center,
                                      style: TextStyle(
                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              height:
                                  maxheight *
                                  0.15,
                              width:
                                  maxwidth *
                                  0.23,
                              decoration: BoxDecoration(
                                color:
                                    Colors.white,
                                borderRadius:
                                    BorderRadius.circular(
                                      10,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(
                              horizontal:
                                  14,
                            ),
                        height:
                            maxheight *
                            0.17,
                        width: maxwidth,
                        decoration: BoxDecoration(
                          color:
                              Colors
                                  .white,
                          borderRadius:
                              BorderRadius.circular(
                                10,
                              ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal:
                                        10,
                                    vertical:
                                        10,
                                  ),
                                  child: Container(
                                    height:
                                        maxheight *
                                        0.08,
                                    width:
                                        maxwidth *
                                        0.14,

                                    child: Image.asset(
                                      "images/kilitLogo.png",
                                      fit:
                                          BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top:
                                            10,
                                        bottom:
                                            10,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Bakiye ve Limit",
                                            textAlign:
                                                TextAlign.start,
                                            style: TextStyle(
                                              fontSize:
                                                  16,
                                              fontWeight:
                                                  FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Bakiye ve limit gösterimine izin vererek bu \nbilgilerinizi giriş yapmadan \ngörüntüleyebilirsiniz.",
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical:
                                            5,
                                      ),
                                      child: Container(
                                        width:
                                            maxwidth *
                                            0.25,
                                        height:
                                            maxheight *
                                            0.045,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color:
                                                Colors.teal,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          color:
                                              Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Görüntüle",
                                            style: TextStyle(
                                              color:
                                                  Colors.teal,
                                              fontSize:
                                                  15,
                                              fontWeight:
                                                  FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(
                              top: 20,
                              left: 14,
                              right: 14,
                            ),
                        height:
                            maxheight *
                            0.05,
                        width: maxwidth,
                        decoration: BoxDecoration(
                          color:
                              Colors
                                  .white,
                          borderRadius:
                              BorderRadius.circular(
                                10,
                              ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width:
                                  maxwidth *
                                  0.03,
                            ),
                            Icon(
                              Icons
                                  .qr_code,
                              color:
                                  Colors
                                      .teal,
                              size: 30,
                            ),
                            SizedBox(
                              width:
                                  maxwidth *
                                  0.03,
                            ),
                            Text(
                              "IBAN ve TR Karekod Görüntüle",
                              style: TextStyle(
                                fontSize:
                                    16,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons
                                  .arrow_right,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(
                              top: 20,
                              left: 14,
                              right: 14,
                            ),
                        height:
                            maxheight *
                            0.39,
                        width: maxwidth,
                        decoration: BoxDecoration(
                          color:
                              Colors
                                  .white,
                          borderRadius:
                              BorderRadius.circular(
                                10,
                              ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(
                                    15.0,
                                  ),
                                  child: Text(
                                    "Piyasa Bilgileri",
                                    style: TextStyle(
                                      fontWeight:
                                          FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      15,
                                ),
                                CircleAvatar(
                                  child: Text(
                                    '\$',
                                    style: TextStyle(
                                      color:
                                          Colors.white,
                                    ),
                                  ),
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    1,
                                    57,
                                    103,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      15,
                                ),
                                Text(
                                  "USD/TL",
                                  style: TextStyle(
                                    fontSize:
                                        16,
                                    fontWeight:
                                        FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "40,6790",
                                  style: TextStyle(
                                    fontWeight:
                                        FontWeight.bold,
                                    fontSize:
                                        16,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      35,
                                ),
                                Text(
                                  "% 0,08",
                                  style: TextStyle(
                                    color:
                                        Colors.green,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      5,
                                ),
                                Icon(
                                  Icons
                                      .arrow_drop_up,
                                  color:
                                      Colors.green,
                                ),
                                SizedBox(
                                  width:
                                      5,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(
                                    top:
                                        10,
                                  ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width:
                                        15,
                                  ),
                                  CircleAvatar(
                                    child: Text(
                                      '€',
                                      style: TextStyle(
                                        color:
                                            Colors.white,
                                      ),
                                    ),
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      1,
                                      57,
                                      103,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        15,
                                  ),
                                  Text(
                                    "EUR/TL",
                                    style: TextStyle(
                                      fontSize:
                                          16,
                                      fontWeight:
                                          FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "47,8770",
                                    style: TextStyle(
                                      fontWeight:
                                          FontWeight.bold,
                                      fontSize:
                                          16,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        35,
                                  ),
                                  Text(
                                    "% 0,69",
                                    style: TextStyle(
                                      color:
                                          Colors.green,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        5,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_up,
                                    color:
                                        Colors.green,
                                  ),
                                  SizedBox(
                                    width:
                                        5,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(
                                    top:
                                        10,
                                  ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width:
                                        15,
                                  ),
                                  CircleAvatar(
                                    child: Text(
                                      'ALT',
                                      style: TextStyle(
                                        fontSize:
                                            12,
                                        color:
                                            Colors.white,
                                      ),
                                    ),
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      1,
                                      57,
                                      103,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        15,
                                  ),
                                  Text(
                                    "ALT/TL",
                                    style: TextStyle(
                                      fontSize:
                                          16,
                                      fontWeight:
                                          FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "4.339,0980",
                                    style: TextStyle(
                                      fontWeight:
                                          FontWeight.bold,
                                      fontSize:
                                          16,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        35,
                                  ),
                                  Text(
                                    "% 0,77",
                                    style: TextStyle(
                                      color:
                                          Colors.green,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        5,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_up,
                                    color:
                                        Colors.green,
                                  ),
                                  SizedBox(
                                    width:
                                        5,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom:
                                    3,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width:
                                        15,
                                  ),
                                  CircleAvatar(
                                    child: Text(
                                      'G',
                                      style: TextStyle(
                                        fontSize:
                                            13,
                                        color:
                                            Colors.white,
                                      ),
                                    ),
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      1,
                                      57,
                                      103,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        15,
                                  ),
                                  Text(
                                    "GMS/TL",
                                    style: TextStyle(
                                      fontSize:
                                          16,
                                      fontWeight:
                                          FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "47,0650",
                                    style: TextStyle(
                                      fontWeight:
                                          FontWeight.bold,
                                      fontSize:
                                          16,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        35,
                                  ),
                                  Text(
                                    "% 0,11",
                                    style: TextStyle(
                                      color:
                                          Colors.green,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        5,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_up,
                                    color:
                                        Colors.green,
                                  ),
                                  SizedBox(
                                    width:
                                        5,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom:
                                    3,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width:
                                        15,
                                  ),
                                  CircleAvatar(
                                    child: Icon(
                                      Icons.list_alt,
                                      color:
                                          Colors.white,
                                    ),
                                    backgroundColor:
                                        Colors.teal,
                                  ),
                                  SizedBox(
                                    width:
                                        15,
                                  ),
                                  Text(
                                    "Takip Listesi",
                                    style: TextStyle(
                                      fontSize:
                                          16,
                                      fontWeight:
                                          FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_right,
                                  ),
                                  SizedBox(
                                    width:
                                        5,
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding:
                                  const EdgeInsets.only(
                                    top:
                                        10,
                                  ),
                              child: Row(
                                children: [
                                  Card(
                                    color:
                                        Colors.white,
                                    margin: EdgeInsets.symmetric(
                                      horizontal:
                                          15,
                                    ),
                                    elevation:
                                        0,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical:
                                            10,
                                        horizontal:
                                            20,
                                      ),
                                      child: Text(
                                        "Al / Sat",
                                        style: TextStyle(
                                          color:
                                              Colors.teal,
                                        ),
                                      ),
                                    ),

                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color:
                                            Colors.teal,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                    ),
                                  ),
                                  Card(
                                    color:
                                        Colors.white,
                                    margin: EdgeInsets.symmetric(
                                      horizontal:
                                          15,
                                    ),
                                    elevation:
                                        0,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical:
                                            10,
                                        horizontal:
                                            20,
                                      ),
                                      child: Text(
                                        "Döviz Çevirici",
                                        style: TextStyle(
                                          color:
                                              Colors.teal,
                                        ),
                                      ),
                                    ),

                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color:
                                            Colors.teal,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(
                              vertical:
                                  15,
                              horizontal:
                                  14,
                            ),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(
                                10,
                              ),
                          child: Image.asset(
                            "images/harita.png",
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .center,
                        children: [
                          Text(
                            "English",
                            style: TextStyle(
                              color:
                                  Colors
                                      .teal,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
