import 'package:flutter/material.dart';
import 'package:project/util/bubble_stories.dart';
import 'package:project/util/users_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    "Emre Altın",
    "Samet ",
    "Mehmet ",
    "Ahmet ",
    "Derya",
    "Eren",
    "Eray",
    "Ensar",
    "Melike",
    "Ezgi"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("İnstagram"),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.messenger_outline_sharp)
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          // HİKAYELER
          Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPosts(name: people[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
