import 'package:flutter/material.dart';

pushRelacement(context, Widget newView) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
    return newView;
  }));
}

pushTo(BuildContext context, Widget newView) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return newView;
  }));
}
