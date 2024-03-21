import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy_women/constants/navigators.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>navPop(context),
      child: Container(
        color: Colors.transparent,
        height: 55,
        width: 55,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(1000)),
            height: 30,
            width: 30,
            child: Icon(CupertinoIcons.back,color: Colors.white,size: 20,),
          ),
        ),
      ),
    );
  }
}
