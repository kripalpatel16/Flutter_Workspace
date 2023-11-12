
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




class FirstPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Tops Technologies"),),
        body: Center
          (
          // 1. Write Some Code Text
          //child:
          //child: Text("Welcome to tops"),
          child: Column(

            children:
            [

              SizedBox(width: 100,height: 100),


              SizedBox(width: 100,height: 100),

              ElevatedButton(
                child: Text("Send SMS"),
                onPressed: ()
                {
                  sendSms();
                },
              ),

              SizedBox(width: 50,height: 50),

              ElevatedButton(onPressed: (){

                callnum();

              }, child: Text("Call Us")),



            ],
          ),
        )
    );








  }
  void sendSms()
  {
    //final String url = 'sms:$phoneNumber';
    //var  url = Uri("sms:9510784188")
    //launchUrl(url);

    var url = Uri.parse("sms:9510784188");
    launchUrl(url);

  }


  void callnum()
  {

    var url = Uri.parse("tel:9510784188");
    launchUrl(url);
  }

}
