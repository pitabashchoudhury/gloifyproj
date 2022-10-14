import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  String image;
  String des;
  String publisher;
  String views;
  String time;
  String logo;

  MyCard({
    Key? key,
    required this.logo,
    required this.image,
    required this.des,
    required this.publisher,
    required this.time,
    required this.views,
  }) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    double heightD = MediaQuery.of(context).size.height;
    double widthD = MediaQuery.of(context).size.width;

    return Card(
        child: SizedBox(
      height: 220,
      width: 400,
      child: Column(
        children: [
          SizedBox(
            width: 400,
            height: 160,
            child: Image.network(
              widget.image,
              fit: BoxFit.fill,
              scale: 1.0,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              SizedBox(
                width: widthD / 7,
                height: heightD * 0.06,
                child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 100,
                    backgroundImage: NetworkImage(widget.logo)),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, top: 5.0, right: 20.0),
                      child: Text(
                        widget.des,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          wordSpacing: 0.01,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: widthD * 2.5 / 10,
                          height: heightD * 0.03,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 2.0),
                            child: Text(
                              widget.publisher,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: widthD * 0.21,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 2.0),
                            child: Text(
                              "${widget.views} views",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: widthD * 0.29,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 2.0),
                            child: Text(
                              "${widget.time} ago",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Icon(Icons.more_vert_outlined)
            ],
          ))
        ],
      ),
    ));
  }
}
