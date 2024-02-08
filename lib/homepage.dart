import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/white-texture.jpg"),
              fit: BoxFit.cover)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,

        children: [
        SizedBox(
          height: height * 0.03,
        ),
          Text(
            'ProductCarePro.\nAdmin',
            style: TextStyle(
                fontSize: height * 0.02,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700),
          ),
        SizedBox(height: height*0.1,),
        Row(
          children: [
            Container(height: height*0.6,width: width*.6,
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(height*0.5),topRight: Radius.circular(height*0.5))
              ),
            ),
            Container(
                height: height*0.4,width: width*0.4,
                child: Image.asset("assets/adm.png"))
          ],
        )
      ],
      ),
    ),
    );
  }
}
