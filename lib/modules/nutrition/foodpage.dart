
import 'package:flutter/material.dart';

import 'nutritionpage.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1c1c1e),
        title: Center(
          child: Text("DAILY DIET FOOD",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    " Healthy Food, Sound Health",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 180,
            width: 300,
            child: ClipRRect(child: Image.asset("assets/images/food.jpeg",fit: BoxFit.fill,),borderRadius: BorderRadius.circular(20),),
          ),
          SizedBox(
            height: 15,
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Healthy food  ",style: TextStyle(color: Colors.white,fontSize: 18),),
                   
                    Text(" is a cornerstone of a vibrant and energetic life.Packed with essential nutrients, vitamins and antioxidants. ",
                      style: TextStyle(color: Colors.white,fontSize: 16),),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
            Container(
              height: 50,
              width: 300,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25),
               color: Colors.yellow,
             ),
             child: Center(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NutritionPage()));
              },

              child: Text("Explore Daily Diet",style: TextStyle(
                  fontSize: 24,fontWeight: FontWeight.w600)))),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(height: 150,width: 80,decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  color: Colors.white70,),
                  child: Column(
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,),
                    child: Image.asset("assets/images/protein.png",height: 55,width: 65,),
                  ),
                  SizedBox(height: 20,),
                  Text("Protein",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                  Text("56 gm",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                ],),),
                 Container(height: 150,width: 80,decoration: BoxDecoration(
                   borderRadius:BorderRadius.circular(20),
                   color: Colors.white70,),
                   child: Column(
                   children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,),
                      child: Image.asset("assets/images/carb.png",height: 55,),
                    ),
                    SizedBox(height: 20,),
                    Text("Carbs",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    Text("225 gm",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                  ],),),
                 Container(height: 150,width: 80,decoration: BoxDecoration(
                   borderRadius:BorderRadius.circular(20),
                   color: Colors.white70,),
                   child: Column(
                     children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,),
                      child: Image.asset("assets/images/vitamin.png",height: 55,),
                    ),
                    SizedBox(height: 20,),
                    Text("Vitamins",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    Text("8-27gm",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                  ],),),
              ],
            )
        ],
      ),
    );
  }
}
