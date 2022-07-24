import 'package:flutter/material.dart';
class IndimemeProfile extends StatelessWidget {

 IndimemeProfile ({required this.value, required this.title}) ;
    final String ? value;
   final String ? title;

    @override
    Widget build(BuildContext context){
      return Column(
        children: [
          Text(
            '$value',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,


            ),
          ),
          Text(
            '$title',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.white38,
            ),
          ),
        ],

      );
    }
  }

