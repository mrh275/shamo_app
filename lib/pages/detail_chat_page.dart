import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: bgColor1,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                'assets/img/img_shop_logo_online.png',
                width: 50,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: primaryTextStyle.copyWith(
                        fontWeight: medium, fontSize: 14),
                  ),
                  Text(
                    'Online',
                    style: secondaryTextStyle.copyWith(
                        fontWeight: light, fontSize: 14),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: bgColor4,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'Type here...', hintStyle: subtitleText),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              'assets/img/send_btn.png',
              width: 45,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
    );
  }
}
