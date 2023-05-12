import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constent.dart';

Container lastIconContainer(
    {required Size size, required String Head, required String Subtitle}) {
  return Container(
    height: size.height * 0.09,
    width: size.width * double.infinity,
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: blue50, borderRadius: BorderRadius.circular(30)),
          height: size.height * 0.08,
          width: size.width * 0.16,
          child: const Icon(
            Icons.military_tech_outlined,
            size: 35,
            color: ogBlue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: size.height * 0.3,
            width: size.width * 0.3,
            child: Text(
              Head,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: size.height * 0.3,
            child: Center(
              child: Text(
                Subtitle,
                style: const TextStyle(fontSize: 15),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Container moreButtons(
    {required Size size, required double width, required String texts}) {
  return Container(
    color: mOrenge,
    height: size.height * 0.05,
    child: Center(
      child: Text(
        texts,
        style: const TextStyle(
            fontWeight: FontWeight.w400, color: mWhite, fontSize: 17),
      ),
    ),
  );
}

TrendingArticlesDividerContainer({required String Discription}) {
  return Padding(
    padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
    child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Divider(
            height: 3,
            thickness: 1,
            color: mGrey,
          ),
        ),
        Text(
          Discription,
          style: const TextStyle(fontSize: 15),
          maxLines: 2,
        )
      ],
    ),
  );
}

BulletMainHead({required String Bullet}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Text(
      Bullet,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    ),
  );
}

Container BulletinTextContainer(
    // ignore: non_constant_identifier_names
    {required Size size,
    required String Head,
    required String Subtitle}) {
  return Container(
    height: size.height * 0.2,
    width: size.width * double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: mBlue,
          height: size.height * 0.012,
          width: size.width * 0.3,
        ),
        Text(
          Head,
          maxLines: 2,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          Subtitle,
          maxLines: 3,
          style: const TextStyle(fontSize: 16),
        ),
        const Text(
          "Read More",
          style: TextStyle(decoration: TextDecoration.underline, color: ogBlue),
        )
      ],
    ),
  );
}
