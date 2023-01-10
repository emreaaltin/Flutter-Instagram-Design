import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/gif.gif',
              height: 300,
              image:
                  'https://fotolifeakademi.com/uploads/2020/04/sabit-odakli-objelerden-yararlanin.jpg'),
        );
      },
    );
  }
}
