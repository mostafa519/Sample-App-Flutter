import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/login.dart';

class sinInPage extends StatefulWidget {
  sinInPage({super.key});

  @override
  State<sinInPage> createState() => _sinInPageState();
}

class _sinInPageState extends State<sinInPage> {
  var userName = TextEditingController();
  var userEmail = TextEditingController();
  var _userPassword = TextEditingController();
  var _userPasswordVisable = true;
  var userPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "Sign In",
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_tree)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60, // Image radius
              backgroundImage: AssetImage('Assets/Images/download.jpeg'),
            ),

            // Image(
            //   image: AssetImage("Assets/Images/download.jpeg"),
            //   height: 150,
            //   width: double.infinity,
            // ),
            // Image(
            //   width: 120,
            //   height: 300,
            //   image: NetworkImage("url"),
            // ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "User Name",
                  prefixIcon: Icon(Icons.person),
                ),
                controller: userName,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Name ';
                  } else if (value.length < 3) {
                    return "The Name must be at least 3 characters";
                  } else {
                    return '';
                  }
                }),
            SizedBox(
              height: 10,
            ),
            TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email Address",
                  prefixIcon: Icon(Icons.email),
                ),
                controller: userEmail,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Email ';
                  } else if (value.length <= 10) {
                    return "The email address is too short must be at least 10 characters";
                  } else {
                    return '';
                  }
                }),
            SizedBox(
              height: 10,
            ),
            TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Phone Number",
                  prefixIcon: Icon(Icons.phone),
                ),
                controller: userPhone,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Phone Number ';
                  } else if (value.length <= 10) {
                    return "The Phone Number is too short must be at least 11 characters";
                  } else {
                    return '';
                  }
                }),
            SizedBox(
              height: 10,
            ),
            TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "PassWord",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          _userPasswordVisable = !_userPasswordVisable;
                        },
                      );
                    },
                    icon: Icon(_userPasswordVisable
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                ),
                controller: _userPassword,
                obscureText: _userPasswordVisable,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Password ';
                  } else if (value.length <= 7) {
                    return "The PassWord is too short must be at least 8 characters";
                  } else {
                    return '';
                  }
                }),
            SizedBox(
              height: 10,
            ),
            // MaterialButton(
            //   onPressed: () {},
            //   child: Text("Sign in"),
            //   color: Colors.cyan,
            //   hoverColor: Colors.amberAccent,
            //   height: 50,
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Expanded(
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text("Sign In"),
                          style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Colors.amber,
                            shadowColor: Colors.cyanAccent,
                          ))),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            _navigateToNextScreen(context);
                          },
                          child: Text("Log In"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                          ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => logIn()));
  }
}
