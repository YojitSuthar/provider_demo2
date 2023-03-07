import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo2/Provider/change_dart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final colorChange=Provider.of<ChangeColor>(context,listen: false);
    print(colorChange.value);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ChangeColor>(builder: (context,value,child){
            return  Slider(
                min: 0,
                max: 1,
                value:colorChange.value,
                onChanged: (val) {
                  colorChange.change(val);
                });
          }),
          Consumer<ChangeColor>(builder: (context,value,child){
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.pinkAccent.withOpacity(colorChange.value),
                    child: Center(child: Text("Container 1")),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.green.withOpacity(colorChange.value),
                    child: Center(child: Text("Container 1")),
                  ),
                )
              ],
            );}),

        ],
      ),
    );
  }
}
