import 'package:flutter/material.dart';
import 'package:need_food/HomePage/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LOginPageState();
}

class _LOginPageState extends State<LoginPage> {
  Color mainColor = Color.fromARGB(0, 89, 183, 238);
  final _fromKey = GlobalKey<FormState>();
  String? _email, _password;

  void doLoginIn() {
    if (_fromKey.currentState!.validate()) {
      _fromKey.currentState!.save();
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()) );
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);

    var size = _mediaQueryData.size;
    var orientation = _mediaQueryData.orientation;

    return ListView(
      children: [
        Container(
          height: size.height * 0.2,
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
          padding: const EdgeInsets.fromLTRB(36, 4, 0, 0),
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
              color: Colors.black, fontSize: 34, fontWeight: FontWeight.w600),
        ),
        Form(
          key: _fromKey,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                  textInputAction: TextInputAction.done,
                  validator: (String? value) =>
                      (value != null && !value.contains('@'))
                          ? "Please enter a valid  email"
                          : null,
                  onSaved: (value) => _email = value,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          width: 1,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                    validator: (String? value) =>
                        (value != null && value.length < 6)
                            ? "Must be at least 6 character"
                            : null,
                    onSaved: (value) => _password = value,
                  ),
                ),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Forgot password ?",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 29),
          width: double.infinity,
          height: size.height * 0.055,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.5),
          ),
          child: ElevatedButton(
            onPressed: () {
             doLoginIn();
                
             
              
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
          padding: EdgeInsets.fromLTRB(29, size.height * 0.03, 0, 4),
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
          padding: EdgeInsets.fromLTRB(29, 0, 29, size.height * 0.000),
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
    );
  }
}
