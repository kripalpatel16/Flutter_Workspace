import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task60/resutorentcreen.dart';
import 'package:url_launcher/url_launcher.dart';


class Screen extends StatefulWidget
{
  @override
  ScreenState createState() => ScreenState();
}

class ScreenState extends State<Screen>
{
  bool isLiked = false; // Initial state of the like button

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar
        (
        title: Text("49-Nature"),
      ),
      body: Column
        (
        children:
        [
          // Image container
          Container
            (
            child: Image.network
              (
                "https://roasting-conflict.000webhostapp.com/images/smart.webp"),
          ),
          SizedBox(height: 16),

          Padding
            (
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row
              (
              children:
              [
                Container(
                  child: Column(
                    children: [

                      Text
                        (
                        "The Azores  island",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        " Portugal",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 16.0,
                        ),
                      ),

                    ],
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    toggleLike();
                  },
                  child: Icon(
                    isLiked ? Icons.star : Icons.star_border,
                    color: isLiked ? Colors.red : Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Container
            (
            child: Row
              (
              children: [
                IconButton(

                  icon: Icon(Icons.call),
                  padding: EdgeInsets.all(50),
                  iconSize: 25,
                  onPressed: () {
                    // call action is here
                    call();
                  },
                ),
                IconButton(
                  icon: Icon(Icons.route),
                  padding: EdgeInsets.all(50),
                  iconSize: 25,
                  onPressed: () {
                    //  route action here
                    route();
                  },
                ),
                IconButton
                  (
                  icon: Icon(Icons.share),
                  iconSize: 25,
                  padding: EdgeInsets.all(50),
                  onPressed: ()
                  {
                    // Add more options here if needed
                    websitelaunch();
                  },
                ),
              ],
            ),

          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("Azores, Portuguese in full Arquipélago dos Açores, archipelago and região autónoma (autonomous region) of Portugal. The chain lies in the North Atlantic Ocean roughly 1,000 miles (1,600 km) west of mainland Portugal. It includes nine major islands. The Azores are divided into three widely separated island groups: the eastern group, consisting of São Miguel, Santa Maria, and the Formigas islets; the central group, consisting of Faial, Pico, São Jorge, Terceira, and Graciosa; and the northwestern group, consisting of Flores and Corvo. The capital is Ponta Delgada on São Miguel."),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton
        (
        child: Icon(Icons.navigate_next),
        onPressed: ()
        {
          Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => MyApp5()));
        },
      ),

    );
  }

  void toggleLike()
  {
    setState(()
    {
      isLiked = !isLiked;
    });
  }

  void call()
  {
    var url = Uri.parse("tel:9999999999");
    launchUrl(url);
  }

  void route()
  {
    var url = Uri.parse("https://www.google.com/maps/place/Azores,+Portugal/@37.8943388,-38.2180962,6z/data=!3m1!4b1!4m10!1m2!2m1!1sThe+Azores++island!3m6!1s0xb467f1e11e43b05:0xe2911b674bce0c1d!8m2!3d37.7412488!4d-25.6755944!15sChJUaGUgQXpvcmVzICBpc2xhbmSSARRhZG1pbmlzdHJhdGl2ZV9hcmVhMeABAA!16zL20vMDE0bDk!5m1!1e4?entry=ttu");
    launchUrl(url);
  }

  void websitelaunch()
  {
    var url = Uri.parse("https://roasting-conflict.000webhostapp.com/images/smart.webp");
    launchUrl(url);
  }

}
//https://www.google.com/maps/place/Azores,+Portugal/@37.8943388,-38.2180962,6z/data=!3m1!4b1!4m10!1m2!2m1!1sThe+Azores++island!3m6!1s0xb467f1e11e43b05:0xe2911b674bce0c1d!8m2!3d37.7412488!4d-25.6755944!15sChJUaGUgQXpvcmVzICBpc2xhbmSSARRhZG1pbmlzdHJhdGl2ZV9hcmVhMeABAA!16zL20vMDE0bDk!5m1!1e4?entry=ttu
