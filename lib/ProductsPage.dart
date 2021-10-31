import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loc_fest/CartPage.dart';
import 'package:loc_fest/Style.dart';
class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "mont"
      ),
      home: productsPage(),
      
    );
  }
}

class productsPage extends StatefulWidget {
  const productsPage({Key? key}) : super(key: key);

  @override
  _productsPageState createState() => _productsPageState();
}

class _productsPageState extends State<productsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: pink,
                      image: DecorationImage(
                        image: AssetImage("asset/images/murti3.jpg"),
                        fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: () {  },
                            ),
                            IconButton(
                              icon: Icon(Icons.search, color: Colors.white,), onPressed: () {  },
                            ),
                        ],
                        ),
                        SizedBox(height: 200,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20,),
                                Text("MURTIS FROM SHYAAM", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.star, color: Colors.white,),
                                    Icon(Icons.star, color: Colors.white,),
                                    Icon(Icons.star, color: Colors.white,),
                                    Icon(Icons.star, color: Colors.white,),
                                    Icon(Icons.star, color: Colors.white,),
                                    Text("100 Reviews", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),)

                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(Icons.favorite, color: Colors.red, size: 35,),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15,),
                        Text("It needs a lot of hardwork , I work day and night during these festive season as it is the only source of income for me and my family . It's only the devotion which always appreciate me to put a lot of effort so that I can also celebrate these seasons with my love ones!!", style: TextStyle(
                          color: blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),)


                      ],

                    ),

                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Today's Best Sellers", style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                height: 0.5,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        productsWidget("ganesha.jpeg", "Ganesha Idol"),
                        SizedBox(height: 20,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Other Idols Available", style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                height: 0.5,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              idolWidget("idol1.jpg", "shiva idol", "eco-friendly idol of lord Shiva"),
                              idolWidget("idol2.jpg", "krishna idol", "eco-friendly idol of lord Krishna"),
                              idolWidget("idol3.jpg", "durga idol", "eco-friendly idol of maa Durga"),
                              idolWidget("idol4.jpg", "jaganath idol", "eco-friendly idol of lord Jaganath"),

                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],

              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: openCartPage,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: pink
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add_shopping_cart, color: Colors.white, size: 18,),
                                Text("CART", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 5),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                          color: pink.withOpacity(0.6)
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Container idolWidget(String img, String name, String description)
  {
    return Container(
      width: 120,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/images/$img")
              )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$name", style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700
              ),),
              SizedBox(height: 5,),
              Text("$description", style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.green
              ),),
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: pink)
                ),
                child: Text("+ Cart"),
              )
            ],
          )
        ],
      ),
    );
  }
  Row productsWidget(String img, String name) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/images/$img")
              )
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$name", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),),
              Row(
                children: [
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                ],
              ),
              Text(
                "Murtis of eco-friendly Ganesha!!",
                style: TextStyle(
                  fontSize: 12,
                ),),

            ],
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: pink
            ),
            child: Text("Order Now", style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700
            ),),
          ),
        )
      ],
    );
  }
  void openCartPage()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
  }
}

