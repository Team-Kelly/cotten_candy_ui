import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 35,
            height: 35,
            child: Center(child: Icon(Icons.directions_run, color: Colors.white, size: 25,)),
            decoration: BoxDecoration(color: const Color(0xFFFC5D5D),borderRadius: BorderRadius.circular(35)),
          ),
          Container(width: 5,height: 50,color: Colors.grey,),
          Container(
            width: 35,
            height: 35,
            child: Center(child: Icon(Icons.directions_bus, color: Colors.white, size: 25,)),
            decoration: BoxDecoration(color: const Color(0xFFFC5D5D),borderRadius: BorderRadius.circular(35)),
          ),
          Container(width: 5,height: 50,color: Colors.grey,),
          Container(
            width: 35,
            height: 35,
            child: Center(child: Icon(Icons.directions_subway, color: Colors.white, size: 25,)),
            decoration: BoxDecoration(color: const Color(0xFFFC5D5D),borderRadius: BorderRadius.circular(35)),
          ),
          Container(width: 5,height: 50,color: Colors.grey,),
          Container(
            width: 35,
            height: 35,
            child: Center(child: Icon(Icons.fmd_good, color: Colors.white, size: 25,)),
            decoration: BoxDecoration(color: const Color(0xFFFC5D5D),borderRadius: BorderRadius.circular(35)),
          ),
        ],
      ),
    );
  }
}
