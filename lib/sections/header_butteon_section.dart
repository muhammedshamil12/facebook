import 'package:flutter/material.dart';

class HeaderButteonSection extends StatelessWidget {
  final Widget  buttonOne;
  final Widget  buttonTwo;
  final Widget  buttonthree ;

   HeaderButteonSection({
   required this.buttonOne,
   required this.buttonTwo,
   required this.buttonthree,

   });
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        
         buttonOne,
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          buttonTwo,
      
         
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          buttonthree,
          
          
        ],
      ),
    );
  }
}
