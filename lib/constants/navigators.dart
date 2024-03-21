import 'package:flutter/cupertino.dart';

navPush(context,Widget to){
  Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>to));
}

navPushRemove(context,Widget to){
  Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(builder: (context)=>to), (route) => false);
}

navPop(context){
  Navigator.of(context).pop();
}