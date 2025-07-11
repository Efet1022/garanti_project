import 'package:flutter/material.dart';

class PayWithCardNumbers extends StatefulWidget {
  final double maxheight;
  final double maxwidth;
  const PayWithCardNumbers({
    super.key,
    required this.maxheight,
    required this.maxwidth,
  });

  @override
  State<PayWithCardNumbers> createState() =>
      _PayWithCardNumbersState();
}

class _PayWithCardNumbersState
    extends State<PayWithCardNumbers> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10),
          width: widget.maxwidth,
          height: widget.maxheight * 0.07,
          color: Colors.white,
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Text(
                "Kart Tipi",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_right),
              SizedBox(
                width: widget.maxwidth * 0.01,
              ),
            ],
          ),
        ),
        SizedBox(height: widget.maxheight * 0.01),
        Container(
          padding: EdgeInsets.only(left: 10),
          width: widget.maxwidth,
          height: widget.maxheight * 0.07,
          color: Colors.white,
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Text(
                "Hesap",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_right),
              SizedBox(
                width: widget.maxwidth * 0.01,
              ),
            ],
          ),
        ),
        SizedBox(height: widget.maxheight * 0.01),
        Container(
          padding: EdgeInsets.only(left: 10),
          width: widget.maxwidth,
          height: widget.maxheight * 0.07,
          color: Colors.white,
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Text(
                "Kart Numarası",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: widget.maxheight * 0.01),
        Container(
          padding: EdgeInsets.only(left: 10),
          width: widget.maxwidth,
          height: widget.maxheight * 0.07,
          color: Colors.white,
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Text(
                "Tutar",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: widget.maxheight * 0.01),
        Container(
          width: widget.maxwidth,
          height: widget.maxheight * 0.06,
          color: Colors.white,
          child: Row(
            children: [
              Checkbox(
                activeColor: Colors.teal,
                value: check,
                onChanged: (value) {
                  setState(() {
                    check = !check;
                  });
                },
              ),
              Text(
                "Ödeme Kaydı Tanımla",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        SizedBox(height: widget.maxheight * 0.01),
        SizedBox(
          height: widget.maxheight * 0.06,
          width: widget.maxwidth,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal,
              shape: RoundedRectangleBorder(),
            ),
            onPressed: () {},
            child: Text(
              "Devam",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
