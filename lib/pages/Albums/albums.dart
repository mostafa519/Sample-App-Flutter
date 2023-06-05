import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/albumsModel.dart';
import 'package:flutter_application_1/pages/Details/albumsDetails.dart';
import 'package:flutter_application_1/services/albumService.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({super.key});

  @override
  State<AlbumPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<AlbumPage> {
  List<AlbumModel> list = [];
  bool isload = true;
  @override
  void initState() {
    super.initState();
    getAlbumData();
  }

  getAlbumData() async {
    list = await albumService().albumData();
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
          "Albums",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: isload
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemBuilder: (context, index) {
                  return Album(list[index], cont: context);
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

Widget Album(AlbumModel album, {required BuildContext cont}) {
  return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(children: [
        InkWell(
          child: CircleAvatar(
            backgroundColor: Colors.teal,
            child: Text("${album.id}"),
          ),
          onTap: () {
            Navigator.push(
                cont,
                MaterialPageRoute(
                  builder: (context) => AlbumDetails(
                    text: album.title,
                  ),
                ));
          },
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${album.title}",
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
