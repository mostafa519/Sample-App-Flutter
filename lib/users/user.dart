import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/userModel.dart';
import 'package:flutter_application_1/pages/Details/userAPIDetails.dart';
import 'package:flutter_application_1/services/userService.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  List<UserDataModel> list = [];
  bool isload = true;
  @override
  void initState() {
    super.initState();
    getUsersData();
  }

  getUsersData() async {
    list = await UserService().userData();
    if (list != []) {
      isload = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: const Text(
          "Users",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: isload
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return user(list[index], cont: context);
                  },
                  separatorBuilder: (context, index) {
                    return separate();
                  },
                  itemCount: list.length)),
    );
  }
}

Widget user(UserDataModel user, {required BuildContext cont}) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Row(
      children: [
        InkWell(
          child: CircleAvatar(
            backgroundColor: Colors.teal,
            child: Text("${user.id}"),
          ),
          onTap: () {
            Navigator.push(
                cont,
                MaterialPageRoute(
                  builder: (context) => userDetails(
                    mode: user,
                  ),
                ));
          },
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.name,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(user.phone)
          ],
        )
      ],
    ),
  );
}

Widget separate() {
  return Container(
    width: double.infinity,
    height: 1,
    color: Colors.black,
  );
}
