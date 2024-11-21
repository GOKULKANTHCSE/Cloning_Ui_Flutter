import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: Container(
                  height: 500,
                  // color: Colors.yellow,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://tse4.mm.bing.net/th?id=OIP.NzE3wcUngr73hryyis_QuwHaKe&pid=Api&P=0&h=180"))),
                          height: 450,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 25,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://tse1.mm.bing.net/th?id=OIP.7uYTODnmdBY3HQX8Abfr6wHaHk&pid=Api&P=0&h=180"),
                            radius: 50,
                            backgroundColor: Colors.blue,
                          )),
                    ],
                  ),
                ))
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              // color: Colors.deepPurple,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "I will fulfill my duty, I won’t allow anyone here to die",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38),
                  ),
                  Text(
                    "The atmosphere is creative, tech-savvy, cozy",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowTextIcon('20', Icons.favorite),
                  rowTextIcon('34', Icons.ios_share_outlined),
                  rowTextIcon('20', Icons.messenger_outline),
                  rowTextIcon('20', Icons.tag_faces_sharp),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  style: TextStyle(
                    fontSize: 13,
                  ),
                  "Launch our webpage on any browser convenient to you. Choose how long the text should be by entering the number of words. Hit the generate option below, and there you get your desired result. Generating Random Text with a random text generator. Our tool is designed to automatically generate text pieces."),
            ),
          ],
        ),
      ),
    );
  }
}

Widget rowTextIcon(String text, IconData icon) {
  return Row(
    children: [
      Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Icon(icon),
        ],
      ),
    ],
  );
}
