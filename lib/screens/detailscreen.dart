

import 'package:flutter/material.dart';

import '../data/data.dart';
class DetailScreen extends StatelessWidget {
  Place place;
  DetailScreen(this.place);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const  BoxDecoration(
            gradient: LinearGradient(
                colors:[
                  Colors.white,
                  Colors.white,
                  Color(0xfffef5f6),
                  Color(0xfffef5f6),
                ] )
        ),
        child: Column(
          children: [
            Container(

              height: MediaQuery.of(context).size.height*0.6,

              decoration:const  BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
                color:  Color(0xfffef5f6),
              ),
              child: Column(
                children: [
                  Container(
                    height:  MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(place.image),fit: BoxFit.fill
                    ),
                    borderRadius:const  BorderRadius.only(bottomLeft: Radius.circular(80),)

                  ),
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(onPressed: (){
                                  Navigator.pop(context);
                                }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
                                CircleAvatar(
                                  backgroundColor: Colors.white.withOpacity(0.5),
                                  child:const  Icon(Icons.bookmark,color: Colors.white,),

                                ),
                              ],
                            ),
                           const  Spacer(
                             flex: 8,
                           ),
                            Text(place.name,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                            Row(

                              children: [
                                const  Icon(Icons.location_on_rounded,color: Colors.white,size: 18,),
                                Text(place.location,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            const  Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
             const      Padding(
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star,color: Color(0xffefc06e),),
                            SizedBox(width: 5,),
                            Text("5.0",style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.cloud,color: Color(0xffa5d5f0),),
                            SizedBox(width: 5,),
                            Text("19*C",style: TextStyle(fontSize: 16,color: Color(0xffa5d5f0)),)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.schedule_rounded,color: Color(0xfff6d5e5),),
                            SizedBox(width: 5,),
                            Text("4 Days",style: TextStyle(fontSize: 16),)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              width: double.infinity,

              decoration:const  BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(80)),
                color:  Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description",style: TextStyle(fontSize: 23,color: Theme.of(context).primaryColor,fontWeight: FontWeight.w600),),
                   const  SizedBox(height: 20,),
                   const  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum ."),
                 const   Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: '\$ 350',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor,fontSize: 20),
                            children: const <TextSpan>[
                              TextSpan(text: '/per one', style: TextStyle(fontWeight: FontWeight.normal,fontSize: 13)),

                            ],
                          ),
                        ),
                        Container(
                          padding:const  EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                          decoration: BoxDecoration(
                            color: const Color(0xffd38fae),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child:const  Text("Book Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                   const  SizedBox(height: 10,)


                  ],
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}
