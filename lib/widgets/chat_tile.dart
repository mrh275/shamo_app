import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';

class ChatTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 33,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/img/img_shop_logo.png',
                width: 54,
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Good night, This item is on...',
                      style: secondaryTextStyle.copyWith(
                        fontWeight: light,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Text(
                'Now',
                style: secondaryTextStyle.copyWith(
                  fontSize: 10,
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Divider(
            thickness: 1,
            color: Color(0xFF2b2939),
          ),
        ],
      ),
    );
  }
}
