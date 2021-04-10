import 'package:flutter/material.dart';

class CreateBlog extends StatefulWidget {
  @override
  _CreateBlogState createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
  String authorName,title,desc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Memories",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
            Text("Blog",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent,
                )),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_a_photo),
                  Text("Click and Upload",style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(6)),
            ),
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Author Name",
                    ),
                    onChanged: (value){
                      authorName = value;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Title Area",
                    ),
                    onChanged: (value){
                      title = value;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Description Area",
                    ),
                    onChanged: (value){
                      desc = value;
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
