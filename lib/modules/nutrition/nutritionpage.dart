import 'package:flutter/material.dart';

class NutritionPage extends StatelessWidget {
  const NutritionPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.white,
              size: 34,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Center(
            child: Text(
              "NUTRITION",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          backgroundColor: Color(0xff1d1a1b),
          bottom: TabBar(
            labelColor: Colors.yellow,
            tabs: [
              Tab(text: 'Breakfast'),
              Tab(text: 'Lunch'),
              Tab(text: 'Dinner'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Breakfast(),
            Lunch(),
            DinnerContent(),
          ],
        ),
      ),
    );
  }

  Breakfast() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/breakfast1.jpg",
                      fit: BoxFit.fill,
                    )),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Text(
                        "Rise and Dine: ",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "Start Your Day with",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "a Delicious Breakfast! ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ))
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.yellow),
              child: Center(
                  child: Text(
                " Breakfast Foods ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Protein-Rich Foods:",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Text(
                      "Eggs, Greek Yogurt, Lean Meats, Tofu & Nut Butter",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Whole Grains:",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Text(
                      "Eggs, Greek Yogurt, Lean Meats, Tofu & Nut Butter",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Fruits:",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Text(
                      "Berries, Bananas, Apples & Citrus Fruits.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Fiber-Rich Foods:",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Text(
                      " Bran Cereals, Whole-Grain Bread & Chia Seeds.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Lunch() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                    
                      Text(
                        "Savor and Refuel!",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Enjoy Wholesome",
                        style: TextStyle(color: Colors.white),
                      ),
                        Text(
                        "Midday Meal",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 15),
                child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/lunch.jpg",
                      fit: BoxFit.fill,
                    )),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.yellow),
              child: Center(
                  child: Text(
                " Lunch Foods ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lean Proteins:",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow ),
                    ),
                    Text(
                      "Grilled Chicken, Turkey, Fish, legumes like ",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                    Text(
                      "Beans and Lentils.",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Vegetables: ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Text(
                      "Green Vegetables have Vitamins, Minerals,",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                     Text(
                      "and Fiber.",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Healthy Fats:",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Text(
                      "  Avocados, Nuts, Seeds, or Olive Oil. ",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Portion Control: ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Text(
                      " Pay attention to portion sizes to avoid overeating. ",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  DinnerContent() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/dinner.jpg",
                      fit: BoxFit.fill,
                    )),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Text(
                        "Dine and Unwind",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        " Last meal of the day",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Dinner Food",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ))
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.yellow),
              child: Center(
                  child: Text(
                " Dinner Foods ",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Complex Carbohydrates:",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Text(
                      "Opt for complex carbohydrates like sweet potatoes",
                      style: TextStyle(color: Colors.white,fontSize: 16)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Salads:",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Text(
                      "Side salad with your dinner for added ",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                    Text(
                      " Fiber and Vitamins.",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lean Proteins:",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Text(
                      "Chicken, Turkey, Fish, or Plant-based options.",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Limit Late-Night Snacking: ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Text(
                      "Try to finish eating a few hours before",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                    Text(
                      " -bedtime to  allow for proper digestion",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
