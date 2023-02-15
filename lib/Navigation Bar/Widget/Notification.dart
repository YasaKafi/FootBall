import 'package:flutter/material.dart';

class NotNotification extends StatefulWidget {
  const NotNotification({Key? key}) : super(key: key);

  @override
  State<NotNotification> createState() => _NotNotificationState();
}

class _NotNotificationState extends State<NotNotification> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 249, 254, 1.0),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              left: 60,
              top: 200,
              child: Container(
                width: 250,
                  height: 200,
                  child: Image.asset('assets/images/notification.jpg')
              ),
            ),
            Positioned(
              left: 68,
              top: 400,
              child: Text(
                'No Notifications Found',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              )
            ),
            Positioned(
                left: 44,
                top: 440,
                child: Text(
                  'You have currently no notificatons. We`ll notify',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                )
            ),
            Positioned(
                left: 72,
                top: 458,
                child: Text(
                  'you when something new arrives!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                )
            ),


          ],
        ),

      ),
    );
  }
}
