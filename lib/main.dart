import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loc_fest/Style.dart';
import 'package:loc_fest/ProductsPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'mont'
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOC_FEST", style: TextStyle(
          color: pink,
          fontWeight: FontWeight.w700,
          fontSize: 30
        ),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 27,
            color: Colors.grey,
          ), onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 27,
              color: Colors.grey,
            ), onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("TRENDING TODAY", style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700
                    ),),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(25)),
                                color: pink
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add_shopping_cart,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  Text("CART", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700
                                  ),)
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 5),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                color: pink.withOpacity(0.6)
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                ),
                SizedBox(height: 10,),
                Text("Take a look at what's Trending Today!!", style: TextStyle(
                  color: pink,
                  fontSize: 16,
                ),),
                SizedBox(height: 15,),
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.55,
                        height: 350,
                        padding: EdgeInsets.symmetric(
                            vertical: 40, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: blue,
                            boxShadow: [
                              BoxShadow(spreadRadius: 0,
                                  offset: Offset(0, 10),
                                  blurRadius: 0,
                                  color: blue.withOpacity(0.4))
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "asset/images/diya1.jpg")
                                    )
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text("DIYAS FROM MUKESH", style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                            ),),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ), Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ), Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ), Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Text(" 250 Ratings", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10
                                ))

                              ],
                            ),
                            SizedBox(height: 10,),
                            Text("One of the best KUMHAR'S in the city",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13
                              ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.35,
                            height: 165,
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30)),
                                color: pink,
                                boxShadow: [
                                  BoxShadow(spreadRadius: 0,
                                      offset: Offset(0, 10),
                                      blurRadius: 0,
                                      color: pink.withOpacity(0.4))
                                ]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "asset/images/rangoli1.jpg")
                                        )
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Text(
                                  "RANGOLI COLOURS FROM HINA", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700
                                ),),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 12,
                                    ), Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 12,
                                    ), Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 12,
                                    ), Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 12,
                                    ),

                                  ],
                                ),

                              ],
                            ),

                          ),
                          SizedBox(height: 10,),
                          Column(
                            children: [
                              Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.35,
                                height: 165,
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30)),
                                    color: Colors.blue,
                                    boxShadow: [
                                      BoxShadow(spreadRadius: 0,
                                          offset: Offset(0, 10),
                                          blurRadius: 0,
                                          color: Colors.blue.withOpacity(0.4))
                                    ]
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "asset/images/toran1.jpg")
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Text("TORANS FROM AARTI", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700
                                    ),),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 12,
                                        ), Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 12,
                                        ), Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 12,
                                        ), Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 12,
                                        ),

                                      ],
                                    ),

                                  ],
                                ),

                              ),

                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Other Products", style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700
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
                productsWidget("murti.jpg", "MURTIS FROM SHYAAM", "Murtis of all Gods are available Everything used is completely Eco-Friendly"),
                SizedBox(height: 20,),
                productsWidget("flowers.jpg", "FLOWERS FROM AANCHAL", "Flowers of all types available you can order in Bulk too!"),
                SizedBox(height: 20,),
                productsWidget("lantern.jpeg", "LANTERNS FROM SURYA", "Different types of Lanterns available in all colours and 5 different designs!"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row productsWidget(String img, String name, String description) {
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
              Text("$description",
                style: TextStyle(
                  fontSize: 12,
                ),),

            ],
          ),
        ),
        InkWell(
          onTap: openProductsPage,
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

  void openProductsPage()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsPage()));
  }
}
