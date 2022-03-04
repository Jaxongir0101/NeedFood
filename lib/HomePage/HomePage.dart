import 'package:flutter/material.dart';

import '../bottom.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:BottomNavBarCurvedFb1(),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              height: 87,
              width: double.infinity,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15,
                    offset: Offset(0.0, 0.8)),
              ], color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/burger.png',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "NeedFood",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 2,
                            offset: Offset(0.0, 0.8),
                          ),
                        ]),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 14),
              padding: EdgeInsets.fromLTRB(10, 30, 0, 36),
              height: 157,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/rowBanner.png'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Paket Cheese",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Burger komplit",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 23,
                    width: 100,
                    padding: EdgeInsets.symmetric(vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Order Now",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(24, 4, 0, 12),
              child: Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 86,
                  width: 86,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 4,
                          offset: Offset(0, 0.1),
                        )
                      ]),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/burgerHome.png',
                        height: 64,
                        width: 64,
                      ),
                      Text("Burger"),
                    ],
                  ),
                ),
                Container(
                  height: 86,
                  width: 86,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 4,
                          offset: Offset(0, 0.1),
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/drinkHome.png',
                        height: 60,
                        width: 60,
                      ),
                      Text("Drink"),
                    ],
                  ),
                ),
                Container(
                  height: 86,
                  width: 86,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 4,
                          offset: Offset(0, 0.1),
                        )
                      ]),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/pizzaHome.png',
                        height: 64,
                        width: 64,
                      ),
                      Text("Pizza"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(24, 4, 24, 12),
              child: Text(
                "Popular Now",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Container(
              height: 197,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  popularNow("assets/images/BeefBurger.png", "Beef Burger",
                      "Mcdi", "Rp.20.000"),
                  popularNow("assets/images/PizzaFruit.png", "Pizza Fruit",
                      "Pija hut", "Rp.40.000"),
                  popularNow("assets/images/pizzaHome.png", "Sandwich",
                      "Roti r", "Rp.10.000"),
                  popularNow("assets/images/BeefBurger.png", "Beef Burger",
                      "Mcdi", "Rp.20.000"),
                  popularNow("assets/images/PizzaFruit.png", "Pizza Fruit",
                      "Pija hut", "Rp.40.000"),
                  popularNow("assets/images/pizzaHome.png", "Sandwich",
                      "Roti r", "Rp.10.000"),
                  popularNow("assets/images/BeefBurger.png", "Beef Burger",
                      "Mcdi", "Rp.20.000"),
                  popularNow("assets/images/PizzaFruit.png", "Pizza Fruit",
                      "Pija hut", "Rp.40.000"),
                  popularNow("assets/images/pizzaHome.png", "Sandwich",
                      "Roti r", "Rp.10.000"),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(24, 4, 24, 12),
              child: Text(
                "Recommended",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22),
              height: 154,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  recommennded("assets/images/burgerRecom.png"),
                  SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg.jpeg"),
                    SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg2.jpg"),
                    SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg3.jpg"),
                  SizedBox(width: 20),
                   recommennded("assets/images/burgerRecom.png"),
                  SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg.jpeg"),
                    SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg2.jpg"),
                    SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg3.jpg"),
                  SizedBox(width: 20),
                   recommennded("assets/images/burgerRecom.png"),
                  SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg.jpeg"),
                    SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg2.jpg"),
                    SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg3.jpg"),
                  SizedBox(width: 20),
                  
                  
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget popularNow(image, title, subtitle, price) {
    return Expanded(
      child: Container(
        width: 152,
        padding: EdgeInsets.symmetric(vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 4,
                offset: Offset(0, 0.1),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 1),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Colors.black38),
            ),
            SizedBox(height: 1),
            Text(
              price,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }

  Widget recommennded(image) {
    return Container(
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image)),
          boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 4,
                offset: Offset(0.2, 0.3),
              )
            ]
      ),
    );
  }
}
