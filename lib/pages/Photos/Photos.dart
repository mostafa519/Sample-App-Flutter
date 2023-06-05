import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/photoModel.dart';
import 'package:flutter_application_1/services/photoService.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({super.key});

  @override
  State<PhotoPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<PhotoPage> {
  List<PhotosModel> list = [];
  bool isload = true;
  @override
  void initState() {
    super.initState();
    getAlbumData();
  }

  getAlbumData() async {
    list = await PhotosService().photoData();
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
          "Photos",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: isload
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemBuilder: (context, index) {
                  return Photo(list[index]);
                },
                separatorBuilder: (context, index) {
                  return separate();
                },
                itemCount: list.length,
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
              ),
      ),
    );
  }
}

Widget Photo(PhotosModel photo) {
  return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(children: [
        InkWell(
          child: CircleAvatar(
            backgroundColor: Colors.teal,
            child: Text("${photo.id}"),
            // backgroundImage: NetworkImage(photo.url),
          ),
          // onTap: () {
          //   Navigator.push(
          //       cont,
          //       MaterialPageRoute(
          //         builder: (context) => AlbumDetails(
          //           text: photo.title,
          //         ),
          //       ));
          // },
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${photo.title}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ]));
}

Widget separate() {
  return Container(
    width: double.infinity,
    height: 1,
    color: Colors.black,
  );
}
