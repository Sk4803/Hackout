import 'package:flutter/material.dart';
import 'package:loc_fest/Style.dart';
class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: successPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "mont"
      ),
    );
  }
}

class successPage extends StatefulWidget {
  const successPage({Key? key}) : super(key: key);

  @override
  _successPageState createState() => _successPageState();
}

class _successPageState extends State<successPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  SizedBox(height: 100,),
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


                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle,
                  color: pink,
                  size: 200,),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Done!!, Amazing Murtis on the way!", style: TextStyle(
                        color: pink,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),)
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
