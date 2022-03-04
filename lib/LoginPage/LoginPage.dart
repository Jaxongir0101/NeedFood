import 'package:flutter/material.dart';
import 'package:need_food/HomePage/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LOginPageState();
}

class _LOginPageState extends State<LoginPage> {
  Color mainColor = Color.fromARGB(0, 89, 183, 238);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        Container(
          height: 180,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Rectangle.png'),
                fit: BoxFit.cover),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/burger.png',
              ),
              const SizedBox(
                width: 8,
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  "NeedFood",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(36, 8, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/pizza.png'),
              Image.asset('assets/images/fast-food.png'),
              Image.asset('assets/images/salad.png'),
            ],
          ),
        ),
        Text(
          "Sign In",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 36, fontWeight: FontWeight.w600),
        ),
        //  Image.asset('assets/images/platter.png'),

        Container(
          padding: EdgeInsets.fromLTRB(29, 29, 29, 12),
          child: Container(
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.1),
                  spreadRadius: 4,
                  offset: Offset(1, 1),
                ),
              ],
              border: Border.all(
                color: Colors.blue,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: TextField(
                keyboardType: TextInputType.name,
                onChanged: (value) {},
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hoverColor: Colors.blue,
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: "UserName"),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 29),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 29),
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              onChanged: (value) {},
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hoverColor: Colors.blue,
                  hintStyle: TextStyle(color: Colors.black),
                  hintText: "Enter your Password"),
            ),
          ),
        ),

        TextButton(
          onPressed: () {},
          child: Text(
            "Forgot password ?",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        SizedBox(height: 6),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 29),
          width: double.infinity,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.5),
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => HomePage()),
                ),
              );
            },
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(29, 32, 0, 4),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 100, 0),
                child: Image.asset('assets/images/pizzafood2.png'),
              ),
              Image.asset('assets/images/pizza.png'),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(29, 0, 29, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 100, 0),
                child: Image.asset('assets/images/salad1.png'),
              ),
              Image.asset('assets/images/platter2.png'),
            ],
          ),
        ),
        Center(
            child: Text(
          "No account yet ?",
          style: TextStyle(color: Colors.black54),
        )),
        InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sugn up now",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.navigate_next_outlined,
                color: Colors.blue,
                size: 16,
              )
            ],
          ),
        )
      ],
    ));
  }
}
