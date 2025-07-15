import 'package:flutter/material.dart';
import 'package:garanti_project/widgets/pay_With_Card_Numbers.dart'; // Kart numarasıyla ödeme widget'ı
import 'package:garanti_project/widgets/saved_Card_Transactions.dart'; // Kayıtlı kart işlemleri widget'ı

class CreditCardPayment extends StatefulWidget {
  const CreditCardPayment({super.key});

  @override
  State<CreditCardPayment> createState() =>
      _CreditCardPaymentState();
}

class _CreditCardPaymentState
    extends State<CreditCardPayment> {
  int selectedValue =
      1; // Radio buton seçimi için (varsayılan 1 - kayıtlı kart)

  @override
  Widget build(BuildContext context) {
    double maxheight =
        MediaQuery.of(
          context,
        ).size.height; // Ekran yüksekliği
    double maxwidth =
        MediaQuery.of(
          context,
        ).size.width; // Ekran genişliği

    return Scaffold(
      appBar: AppBar(
        // Geri tuşu
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Geri dön
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.teal,
            size: 30,
          ),
        ),
        actions: [
          Icon(
            // Bilgi ikonu
            Icons.info_outline_rounded,
            color: Colors.teal,
            size: 25,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          children: [
            SizedBox(height: maxheight * 0.02),
            Row(
              children: [
                Text(
                  "Kart Borcu Ödeme", // Sayfa başlığı
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            SizedBox(height: maxheight * 0.03),
            Row(
              children: [
                // Kullanıcıya bilgilendirme metni
                Text(
                  "S&F PLATINUM AMEX Kartınız için bu ay ödemeniz gereken\n"
                  "borcunuz bulunmuyor. Yine de bu kartınıza ödeme yapmak\n"
                  "isterseniz kartınız için belirlenen limitler dahilinde ödemenizi\n"
                  "gerçekleştirebilirsiniz.",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            SizedBox(height: maxheight * 0.02),
            Container(
              // Ödeme tipi seçim alanı (radio buttons)
              height: maxheight * 0.165,
              width: maxwidth,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                    child: Row(
                      children: [
                        Text(
                          "Ödeme Tipi", // Alt başlık
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RadioListTile(
                    radioScaleFactor:
                        1.5, // Radyo boyutu
                    activeColor: Colors.teal,
                    title: Text(
                      "Kayıtlı Kart İşlemleri", // Seçenek 1
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    value: 1,
                    groupValue:
                        selectedValue, // Hangi seçenek seçili
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                  Divider(
                    height: 0,
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  RadioListTile(
                    radioScaleFactor: 1.5,
                    activeColor: Colors.teal,
                    title: Text(
                      "Kart No ile Ödeme", // Seçenek 2
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    value: 2,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: maxheight * 0.02),

            // Seçime göre ilgili widget'ı göster
            if (selectedValue == 1)
              SavedCardTransactions(
                maxheight: maxheight,
                maxwidth: maxwidth,
              ),
            if (selectedValue == 2)
              PayWithCardNumbers(
                maxheight: maxheight,
                maxwidth: maxwidth,
              ),
          ],
        ),
      ),
    );
  }
}
