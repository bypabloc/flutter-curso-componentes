import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:componentes/src/objects/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AvatarPage extends StatefulWidget {
  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  @override
  Widget build(BuildContext context) {
    /*
    final enlace = 'https://api.pexels.com/v1/search?query=people';

    var client = http.Client();
    try {
      final res = await client.get(Uri.parse(enlace));
      print(res);
    } finally {
      client.close();
    }

    Future<Post> fetchPost() async {
      final response = await http.get(
        Uri.parse(enlace),
        headers: {
          HttpHeaders.authorizationHeader:
              "563492ad6f917000010000016972d45ff6d84f05b4d7a55f787deb10"
        },
      );

      if (response.statusCode == 200) {
        // Si el servidor devuelve una repuesta OK, parseamos el JSON
        return json.decode(response.body);
        // return Post.fromJson(json_f);
      } else {
        // Si esta respuesta no fue OK, lanza un error.
        throw Exception('Failed to load post');
      }
    }

    fetchPost();
    */

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1018943227791982592/URnaMrya.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://media.wired.com/photos/5be9d68a5d7c6a7b81d79e25/master/pass/StanLee-610719480.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }

  // Future<String> createOrderMessage() async {
  //   var order = await fetchUserOrder();
  //   return 'Your order is: $order';
  // }
  // Future<String> fetchUserOrder() => {
  //   // Imagine that this function is
  //   // more complex and slow.
  //   Future.delayed(
  //     Duration(seconds: 2),
  //     () => 'Large Latte',
  //   )
  // }
}
