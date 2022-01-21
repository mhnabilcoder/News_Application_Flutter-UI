import 'package:flutter/material.dart';
import '../components/news.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image(image: AssetImage('assets/babylon.png'),color: Colors.white,),
        ),
        backgroundColor: Colors.black87,
        title: Text("Personal Feed",style: TextStyle(fontSize: 26),),
        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundColor: Colors.orange,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 4,horizontal: 6),
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.white,
                      ),
                      child:  Column(
                        children: [
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Source",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                              Text("View all and Manage"),
                            ],
                          ),
                          SizedBox(height:8,),
                          Container(
                            height: 120,
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      height: 120,
                                      width: 72,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 72,
                                            width: 72,
                                            decoration: BoxDecoration(
                                              color: Color(0xff404040),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text("TechBD"),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      height: 120,
                                      width: 72,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 72,
                                            width: 72,
                                            decoration: BoxDecoration(
                                              color: Color(0xff404040),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text("News24"),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      height: 120,
                                      width: 72,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 72,
                                            width: 72,
                                            decoration: BoxDecoration(
                                              color: Color(0xff404040),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text("Shohag 360"),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      height: 120,
                                      width: 72,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 72,
                                            width: 72,
                                            decoration: BoxDecoration(
                                              color: Color(0xff404040),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text("Cryptocurrencies"),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      height: 120,
                                      width: 72,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 72,
                                            width: 72,
                                            decoration: BoxDecoration(
                                              color: Color(0xff404040),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text("Technical Sagar"),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      height: 120,
                                      width: 72,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 72,
                                            width: 72,
                                            decoration: BoxDecoration(
                                              color: Color(0xff404040),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text("ATC News"),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      height: 120,
                                      width: 72,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 72,
                                            width: 72,
                                            decoration: BoxDecoration(
                                              color: Color(0xff404040),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text("Sam Zone"),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ),
            NewsCard(),
            Divider(
              thickness: 0.4,
              height: 0.4,
              color: Colors.grey,
            ),
            NewsCard(),
            Divider(
              thickness: 0.4,
              height: 0.4,
              color: Colors.grey,
            ),
            NewsCard(),
          ],

        ),
      ),
    );
  }
}
