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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Container(
          height: 87,
          decoration:const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 0,
              offset: Offset(0.0, 0.8),
            ),
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
                const  SizedBox(width: 4),
                const  Text(
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
                decoration:const BoxDecoration(
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
                  icon:const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:const BottomNavBarCurvedFb1(),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin:const EdgeInsets.symmetric(horizontal: 14),
              padding:const EdgeInsets.fromLTRB(10, 30, 0, 36),
              height: 157,
              width: double.infinity,
              decoration:const BoxDecoration(
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
                      children:const [
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
                    padding:const EdgeInsets.symmetric(vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: GestureDetector(
                        onTap: () {},
                        child:const Text(
                          "Order Now",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
            Container(
              padding:const EdgeInsets.fromLTRB(24, 4, 0, 12),
              child:const Text(
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
                      boxShadow:const [
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
                      boxShadow:const [
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
                     const Text("Drink"),
                    ],
                  ),
                ),
                Container(
                  height: 86,
                  width: 86,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:const [
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
          const  SizedBox(
              height: 20,
            ),
            Container(
              padding:const EdgeInsets.fromLTRB(24, 4, 24, 12),
              child:const Text(
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
           const SizedBox(
              height: 16,
            ),
            Container(
              padding:const EdgeInsets.fromLTRB(24, 4, 24, 12),
              child:const Text(
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
               const   SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg.jpeg"),
               const   SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg2.jpg"),
               const   SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg3.jpg"),
                const  SizedBox(width: 20),
                  recommennded("assets/images/burgerRecom.png"),
                const  SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg.jpeg"),
                const  SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg2.jpg"),
                const  SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg3.jpg"),
                const  SizedBox(width: 20),
                  recommennded("assets/images/burgerRecom.png"),
                const  SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg.jpeg"),
                const  SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg2.jpg"),
               const   SizedBox(width: 20),
                  recommennded("assets/images/sandwichimg3.jpg"),
                const  SizedBox(width: 20),
                ],
              ),
            ),
          const  SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget popularNow(image, title, subtitle, price) {
    return Expanded(
      child: Container(
        width: 152,
        padding:const EdgeInsets.symmetric(vertical: 10),
        margin:const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow:const [
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
              style:const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              subtitle,
              style:const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Colors.black38),
            ),
          const  SizedBox(height: 1),
            Text(
              price,
              style:const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
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
          boxShadow:const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 4,
              offset: Offset(0.2, 0.3),
            )
          ]),
    );
  }
}
