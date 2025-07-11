import 'package:flutter/material.dart';

class QrCodePayments extends StatelessWidget {
  const QrCodePayments({super.key});

  @override
  Widget build(BuildContext context) {
    double maxheight =
        MediaQuery.of(context).size.height;
    double maxwidth =
        MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "TR Karekod İşlemleri",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: maxheight * 0.025),
            Container(
              width: maxwidth,
              height: maxheight * 0.19,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceEvenly,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                      child: Row(
                        children: [
                          Text(
                            "Para Çek/Yatır",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                    Dividing(maxwidth),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                      child: Row(
                        children: [
                          Text(
                            "TR Karekod ile Öde",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                    Dividing(maxwidth),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                      child: Row(
                        children: [
                          Text(
                            "TR Karekod ile Para Gönder",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                  ],
                ),
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
