import 'package:flutter/material.dart';
import 'package:vector_travel_app/screens/homescreen.dart';
class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const  BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpeg"),fit: BoxFit.fill
          )
        ),
        child:  SafeArea(
          child: Padding(
            padding:const  EdgeInsets.all(35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text('Explore the \nearth with us',style: TextStyle(fontSize: 40,fontWeight: FontWeight.normal,color: Theme.of(context).primaryColor),),
               const  Spacer(),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                    },
                    child: Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:  Icon(Icons.arrow_forward,color: Theme.of(context).primaryColor,),



                    ),
                  ),
                ),
               const  SizedBox(
                  height: 60,
                )

              ],
            ),
          )
        ),
      ),

    );
  }
}
