import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

class WeekFadeInImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      title: 'FadeInImage',
      child: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Image.network(
                'https://images.pexels.com/photos/3384815/pexels-photo-3384815.jpeg?crop=entropy&cs=srgb&dl=scenic-view-of-seaside-during-dawn-3384815.jpg&fit=crop&fm=jpg&h=426&w=640',
                width: 200.0,
                height: 180.0,
              ),
              FadeInImage.assetNetwork(
                  placeholder: 'assets/placeholder300.png',
                  image:
                      'https://images.pexels.com/photos/3384815/pexels-photo-3384815.jpeg?crop=entropy&cs=srgb&dl=scenic-view-of-seaside-during-dawn-3384815.jpg&fit=crop&fm=jpg&h=426&w=640',
                  fit: BoxFit.cover,
                  width: 320.0,
                  height: 200.0)
            ])),
      ),
    );
  }
}
