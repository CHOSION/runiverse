import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {

  bool isLiked = false;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Palette.backgroundDarkColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
        child: Container(
          width: width*0.9,
          height: height*0.6,
          decoration: BoxDecoration(
            color: Palette.textDarkColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width:50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(0,2),
                              blurRadius: 6.0
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          child: ClipOval(
                            child: Image(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/2773977/pexels-photo-2773977.jpeg?cs=srgb&dl=pexels-rio-kuncoro-2773977.jpg&fm=jpg"),
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      title: Text(
                        "(user ID)",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "(program Name)",
                        style: TextStyle(
                          color: Colors.white60
                        ),
                      ),
                      trailing: IconButton(
                          icon: isLiked
                              ? Icon(Icons.favorite_border, color: Palette.iconColor)
                              : Icon(Icons.favorite, color: Palette.iconColor),
                        onPressed: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: width*0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0,5),
                            blurRadius: 8.0,
                          ),
                        ],
                        image: DecorationImage(
                          image: NetworkImage("https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?cs=srgb&dl=pexels-jacob-colvin-1761279.jpg&fm=jpg"),
                          fit: BoxFit.fitWidth
                        )
                      ),
                    ),
                    SizedBox(height: height*0.015),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "6\'30",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Pace",
                              style:
                              TextStyle(fontSize: 15, color: Palette.iconColor),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "38:05",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Time",
                              style:
                              TextStyle(fontSize: 15, color: Palette.iconColor),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "5.86",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Distance(km)",
                              style:
                              TextStyle(fontSize: 15, color: Palette.iconColor),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "478",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "kcal",
                              style:
                              TextStyle(fontSize: 15, color: Palette.iconColor),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
