import 'package:flutter/material.dart';
import 'package:garanti_project/basePage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() =>
      _HomePageState();
}

class _HomePageState extends State<Loginpage> {
  //Login kısmına şifre doğrulayabilmek için atadım
  final GlobalKey<FormState> validatorkey =
      GlobalKey<FormState>();
  bool isVisible =
      true; //Giriş yap tusuna basılınca textformfield çıkması için atadım
  @override
  Widget build(BuildContext context) {
    var maxheight =
        MediaQuery.sizeOf(
          context,
        ).height; //Ekranın güncel sayfa yüksekliği
    var maxwidth =
        MediaQuery.sizeOf(
          context,
        ).width; //Ekranın güncel sayfa genişliği
    return Scaffold(
      resizeToAvoidBottomInset:
          false, //Draggable Scrollable sheet varken klavye çıktığında üstünde kalmaması için yaptım.True olursa klavyenin üstüne çıkar
      body: Stack(
        children: [
          Container(
            //Login sayfasındaki resim koymak için yaptım.
            height: maxheight,
            width: maxwidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/Homepage.jpg", //Ekranda gözüken resim
                ),
                fit: BoxFit.fill,
                opacity:
                    0.7, //Opacity değerini düşürürek arka plan resminin orjinali ile aynı olmasını sağladım
                colorFilter: ColorFilter.mode(
                  //Renk filtresi vererek resmin daha koyu olmasını sağladım
                  Colors.black38,
                  BlendMode.darken,
                ),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: maxheight * 0.02,
                ),
                Row(
                  //Garanti BBVA Logo ve Notification
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 12,
                    ), //Oran Vererek ekrandaki yerini ayarladım
                    Container(
                      height: maxheight * 0.14,
                      child: Image.asset(
                        "images/GarantiLogo.png", //Logo
                        fit: BoxFit.fill,
                      ),
                    ),
                    Spacer(
                      flex: 9,
                    ), //Oran vererek bildirim yerini ayarladım
                    CircleAvatar(
                      //Bildirim ikonununa verdim etrafı yuvarlak olsun diye
                      backgroundColor:
                          Colors.black12,
                      radius: 20,
                      child: Icon(
                        Icons
                            .notifications_none_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ), //Ekranın sağ tarafına yapışmasın diye
                  ],
                ),
                SizedBox(
                  //Logo ve profit fotosu arasındaki boşluk
                  height: maxheight * 0.15,
                ),
                Row(
                  //Profil fotosu
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Container(
                      //Profil fotosunun etrafındaki beyaz çember için verdim
                      height: maxheight * 0.07,
                      width: maxwidth * 0.15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Colors.white38,
                        ),
                        borderRadius:
                            BorderRadius.circular(
                              //Yuvarlak olması için çemberin
                              100,
                            ),
                        image: DecorationImage(
                          image: AssetImage(
                            "images/profilePhoto.jpg", //Profil fotosu
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  //Foto ile kullanıcının ismi arasındaki boşluk
                  height: maxheight * 0.02,
                ),
                Row(
                  //İsim soyisim yazısı
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Text(
                      "Efe Gerek",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight:
                            FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  //Kullanıcı ismi ile button arasındaki boşluk
                  height: maxheight * 0.02,
                ),
                Row(
                  //Giriş yap butonu
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                        child: Padding(
                          padding:
                              const EdgeInsets.all(
                                4.0,
                              ),
                          child:
                              isVisible
                                  ? TextButton(
                                    //Giriş yap buttonu için
                                    onPressed: () {
                                      setState(() {
                                        isVisible =
                                            !isVisible; //Üstüne basıldığında kaybolması için
                                      });
                                    },
                                    style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(
                                              10,
                                            ),
                                      ),
                                      backgroundColor:
                                          Colors
                                              .white,
                                    ),
                                    child: Text(
                                      "Giriş Yap",
                                      style: TextStyle(
                                        color:
                                            const Color.fromARGB(
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
                                    //Forma alarak validate ediyorum şifrenin doğruluğunu
                                    key:
                                        validatorkey,
                                    child: TextFormField(
                                      //Çıkan textformfield giriş yapa basılınca
                                      maxLength:
                                          6, //Maks uzunluk için
                                      validator: (
                                        //Şifrenin en az 6 basamaklı ve doğru olması için
                                        value,
                                      ) {
                                        if (value!
                                                .length <
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
                                        setState(() {
                                          isVisible =
                                              !isVisible;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        hintText:
                                            "• • • • • •", //6 haneli bir şifre istediğimizi belli etmek için
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
                                            Colors
                                                .white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(
                                                10,
                                              ),
                                        ),
                                        suffixIcon: GestureDetector(
                                          //Yeşil ikona basınca validate edip doğru ise uygulamaya girmek için
                                          onTap: () {
                                            if (validatorkey
                                                .currentState!
                                                .validate()) {
                                              setState(() {
                                                Navigator.pushReplacement(
                                                  //Bu sayfaya tekrar dönmeyeceğimiz için dönüş imkanı vermiyoruz
                                                  context,
                                                  MaterialPageRoute(
                                                    builder:
                                                        (
                                                          context,
                                                        ) =>
                                                            BasePage(), //Anasayfaya gidiyoruz
                                                  ),
                                                );
                                              });
                                            }
                                          },
                                          child: Icon(
                                            //sağ gösterin yeşil ikon textformfieldda
                                            Icons
                                                .arrow_right_alt_outlined,
                                            size:
                                                40,
                                            color:
                                                Colors.teal,
                                          ),
                                        ),
                                      ),
                                      obscureText: //Yazılan sayıların gözükmemesi için ekranda
                                          true,
                                      keyboardType: //Klavyenin sayı klavyesi olması için
                                          TextInputType
                                              .number,
                                    ),
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  //Giriş yap buttonu altı boşluk
                  height: maxheight * 0.02,
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
                          color: Colors.white,
                          fontWeight:
                              FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Yardım Merkezi",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight:
                              FontWeight.bold,
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
            initialChildSize:
                0.25, //ekran açıldığındaki boyutu
            minChildSize:
                0.1, //minimum ekrandaki boyutu
            maxChildSize:
                0.6, //Maks ekrandaki boyutu
            builder: (context, sc) {
              return Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                    //Containerın rengi
                    255,
                    237,
                    236,
                    236,
                  ),
                  borderRadius: //Container ın üstündeki kıvrımlar
                      BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                    ), //Container ın gölgesi
                  ],
                ),
                child: SingleChildScrollView(
                  //Aşağı doğru scroll özelliği
                  controller: sc,
                  child: Column(
                    children: [
                      SizedBox(
                        height: maxheight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .center,
                        children: [
                          Icon(
                            //Üstteki ufak ikon
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
                              bottom: 20,
                            ),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceAround,
                          children: [
                            Container(
                              //Fast işlemleri
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .center,
                                children: [
                                  CircleAvatar(
                                    child: Text(
                                      "fas₺",
                                      style: TextStyle(
                                        color:
                                            Colors
                                                .white,
                                      ),
                                    ),
                                    radius: 30,
                                    backgroundColor:
                                        Colors
                                            .teal,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.all(
                                          8.0,
                                        ),
                                    child: Text(
                                      "Fast İşlemleri",
                                      textAlign:
                                          TextAlign
                                              .center,
                                      style: TextStyle(
                                        fontWeight:
                                            FontWeight
                                                .bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              height:
                                  maxheight *
                                  0.15,
                              width:
                                  maxwidth * 0.23,
                              decoration:
                                  BoxDecoration(
                                    color:
                                        Colors
                                            .white,
                                    borderRadius:
                                        BorderRadius.circular(
                                          10,
                                        ),
                                  ),
                            ),
                            Container(
                              //Para çek / yatır
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Colors
                                            .teal,
                                    child: Icon(
                                      Icons
                                          .money_rounded,
                                      color:
                                          Colors
                                              .white,
                                    ),
                                    radius: 30,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.all(
                                          8,
                                        ),
                                    child: Text(
                                      "Para\nÇek / Yatır",
                                      textAlign:
                                          TextAlign
                                              .center,
                                      style: TextStyle(
                                        fontWeight:
                                            FontWeight
                                                .bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              height:
                                  maxheight *
                                  0.15,
                              width:
                                  maxwidth * 0.23,
                              decoration:
                                  BoxDecoration(
                                    color:
                                        Colors
                                            .white,
                                    borderRadius:
                                        BorderRadius.circular(
                                          10,
                                        ),
                                  ),
                            ),
                            Container(
                              //Mobilden Öde
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Colors
                                            .teal,
                                    child: Icon(
                                      Icons
                                          .mobile_friendly,
                                      color:
                                          Colors
                                              .white,
                                    ),
                                    radius: 30,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.all(
                                          8,
                                        ),
                                    child: Text(
                                      "Mobilden Öde",
                                      textAlign:
                                          TextAlign
                                              .center,
                                      style: TextStyle(
                                        fontWeight:
                                            FontWeight
                                                .bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              height:
                                  maxheight *
                                  0.15,
                              width:
                                  maxwidth * 0.23,
                              decoration:
                                  BoxDecoration(
                                    color:
                                        Colors
                                            .white,
                                    borderRadius:
                                        BorderRadius.circular(
                                          10,
                                        ),
                                  ),
                            ),
                            Container(
                              //Hesaplama yap
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Colors
                                            .teal,
                                    child: Icon(
                                      Icons
                                          .calculate,
                                      color:
                                          Colors
                                              .white,
                                    ),
                                    radius: 30,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.all(
                                          8,
                                        ),
                                    child: Text(
                                      "Hesaplama Yap",
                                      textAlign:
                                          TextAlign
                                              .center,
                                      style: TextStyle(
                                        fontWeight:
                                            FontWeight
                                                .bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              height:
                                  maxheight *
                                  0.15,
                              width:
                                  maxwidth * 0.23,
                              decoration:
                                  BoxDecoration(
                                    color:
                                        Colors
                                            .white,
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
                        //Solunda kilit logosu olan container
                        margin:
                            EdgeInsets.symmetric(
                              horizontal: 14,
                            ),
                        height: maxheight * 0.17,
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
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(
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
                                          BoxFit
                                              .cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment
                                          .start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(
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
                                      padding:
                                          const EdgeInsets.symmetric(
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
                                          borderRadius:
                                              BorderRadius.circular(
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
                        //Iban ve Tr Karekod Container
                        margin: EdgeInsets.only(
                          top: 20,
                          left: 14,
                          right: 14,
                        ),
                        height: maxheight * 0.05,
                        width: maxwidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(
                                10,
                              ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width:
                                  maxwidth * 0.03,
                            ),
                            Icon(
                              Icons.qr_code,
                              color: Colors.teal,
                              size: 30,
                            ),
                            SizedBox(
                              width:
                                  maxwidth * 0.03,
                            ),
                            Text(
                              "IBAN ve TR Karekod Görüntüle",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_right,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //Piyasa bilgileri container
                        margin: EdgeInsets.only(
                          top: 20,
                          left: 14,
                          right: 14,
                        ),
                        height: maxheight * 0.39,
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
                                Padding(
                                  padding:
                                      const EdgeInsets.all(
                                        15.0,
                                      ),
                                  child: Text(
                                    "Piyasa Bilgileri",
                                    style: TextStyle(
                                      fontWeight:
                                          FontWeight
                                              .bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                CircleAvatar(
                                  child: Text(
                                    '\$',
                                    style: TextStyle(
                                      color:
                                          Colors
                                              .white,
                                    ),
                                  ),
                                  backgroundColor:
                                      const Color.fromARGB(
                                        255,
                                        1,
                                        57,
                                        103,
                                      ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "USD/TL",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight:
                                        FontWeight
                                            .bold,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "40,6790",
                                  style: TextStyle(
                                    fontWeight:
                                        FontWeight
                                            .bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 35,
                                ),
                                Text(
                                  "% 0,08",
                                  style: TextStyle(
                                    color:
                                        Colors
                                            .green,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons
                                      .arrow_drop_up,
                                  color:
                                      Colors
                                          .green,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(
                                    top: 10,
                                  ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  CircleAvatar(
                                    child: Text(
                                      '€',
                                      style: TextStyle(
                                        color:
                                            Colors
                                                .white,
                                      ),
                                    ),
                                    backgroundColor:
                                        const Color.fromARGB(
                                          255,
                                          1,
                                          57,
                                          103,
                                        ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "EUR/TL",
                                    style: TextStyle(
                                      fontSize:
                                          16,
                                      fontWeight:
                                          FontWeight
                                              .bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "47,8770",
                                    style: TextStyle(
                                      fontWeight:
                                          FontWeight
                                              .bold,
                                      fontSize:
                                          16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "% 0,69",
                                    style: TextStyle(
                                      color:
                                          Colors
                                              .green,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons
                                        .arrow_drop_up,
                                    color:
                                        Colors
                                            .green,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(
                                    top: 10,
                                  ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  CircleAvatar(
                                    child: Text(
                                      'ALT',
                                      style: TextStyle(
                                        fontSize:
                                            12,
                                        color:
                                            Colors
                                                .white,
                                      ),
                                    ),
                                    backgroundColor:
                                        const Color.fromARGB(
                                          255,
                                          1,
                                          57,
                                          103,
                                        ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "ALT/TL",
                                    style: TextStyle(
                                      fontSize:
                                          16,
                                      fontWeight:
                                          FontWeight
                                              .bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "4.339,0980",
                                    style: TextStyle(
                                      fontWeight:
                                          FontWeight
                                              .bold,
                                      fontSize:
                                          16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "% 0,77",
                                    style: TextStyle(
                                      color:
                                          Colors
                                              .green,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons
                                        .arrow_drop_up,
                                    color:
                                        Colors
                                            .green,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(
                                    top: 10,
                                    bottom: 3,
                                  ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  CircleAvatar(
                                    child: Text(
                                      'G',
                                      style: TextStyle(
                                        fontSize:
                                            13,
                                        color:
                                            Colors
                                                .white,
                                      ),
                                    ),
                                    backgroundColor:
                                        const Color.fromARGB(
                                          255,
                                          1,
                                          57,
                                          103,
                                        ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "GMS/TL",
                                    style: TextStyle(
                                      fontSize:
                                          16,
                                      fontWeight:
                                          FontWeight
                                              .bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "47,0650",
                                    style: TextStyle(
                                      fontWeight:
                                          FontWeight
                                              .bold,
                                      fontSize:
                                          16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "% 0,11",
                                    style: TextStyle(
                                      color:
                                          Colors
                                              .green,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons
                                        .arrow_drop_up,
                                    color:
                                        Colors
                                            .green,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(
                                    top: 10,
                                    bottom: 3,
                                  ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  CircleAvatar(
                                    child: Icon(
                                      Icons
                                          .list_alt,
                                      color:
                                          Colors
                                              .white,
                                    ),
                                    backgroundColor:
                                        Colors
                                            .teal,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Takip Listesi",
                                    style: TextStyle(
                                      fontSize:
                                          16,
                                      fontWeight:
                                          FontWeight
                                              .bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons
                                        .arrow_right,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding:
                                  const EdgeInsets.only(
                                    top: 10,
                                  ),
                              child: Row(
                                children: [
                                  Card(
                                    color:
                                        Colors
                                            .white,
                                    margin:
                                        EdgeInsets.symmetric(
                                          horizontal:
                                              15,
                                        ),
                                    elevation: 0,
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
                                            Colors
                                                .teal,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(
                                            10,
                                          ),
                                    ),
                                  ),
                                  Card(
                                    color:
                                        Colors
                                            .white,
                                    margin:
                                        EdgeInsets.symmetric(
                                          horizontal:
                                              15,
                                        ),
                                    elevation: 0,
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
                                            Colors
                                                .teal,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(
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
                        //En altta bulanan resim Container
                        padding:
                            const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 14,
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
                        //English yazısı
                        mainAxisAlignment:
                            MainAxisAlignment
                                .center,
                        children: [
                          Text(
                            "English",
                            style: TextStyle(
                              color: Colors.teal,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: maxheight * 0.03,
                      ), //Alt tarafta ufak ir boşluk olsun diye
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
