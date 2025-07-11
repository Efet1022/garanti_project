import 'package:flutter/material.dart';

class Bills extends StatelessWidget {
  const Bills({super.key});

  @override
  Widget build(BuildContext context) {
    double maxheight =
        MediaQuery.of(context).size.height;
    double maxwidth =
        MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        //Geri dönüş tuşunu teal rengi yaptım
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.teal,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          children: [
            Row(
              //Fatura Başlık
              children: [
                Text(
                  "Fatura",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: maxheight * 0.02),
            Container(
              //2 adet kategori
              width: maxwidth,
              height: maxheight * 0.18,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Fatura Ödeme",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    subtitle: Text(
                      "Telekomünikasyon, Doğalgaz, Su, Elektrik, Diğer",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                    ),
                  ),
                  Dividing(maxwidth),
                  SizedBox(
                    height: maxheight * 0.04,
                    child: ListTile(
                      title: Text(
                        "Kayıtlı Fatura İşlemleri",
                      ),
                      subtitle: Text(
                        "Yeni fatura talimatınızı oluşturmaya buradan başlayabilirsiniz.",
                      ),
                      trailing: Icon(
                        Icons.arrow_right,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              width: maxwidth,
              height: maxheight * 0.14,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Color(0xffE0E4F3),
                borderRadius:
                    BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Yeni Fatura Talimatı",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight:
                              FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: maxheight * 0.005,
                      ),
                      Text(
                        "Faturalarınızın son ödeme gününü\ndüşünmemek için talimat verebilirsiniz.",
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "Talimat Ver",
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight:
                                  FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width:
                                maxwidth * 0.005,
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: Colors.teal,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: maxwidth * 0.03,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: maxheight * 0.1,
                          child: Image.asset(
                            "images/fatura.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
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
