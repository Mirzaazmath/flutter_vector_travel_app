import 'package:flutter/material.dart';
import 'package:vector_travel_app/data/data.dart';

import 'detailscreen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: const  BoxDecoration(
       gradient: LinearGradient(
           colors:[
             Colors.white,
             Colors.white,
             Color(0xfff9e5e6),
             Color(0xfff9e5e6),
           ] )
     ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          foregroundColor: Colors.grey,
          backgroundColor: Colors.white,
          elevation: 0,
          leading:const Padding(
            padding: EdgeInsets.all(10),
            child:  CircleAvatar(
              backgroundImage: AssetImage("assets/profile.png"),
            ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon:const  Icon(Icons.search))
          ],

        ),
        body: Column(
          children: [
            Container(
            height: MediaQuery.of(context).size.height*0.6,
             width: double.infinity,
             decoration:const  BoxDecoration(
                 gradient: LinearGradient(
                   begin: Alignment.topCenter,
                     end: Alignment.bottomCenter,
                     colors:[
                       Colors.white,

                       Color(0xfff9e5e6),



                     ] ),
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))
             ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,),
                    child: Text("Discover",style: TextStyle(fontSize: 30,color: Theme.of(context).primaryColor,fontWeight: FontWeight.w400),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for(int i=0;i<categorylist.length;i++)...[Column(
                          children: [
                            Text(categorylist[i],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:i==0? Theme.of(context).primaryColor: Theme.of(context).primaryColor.withOpacity(0.4)),),
                           const SizedBox(height: 5,),
                           i==0? CircleAvatar(
                              radius: 3,
                              backgroundColor: Theme.of(context).primaryColor,

                            ):const SizedBox(),

                          ],
                        )]

                      ],
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 60,top: 20),
                      padding: const EdgeInsets.only(left: 7),


                      child: ListView.builder(
                        shrinkWrap: true,
                          scrollDirection: Axis.horizontal,

                          itemCount: placelist.length,
                          itemBuilder: (context,index){
                        return GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen(placelist[index])));
                          },
                          child: Container(
                            padding:const  EdgeInsets.all(15),
                            margin:const  EdgeInsets.only(right: 20,left: 10),

                            width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage(placelist[index].image),fit: BoxFit.fill
                            )
                          ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   CircleAvatar(
                                     backgroundColor: Colors.white.withOpacity(0.5),
                                     child:const  Icon(Icons.bookmark,color: Colors.white,),

                                   ),

                                 ],
                               ),
                              const   Spacer(),
                                Text(placelist[index].name,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                Row(

                                  children: [
                                   const  Icon(Icons.location_on_rounded,color: Colors.white,size: 18,),
                                    Text(placelist[index].location,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

                                  ],
                                ),
                              ],
                            ),
                          ),

                        );
                      }),

                    ),
                  )
                ],
              ),
              
          ),
            Expanded(
              child: Container(
                padding:const  EdgeInsets.all(15),
                width: double.infinity,
                decoration:const  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(80))

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const  SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Popular Categories",style: TextStyle(fontSize: 23,color: Theme.of(context).primaryColor,fontWeight: FontWeight.w400),),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text("See All",style: TextStyle(fontSize: 15,color: Theme.of(context).primaryColor,fontWeight: FontWeight.w400),),
                        ),
                      ],
                    ),
                   const  SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for(int i=0;i<pcategorylist.length;i++)...[
                          Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: pcategorylist[i].color,
                                  boxShadow: [
                                    BoxShadow(
                                      color: pcategorylist[i].color.withOpacity(0.6),
                                      offset: Offset(5,5),
                                      blurRadius: 20
                                    )
                                  ]
                                ),
                                child: Icon(pcategorylist[i].icon,color: Colors.white,size: 30,),
                              ),
                            const   SizedBox(height: 10,),
                              Text(pcategorylist[i].name)
                            ],
                          ),

                        ]
                      ],
                    )
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
