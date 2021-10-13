import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
final manChef = TextEditingController();
final manAssistantChef = TextEditingController();
final manWaiter = TextEditingController();
final manHouseKeeper = TextEditingController();
final manDishWasher = TextEditingController();


class _MyHomePageState extends State<MyHomePage> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0,2.0,8.0,3.0),
                child: Row(
                  children: [
                    Image.asset("images/male_icon.png",
                      width: 44,
                      height: 44,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(18.0,8.0,8.0,3.0),
                      child: Text("Male",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(28.0,0.0,8.0,2.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("images/male-waiter.png",
                            width: 33,
                            height: 33,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                            child: Container(
                                width: MediaQuery.of(context).size.width/2.8,
                                child: const Text("Assistant Chef",style: TextStyle(fontSize: 16,color: Colors.black),)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*.40,
                            child: NumberInputPrefabbed.roundedButtons(
                              controller: manAssistantChef,
                              incDecBgColor: Colors.blue,
                              buttonArrangement: ButtonArrangement.incRightDecLeft,
                              scaleHeight: 0.75,
                              incIconSize: 38,
                              decIconSize: 38,
                              // incIcon: Icons.plus_one,
                              // decIcon: Icons.exposure_neg_1,
                              onIncrement: (num newlyIncrementedValue) {
                                print('Newly incremented value is $newlyIncrementedValue');
                              },
                              onDecrement: (num newlyDecrementedValue) {
                                print('Newly decremented value is $newlyDecrementedValue');
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("images/male-waiter.png",
                            width: 33,
                            height: 33,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                            child: Container(
                                width: MediaQuery.of(context).size.width/2.8,
                                child: const Text("Waiter",style: TextStyle(fontSize: 16,color: Colors.black),)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*.40,
                            child: NumberInputPrefabbed.roundedButtons(
                              controller: manWaiter,
                              incDecBgColor: Colors.blue,
                              buttonArrangement: ButtonArrangement.incRightDecLeft,
                              scaleHeight: 0.75,
                              incIconSize: 38,
                              decIconSize: 38,
                              onIncrement: (num newlyIncrementedValue) {
                                print('Newly incremented value is $newlyIncrementedValue');
                              },
                              onDecrement: (num newlyDecrementedValue) {
                                print('Newly decremented value is $newlyDecrementedValue');
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("images/kitchen-helper.png",
                            width: 33,
                            height: 33,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                            child: Container(
                                width: MediaQuery.of(context).size.width/2.8,
                                child: const Text("House Keeper",style: TextStyle(fontSize: 16,color: Colors.black),maxLines: 1,overflow: TextOverflow.ellipsis,)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*.40,
                            child: NumberInputPrefabbed.roundedButtons(
                              controller: manHouseKeeper,
                              incDecBgColor: Colors.blue,
                              buttonArrangement: ButtonArrangement.incRightDecLeft,
                              scaleHeight: 0.75,
                              incIconSize: 38,
                              decIconSize: 38,
                              // incIcon: Icons.plus_one,
                              // decIcon: Icons.exposure_neg_1,
                              onIncrement: (num newlyIncrementedValue) {
                                print('Newly incremented value is $newlyIncrementedValue');
                              },
                              onDecrement: (num newlyDecrementedValue) {
                                print('Newly decremented value is $newlyDecrementedValue');
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("images/male-waiter.png",
                            width: 33,
                            height: 33,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                            child: Container(
                                width: MediaQuery.of(context).size.width/2.8,
                                child: const Text("Dish Washer",style: TextStyle(fontSize: 16,color: Colors.black),maxLines: 1,overflow: TextOverflow.ellipsis,)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*.40,
                            child: NumberInputPrefabbed.roundedButtons(
                              controller: manDishWasher,
                              incDecBgColor: Colors.blue,
                              buttonArrangement: ButtonArrangement.incRightDecLeft,
                              scaleHeight: 0.75,
                              incIconSize: 38,
                              decIconSize: 38,
                              onIncrement: (num newlyIncrementedValue) {
                                print('Newly incremented value is $newlyIncrementedValue');
                              },
                              onDecrement: (num newlyDecrementedValue) {
                                print('Newly decremented value is $newlyDecrementedValue');
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0,4.0,8.0,8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 1.4 * (MediaQuery.of(context).size.height / 20),
                      width: 5 * (MediaQuery.of(context).size.width / 10),
                      margin: const EdgeInsets.only(bottom: 20),
                      child: RaisedButton(
                        elevation: 5.0,
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        onPressed: () {

                              print(manWaiter.text+","+manHouseKeeper.text+"-"+manDishWasher.text);

                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.5,
                            fontSize: MediaQuery.of(context).size.height / 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
      );
  }
}
