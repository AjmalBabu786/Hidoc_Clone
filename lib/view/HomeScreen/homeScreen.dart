import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hidoc/controller/netWorkServese.dart';
import 'package:hidoc/view/HomeScreen/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constent.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _launchUrl({required Uri url}) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    NetWorkService.fetchData();
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          //main
          child: FutureBuilder(
            future: NetWorkService.fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return ElevatedButton(
                    onPressed: () {}, child: const Text("Retry"));
              } else if (snapshot.hasData) {
                final data = snapshot.data;

                if (data == null) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  final articles = data.data.article;
                  final trendingBullet = data.data.trandingBulletin;
                  final trendingArticles = data.data.trandingArticle;
                  final bulletin = data.data.bulletin;
                  final exploreMoreArticle = data.data.exploreArticle;
                  final news = data.data.news;
                  log(
                    articles.articleDescription,
                  );
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              width: double.infinity,
                              height: size.height * 0.12,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color:mBlue,
                                        borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(25),
                                            bottomRight: Radius.circular(10))),
                                    height: size.height * 0.035,
                                    width: size.width * 0.3,
                                    child: const Center(
                                      child: Text(
                                        "hidoc",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: size.height * 0.08,
                                        width: size.width * 0.15,
                                        child: Icon(
                                          Icons.house,
                                          size: size.height * 0.05,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 95),
                                        child: Text(
                                          "ARTICLES",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Container(
                                    height: size.height * 0.075,
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(blurRadius: 2)
                                        ],
                                        color:mWhite,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * 0.80,
                                          child: const Center(
                                            child: Text(
                                              "Critical Care",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ),
                                        const Icon(Icons.arrow_drop_down)
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(blurRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.circular(10),
                                      color: mWhite,
                                    ),
                                    height: size.height * 0.46,
                                    width: size.width * double.infinity,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10)),
                                            color: mGrey,
                                          ),
                                          height: size.height * 0.25,
                                          width: size.width * double.infinity,
                                          child: Icon(
                                            Icons.my_library_books_outlined,
                                            size: size.height * 0.20,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            articles.articleTitle,
                                            maxLines: 2,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 5),
                                          child: Text(
                                            articles.articleDescription,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(10)),
                                              ),
                                              height: size.height * 0.1,
                                              width: size.width * 0.73,
                                              child: Center(
                                                child: GestureDetector(
                                                  onTap: () async {
                                                    final Uri _url = Uri.parse(
                                                        articles.redirectLink);
                                                    log(articles.redirectLink);
                                                    await _launchUrl(url: _url);
                                                  },
                                                  child:  Text(
                                                    'Read full articles to earn points',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        color: mBlue),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10)),
                                                  color: mBlue,
                                                ),
                                                height: size.height * 0.1,
                                                width: size.width * 0.2,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Text("points",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    Text(
                                                        articles.rewardPoints
                                                            .toString(),
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                BulletMainHead(Bullet: "Hidoc Bulletin"),
                                ListView.builder(
                                    physics: const ScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: bulletin.length,
                                    itemBuilder: (context, index) {
                                      return BulletinTextContainer(
                                          size: size,
                                          Head: bulletin[index].articleTitle,
                                          Subtitle: bulletin[index]
                                              .articleDescription);
                                    }),
                                Container(
                                  // height: size.height * 0.9,
                                  decoration: BoxDecoration(
                                      color: LightBlue,
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  width: size.width * double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        BulletMainHead(
                                            Bullet: "Trending Hidoc Bulletin"),
                                        ListView.builder(
                                            shrinkWrap: true,
                                            physics: const ScrollPhysics(),
                                            itemCount: trendingBullet.length,
                                            itemBuilder: (context, index) {
                                              final item =
                                                  trendingBullet[index];
                                              return BulletinTextContainer(
                                                  size: size,
                                                  Head: item.articleTitle,
                                                  Subtitle:
                                                      item.articleDescription);
                                            }),
                                      ],
                                    ),
                                  ),
                                ),
                                Center(
                                    child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Container(
                                    color: mOrenge,
                                    height: size.height * 0.05,
                                    width: size.width * 0.6,
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () async {
                                          final Uri _url = Uri.parse(
                                              bulletin[0].redirectLink);

                                          await _launchUrl(url: _url);
                                        },
                                        child: const Text(
                                          "Read More Bulletins",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: mWhite,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                                Container(
                                  decoration:
                                      BoxDecoration(border: Border.all()),
                                  width: size.width * double.infinity,
                                  child: Column(
                                    children: [
                                      BulletMainHead(Bullet: "Latest Articls"),
                                      ListView.builder(
                                        itemCount: trendingArticles.length,
                                        shrinkWrap: true,
                                        physics: const ScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          return TrendingArticlesDividerContainer(
                                              Discription:
                                                  trendingArticles[index]
                                                      .articleTitle);
                                        },
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  decoration:
                                      BoxDecoration(border: Border.all()),
                                  width: size.width * double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    child: Column(
                                      children: [
                                        BulletMainHead(
                                            Bullet: "Trending Articls"),
                                        ListView.builder(
                                            shrinkWrap: true,
                                            physics: const ScrollPhysics(),
                                            itemCount: trendingArticles.length,
                                            itemBuilder: (context, index) {
                                              return Column(
                                                children: [
                                                  Container(
                                                    color: lightGrey,
                                                    height: size.height * 0.2,
                                                    width: size.width *
                                                        double.infinity,
                                                    child: Image.network(
                                                      trendingArticles[index]
                                                          .articleImg,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            vertical: 10),
                                                    child: Text(
                                                      trendingArticles[index]
                                                          .articleTitle,
                                                      style: const TextStyle(
                                                          fontSize: 15),
                                                      maxLines: 2,
                                                    ),
                                                  ),
                                                ],
                                              );
                                            }),
                                        SizedBox(
                                          height: size.height * 0.1,
                                          width: size.width * double.infinity,
                                          child: ListView.builder(
                                              shrinkWrap: true,
                                              physics: const ScrollPhysics(),
                                              itemCount:
                                                  trendingArticles.length,
                                              itemBuilder: (context, index) {
                                                return Row(
                                                  children: [
                                                    Container(
                                                        color: lightGrey,
                                                        height:
                                                            size.height * 0.1,
                                                        width: size.width * 0.2,
                                                        child: Image.network(
                                                          trendingArticles[
                                                                  index]
                                                              .articleImg,
                                                          fit: BoxFit.fill,
                                                        )),
                                                    Container(
                                                      color: mWhite,
                                                      height: size.height * 0.1,
                                                      width: size.width * 0.60,
                                                      child: Center(
                                                        child: Text(
                                                          trendingArticles[
                                                                  index]
                                                              .articleTitle,
                                                          maxLines: 3,
                                                          style: const TextStyle(
                                                              fontSize: 15),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              }),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration:
                                        BoxDecoration(border: Border.all()),
                                    // height: size.height * 0.25,
                                    width: size.width * double.infinity,
                                    child: Column(
                                      children: [
                                        BulletMainHead(
                                            Bullet: "Explore more in Articles"),
                                        ListView.builder(
                                          itemCount: exploreMoreArticle.length,
                                          shrinkWrap: true,
                                          physics: const ScrollPhysics(),
                                          itemBuilder: (context, index) {
                                            return TrendingArticlesDividerContainer(
                                                Discription:
                                                    exploreMoreArticle[index]
                                                        .articleDescription);
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    final Uri _url = Uri.parse(
                                        exploreMoreArticle[1].redirectLink);

                                    await _launchUrl(url: _url);
                                  },
                                  child: moreButtons(
                                      size: size,
                                      width: size.width * double.infinity,
                                      texts: "Exoplore Hidoc Dr"),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BulletMainHead(
                                        Bullet: "What's more on Hidoc Dr."),
                                  ],
                                ),
                                Container(
                                  color: blue50,
                                  width: size.width * double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BulletMainHead(Bullet: "News"),
                                      ListView.builder(
                                        shrinkWrap: true,
                                        physics: const ScrollPhysics(),
                                        itemCount: news.length,
                                        itemBuilder: (context, index) {
                                          return Column(
                                            children: [
                                              Text(news[index].title),
                                              SizedBox(
                                                height: size.height * 0.16,
                                              ),
                                              Container(
                                                color: customGrey,
                                                height: size.height * 0.27,
                                                width: size.width *
                                                    double.infinity,
                                                child: Image.network(
                                                  news[index].urlToImage,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey)),
                                  height: size.height * 0.2,
                                  width: size.width * double.infinity,
                                  child: Column(
                                    children: [
                                      lastIconContainer(
                                          Head: "Quizzes:",
                                          Subtitle: "Participate & win price",
                                          size: size),
                                      lastIconContainer(
                                          Head: "Medical Calculetors:",
                                          Subtitle: "Participate & win price",
                                          size: size),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.1,
                                ),
                                Container(
                                  color: orenge100,
                                  height: size.height * 0.1,
                                  width: size.width * double.infinity,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: size.height * 0.1,
                                        width: size.width * 0.7,
                                        child: const Center(
                                          child: Text(
                                            "Comprensive gaid Decoding the Nexus Critieria for ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: mAmber,
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        height: size.height * 0.04,
                                        width: size.width * 0.15,
                                        child: Center(
                                            child: GestureDetector(
                                          onTap: () async {
                                            final Uri _url = Uri.parse(
                                                articles.redirectLink);

                                            await _launchUrl(url: _url);
                                          },
                                          child: const Text(
                                            "Visit",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        )),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }

}
