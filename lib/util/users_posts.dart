import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  UserPosts({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(
                    width: 30,
                    height: 30,
                    image: AssetImage('assets/images/avatar2.png'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        // GÖNDERİ
        // Image(
        //   image: NetworkImage(
        //       'https://fotolifeakademi.com/uploads/2020/04/sabit-odakli-objelerden-yararlanin.jpg'),

        // ),
        FadeInImage.assetNetwork(
            placeholder: 'assets/images/gif.gif',
            height: 300,
            image:
                'https://fotolifeakademi.com/uploads/2020/04/sabit-odakli-objelerden-yararlanin.jpg'),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share)
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        // BEĞENİ YAZISI
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("ve Diğerleri "),
              Text("beğendi "),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              RichText(
                  text: TextSpan(
                      text: "🔥🔥", style: TextStyle(color: Colors.black)))
            ],
          ),
        )
      ],
    );
  }
}
