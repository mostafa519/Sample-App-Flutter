import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Photos/Photos.dart';
import 'package:flutter_application_1/pages/chat/chat.dart';
import 'package:flutter_application_1/pages/home/signIn.dart';
import 'package:flutter_application_1/pages/layout/mainLayout.dart';
import 'package:flutter_application_1/users/user.dart';

class logIn extends StatefulWidget {
  logIn({super.key});

  @override
  State<logIn> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<logIn> {
  var email = TextEditingController();
  var _password = TextEditingController();
  var _passwdVisible = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 206, 74, 74),
        title: Text(
          "Log In",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("Accunt Box");
              },
              icon: Icon(Icons.account_box)),
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.wifi_rounded)),
        ],
        foregroundColor: Color.fromARGB(255, 38, 123, 221),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60, // Image radius
                  backgroundImage: AssetImage('Assets/Images/images.jpeg'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "email",
                      prefixIcon: Icon(Icons.email),
                    ),
                    controller: email,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        // print('Please enter your Email ');
                        return 'Please enter your Email ';
                      } else {
                        return null;
                      }
                    }),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _passwdVisible,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      // print('Please enter your PassWord ');
                      return 'Please enter your PassWord ';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(
                          () {
                            _passwdVisible = !_passwdVisible;
                          },
                        );
                      },
                      icon: Icon(_passwdVisible
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                  controller: _password,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => main_Layout(),
                          ));
                    }
                  },
                  child: const Text(
                    'Submit',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      _navigateToNextScreen(context);
                    },
                    child: Text("Sing Up")),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * .08,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    child: Center(child: Text("Chat")),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UsersPage(),
                          ));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * .08,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 7, 216, 52),
                      borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    child: Center(child: Text("Photo")),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhotoPage(),
                          ));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * .08,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 7, 216, 52),
                      borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    child: Center(child: Text("Chats")),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => chat(),
                          ));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => sinInPage()));
  }
}
