import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_changename_provider/providers/counterprovider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Counterprovider>(
      builder: (context , value , child) => Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(value.value.toString(),style:const TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(top:60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: FloatingActionButton(
                      onPressed: (){
                        Provider.of<Counterprovider>(context, listen: false).increment();
                      },
                      backgroundColor: Colors.black,
                      child:const Icon(Icons.add,color: Colors.orange,),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: FloatingActionButton(
                      onPressed: (){
                        Provider.of<Counterprovider>(context, listen: false).decrement();
                      },
                      backgroundColor: Colors.black,
                      child:const Text('--',style: TextStyle(color: Colors.orange),)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      
       
      
    ),
    );
  }
}