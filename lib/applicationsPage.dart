import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Applicationspage extends StatelessWidget {
  Applicationspage({super.key});

  final PageController controller =
      PageController();
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
            //Başvurular yazısı kaybolsun diye sliver app bar koydum
            expandedHeight: maxheight * 0.11,
            actions: [
              Icon(
                Icons.add_box,
                size: 25,
                color: Colors.teal,
              ),
              SizedBox(width: maxwidth * 0.05),
              Icon(
                Icons.search,
                size: 25,
                color: Colors.teal,
              ),
              SizedBox(width: maxwidth * 0.05),
            ],
            centerTitle: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              //Hareketli bir alan oluşturmak için
              collapseMode: CollapseMode.pin,
              background: Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Başvurular",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            //Sliver tipinde kullanmamak için sadece
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 15,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: maxheight * 0.22,
                      child: PageView(
                        //Sayfaların yana kaymasını sağlıyor
                        controller:
                            controller, //Hangi resimde olduğumuzu kontrol etmek için
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(
                                  10,
                                ),
                            child: Image.asset(
                              "images/application1.png",
                              fit: BoxFit.fill,
                            ),
                          ),

                          Container(
                            margin:
                                EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(
                                    10,
                                  ),
                              child: Image.asset(
                                "images/application2.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(
                                  10,
                                ),
                            child: Image.asset(
                              "images/application3.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: maxheight * 0.01,
                    ),
                    SmoothPageIndicator(
                      //Resimlerin altındaki ufak toplar
                      controller: controller,
                      count: 3,
                      effect: ScrollingDotsEffect(
                        activeDotColor:
                            const Color.fromARGB(
                              255,
                              8,
                              82,
                              210,
                            ),
                        dotHeight: 8,
                        dotWidth: 8,
                      ),
                    ),
                    SizedBox(
                      height: maxheight * 0.04,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        bottom: 20,
                      ),
                      height: maxheight * 0.84,
                      width: maxwidth,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(
                              10,
                            ),
                      ),
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceEvenly,
                        children: [
                          ListTileCategories(
                            Icon(
                              Icons.credit_card,
                              color: Colors.teal,
                            ),
                            "Kart",
                            "Kart başvurusu yapacağım",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileCategories(
                            Icon(
                              Icons.attach_money,
                              color: Colors.teal,
                            ),
                            "Kredi/Avans Hesap",
                            "Nakit ihtiyacımı karşılayacağım",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileCategories(
                            Icon(
                              Icons
                                  .account_balance_wallet,
                              color: Colors.teal,
                            ),
                            "Vadeli Hesap",
                            "Ayrıcalıklı faizlerle kazanacağım",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileCategories(
                            Icon(
                              Icons.show_chart,
                              color: Colors.teal,
                            ),
                            "Hızlı Limit",
                            "Limitimi öğrenip başvuru yapacağım",
                            maxheight,
                            maxwidth,
                            photo:
                                "images/ozel.png",
                          ),
                          Dividing(maxwidth),
                          ListTileCategories(
                            Icon(
                              Icons.trending_up,
                              color: Colors.teal,
                            ),
                            "Yatırım",
                            "Birikimlerimi çeşitlendireceğim",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileCategories(
                            Icon(
                              Icons
                                  .account_balance,
                              color: Colors.teal,
                            ),
                            "Vadesiz Hesap",
                            "Günlük işlemlerim için hesap açacağım",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileCategories(
                            Icon(
                              Icons.receipt_long,
                              color: Colors.teal,
                            ),
                            "Fatura Talimatı",
                            "Faturalarımı otomatik ödeyeceğim",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileCategories(
                            Icon(
                              Icons.shield,
                              color: Colors.teal,
                            ),
                            "Sigorta",
                            "Güvende olmak için sigorta alacağım",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileCategories(
                            Icon(
                              Icons.eco,
                              color: Colors.teal,
                            ),
                            "BES",
                            "Geleceğim için birikim yapacağım",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileCategories(
                            Icon(
                              Icons
                                  .directions_car,
                              color: Colors.teal,
                            ),
                            "HGS",
                            "Gişelerden hızlıca geçeceğim",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileCategories(
                            Icon(
                              Icons.elderly,
                              color: Colors.teal,
                            ),
                            "Emekli Bankacılığı",
                            "Emekli maaşımı taşıyacağım",
                            maxheight,
                            maxwidth,
                          ),
                          Dividing(maxwidth),
                          ListTileCategories(
                            Icon(
                              Icons.point_of_sale,
                              color: Colors.teal,
                            ),
                            "Üye İşyeri (POS) Başvuru",
                            "İşyerim için POS başvurusu yapacağım",
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
          ),
        ],
      ),
    );
  }
}

ListTileCategories(
  Icon icon,
  String title,
  String subtitle,
  double maxheight,
  double maxwidth, {
  String? photo,
}) {
  return SizedBox(
    height: maxheight * 0.052,
    width: maxwidth,
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        children: [
          icon,
          SizedBox(width: maxwidth * 0.02),
          Column(
            mainAxisAlignment:
                MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              SizedBox(height: maxheight * 0.012),
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  photo != null
                      ? SizedBox(
                        width: maxwidth * 0.01,
                      )
                      : SizedBox(),
                  photo != null
                      ? SizedBox(
                        height: maxheight * 0.021,
                        child: Image.asset(photo),
                      )
                      : SizedBox(),
                ],
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.arrow_right),
        ],
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
