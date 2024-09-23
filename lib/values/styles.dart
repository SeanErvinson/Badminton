import 'package:baddie_master/values/values.dart';
import 'package:flutter/material.dart';

const TextStyle listTitle = TextStyle(
  color: secondaryColor,
  fontSize: 18.0,
  fontFamily: Constants.PRIMARY_FONT,
  fontWeight: FontWeight.normal,
  letterSpacing: 1.1,
);

const TextStyle subHeader = TextStyle(
  color: secondaryColor,
  fontSize: 32.0,
  fontFamily: Constants.PRIMARY_FONT,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.1,
);

const TextStyle formInputLabelStyle = TextStyle(
  color: secondaryAltColor,
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
);

const TextStyle formInputStyle = TextStyle(
  color: secondaryColor,
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
);

const InputDecoration formInputDecoration = InputDecoration(
  labelStyle: formInputLabelStyle,
  floatingLabelBehavior: FloatingLabelBehavior.auto,
  contentPadding: EdgeInsets.symmetric(vertical: 8.0),
);
