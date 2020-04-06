


import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.enter.co/wp-content/uploads/2017/10/super-mario-odyssey-video-game-1118.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('YR'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar_loading.gif'), 
          image: NetworkImage('https://revengeofthefans.com/wp-content/uploads/2018/07/super-mario-odyssey_1508831864415.jpg'),
          fadeInDuration: Duration(milliseconds: 400),
          ),
          
      ),
    );
  }
}