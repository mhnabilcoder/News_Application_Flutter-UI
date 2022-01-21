
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart' as Url_Lancher;

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Url_Lancher.launch("https://news.google.com/");
      },
      child: Container(
        height: 410,
        width: double.infinity,
        // color: Colors.black87,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://cdn.mos.cms.futurecdn.net/EABcjzChN8cq4kCe3zsab-1024-80.jpg.webp",),
                      fit: BoxFit.cover,
                  ),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 90,
                  width: double.infinity,
                  child: Text("Apple's 2021 iPad is in stock and on Sale for just \$299 in epic deal at Amazon",
                    style: TextStyle(fontSize: 22,color: Colors.white),)
              ),
            ),
            Container(
              height: 30,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.confirmation_num,color: Colors.white60,),
                        SizedBox(width: 10,),
                        Text("namefield * date",style: TextStyle(color: Colors.white60),),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.favorite_border,color: Colors.white60,),
                      SizedBox(width: 20,),
                      GestureDetector(
                        onTap: () {
                          Share.share("com.example.personal_feed");
                        },
                          child: Icon(Icons.share,color: Colors.white60,)),
                      SizedBox(width: 20,),
                      Icon(Icons.more_vert,color: Colors.white60,),
                      SizedBox(width: 10,),
                    ],
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
