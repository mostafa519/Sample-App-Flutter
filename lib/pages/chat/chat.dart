import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/models.dart';
import 'package:flutter_application_1/pages/Details/user.dart';

class chat extends StatefulWidget {
  chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  List<SampleChatMassage> chatMessags = [
    SampleChatMassage(time: "10:00:00", message: "Hello", userName: "mustafa"),
    SampleChatMassage(time: "11:00:00", message: "Hello", userName: "ahmed"),
    SampleChatMassage(time: "12:00:00", message: "Hello", userName: "mahmoud"),
    SampleChatMassage(time: "1:00:00", message: "Hello", userName: "sallah"),
    SampleChatMassage(time: "2:00:00", message: "Hello", userName: "mohamed"),
    SampleChatMassage(time: "4:00:00", message: "Hello", userName: "saad"),
    SampleChatMassage(time: "5:00:00", message: "Hello", userName: "hmada"),
    SampleChatMassage(time: "7:00:00", message: "Hello", userName: "hossam"),
    SampleChatMassage(time: "9:00:00", message: "Hello", userName: "abdo"),
    SampleChatMassage(time: "2:00:00", message: "Hello", userName: "maha"),
    SampleChatMassage(time: "9:00:00", message: "Hello", userName: "marwaa"),
    SampleChatMassage(time: "12:00:00", message: "Hello", userName: "salma"),
    SampleChatMassage(time: "10:00:00", message: "Hello", userName: "mustafa"),
    SampleChatMassage(time: "11:00:00", message: "Hello", userName: "ahmed"),
    SampleChatMassage(time: "12:00:00", message: "Hello", userName: "mahmoud"),
    SampleChatMassage(time: "1:00:00", message: "Hello", userName: "sallah"),
    SampleChatMassage(time: "2:00:00", message: "Hello", userName: "mohamed"),
    SampleChatMassage(time: "4:00:00", message: "Hello", userName: "saad"),
    SampleChatMassage(time: "5:00:00", message: "Hello", userName: "hmada"),
    SampleChatMassage(time: "7:00:00", message: "Hello", userName: "hossam"),
    SampleChatMassage(time: "9:00:00", message: "Hello", userName: "abdo"),
    SampleChatMassage(time: "2:00:00", message: "Hello", userName: "maha"),
    SampleChatMassage(time: "9:00:00", message: "Hello", userName: "marwaa"),
    SampleChatMassage(time: "12:00:00", message: "Hello", userName: "salma"),
    SampleChatMassage(time: "10:00:00", message: "Hello", userName: "mustafa"),
    SampleChatMassage(time: "11:00:00", message: "Hello", userName: "ahmed"),
    SampleChatMassage(time: "12:00:00", message: "Hello", userName: "mahmoud"),
    SampleChatMassage(time: "1:00:00", message: "Hello", userName: "sallah"),
    SampleChatMassage(time: "2:00:00", message: "Hello", userName: "mohamed"),
    SampleChatMassage(time: "4:00:00", message: "Hello", userName: "saad"),
    SampleChatMassage(time: "5:00:00", message: "Hello", userName: "hmada"),
    SampleChatMassage(time: "7:00:00", message: "Hello", userName: "hossam"),
    SampleChatMassage(time: "9:00:00", message: "Hello", userName: "abdo"),
    SampleChatMassage(time: "2:00:00", message: "Hello", userName: "maha"),
    SampleChatMassage(time: "9:00:00", message: "Hello", userName: "marwaa"),
    SampleChatMassage(time: "12:00:00", message: "Hello", userName: "salma"),
  ];

  @override
  Widget build(BuildContext context) {
    // DateTime newDate = DateTime.now();
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 92, 82, 82),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.white,
        elevation: 0,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20, // Image radius
              backgroundImage: AssetImage('Assets/Images/images.jpeg'),
            ),
            SizedBox(
              width: 10,
            ),
            Text("Chat"),
            SizedBox(
              width: 5,
            ),
            // SizedBox(
            //   width: 20,
            // ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 20,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsetsDirectional.only(
          top: 20,
          start: 20,
          end: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  print("Hello >>>");
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsetsDirectional.symmetric(
                        horizontal: 10, vertical: 10),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [Icon(Icons.search), Text("Search")],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 80,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ActiveUser(userName: chatMessags[index].userName);
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: chatMessags.length,
                ),
                // child: SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       ActiveUser(userName: "Welcome"),
                //       SizedBox(
                //         width: 10,
                //       ),
                // Container(
                //   width: 70,
                //   child: Column(children: [
                //     CircleAvatar(
                //       radius: 18,
                //     ),
                //     SizedBox(
                //       height: 5,
                //     ),
                //     Text(
                //       "user profile user profile user profile user profile",
                //       maxLines: 2,
                //       overflow: TextOverflow.ellipsis,
                //     ),
                //   ]),
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                // ],
                // ),
                // ),
              ),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                itemBuilder: (context, index) {
                  return MoreData(context1: context, chatMessags[index]);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 15);
                },
                itemCount: chatMessags.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              )
              // Expanded(
              //   child: SingleChildScrollView(
              //     child: Column(
              //       children: [
              //         MoreData(context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "Ahmed", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "Mahmoud", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "Saad", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "Hmada", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "Hossam", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "Kareem", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "Amal", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "mohammed", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "sallah", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "Noura", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "Reda", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "asd", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "salmaa", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "Mahaa", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         MoreData(name: "Sami", context1: context),
              //         SizedBox(
              //           height: 10,
              //         ),
              // Row(
              //   children: [
              //     CircleAvatar(
              //       radius: 25,
              //       backgroundImage:
              //           AssetImage('Assets/Images/download.jpeg'),
              //     ),
              //     SizedBox(
              //       width: 15,
              //     ),
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             "Mustafa Ali",
              //             style: TextStyle(
              //                 fontSize: 18, fontWeight: FontWeight.bold),
              //           ),
              //           SizedBox(
              //             height: 5,
              //           ),
              //           Row(
              //             children: [
              //               Expanded(child: Text("welcome to my page ")),
              //               SizedBox(
              //                 width: 10,
              //               ),
              //               Text("10:15 AM"),
              //             ],
              //           )
              //         ],
              //       ),
              //     )
              //   ],
              // )
            ],
          ),
        ),
      ),
      // );
      //   ]),
      // ),
      // appBar: AppBar(),
      // drawer: Container(
      //   color: Colors.blue,
      //   width: MediaQuery.of(context).size.width * 0.5,
      // ),
    );
  }
}

Widget MoreData(SampleChatMassage chats, {required BuildContext context1}) {
  return Row(
    children: [
      CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('Assets/Images/download.jpeg'),
          child: Stack(children: [
            Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.white,
                    child:
                        CircleAvatar(radius: 4, backgroundColor: Colors.green)))
          ])),
      // Positioned(
      //     right: 0,
      //     bottom: 0,
      //     child: Container(
      //         padding: EdgeInsets.all(7),
      //         decoration: BoxDecoration(
      //             border: Border.all(width: 2, color: Colors.white),
      //             borderRadius: BorderRadius.circular(90.0),
      //             color: Colors.green))),
      SizedBox(
        width: 15,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Text(
                "${chats.userName}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                    context1,
                    MaterialPageRoute(
                      builder: (context) => UserName(
                        text: chats.userName,
                      ),
                    ));
              },
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  chats.message,
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "${chats.time} ",
                  textAlign: TextAlign.right,
                ),
              ],
            )
          ],
        ),
      )
    ],
  );
}

Widget ActiveUser({String userName = "user activation"}) {
  return Container(
    width: 70,
    child: Column(children: [
      CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('Assets/Images/download.jpeg'),
          child: Stack(children: [
            Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.white,
                    child:
                        CircleAvatar(radius: 4, backgroundColor: Colors.blue)))
          ])),
      SizedBox(
        height: 5,
      ),
      Text(
        " ${userName} ",
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    ]),
  );
}
