import 'package:back_front/BackEnd/Models/Contact.dart';
import 'package:back_front/FrontEnd/Global/MyColor.dart' as colors;
import 'package:back_front/FrontEnd/Global/MyTextStyle.dart';
import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: colors.MyColors.accentColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              "assets/images/search.png",
              color: Colors.white,
              width: 25,
              height: 25,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            height: 40,
            width: 2,
            color: colors.MyColors.disableColor.withOpacity(.3),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: contact().length,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(right: 12, left: 12),
                    child: Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            contact()[index].imageUrl,
                            fit: BoxFit.cover,
                            width: 40,
                            height: 40,
                          ),
                        ),
                        Text(
                          contact()[index].name,
                          style: MyTextStyle.bodyText2,
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
