import 'package:flutter/material.dart';

class ShowMoreWidget extends StatelessWidget {
  final bool isVisible;
  final double maxheight;
  final double maxwidth;
  final VoidCallback
  onToggle; //Callback fonksiyon verdiğimiz için yan sayfada gerçekleşen işlemi burada zorunlu parametre verdim parent widgetta gerçekleşen işlemi burada kullanabiliyorum
  const ShowMoreWidget({
    super.key,
    required this.isVisible,
    required this.maxheight,
    required this.maxwidth,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: maxwidth,
      height: maxheight * 0.35,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.spaceAround,
        children: [
          Categories("Kayıtlı Kişiye Transfer"),
          Dividing(maxwidth),
          Categories(
            "IBAN'a Transfer (Havale ve EFT)",
          ),
          Dividing(maxwidth),
          Categories(
            "Hesap No'ya Transfer (Havale ve EFT)",
          ),
          Dividing(maxwidth),
          Categories("Kendi Hesabıma Transfer"),
          Dividing(maxwidth),
          Categories(
            "Yabancı Para Transferi",
            image: "images/yeni.png",
          ),
          Dividing(maxwidth),
          GestureDetector(
            onTap: onToggle,
            child: SizedBox(
              height: maxheight * 0.04,
              child: Container(
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Text(
                      "Daha Fazla Göster",
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight:
                            FontWeight.w600,
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
    ;
  }
}

Padding Categories(
  String title, {
  String? image,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 10,
    ),
    child: SizedBox(
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 5),
          image == null
              ? SizedBox()
              : SizedBox(
                height: 25,
                child: Image.asset(
                  "images/yeni.png",
                ),
              ),
          Spacer(),
          Icon(Icons.arrow_right_alt),
        ],
      ),
    ),
  );
}

Dividing(double maxwidth) {
  return Divider(
    height: 0,
    thickness: 1,
    color: const Color.fromARGB(
      255,
      237,
      236,
      236,
    ),
  );
}
