dependencies:
  page_transition: ^2.0.9 // Add this Package if you want to use it
    

import 'package:demo/CustomPageTransition.dart';
import 'package:demo/Deviceinfo.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';  // Also import this package 

class Pagetransitionapp extends StatefulWidget {
  const Pagetransitionapp({super.key});

  @override
  State<Pagetransitionapp> createState() => _PagetransitionappState();
}

class _PagetransitionappState extends State<Pagetransitionapp>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 33, 118, 216)),
        ),
        title: const Text(
          'Page Transition',
          style: TextStyle(
              color: Color.fromARGB(255, 236, 229, 229),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          custombutton(() {
            Navigator.push(
                context, SlidePageTransition(secondpage: Deviceinfo()));
          }, Colors.red, 'Slide Transition'),
          custombutton(() {
            Navigator.push(
                context, ScalePageTransition(secondpage: Deviceinfo()));
          }, Colors.blue, 'Scale Transition'),
          custombutton(() {
            Navigator.push(
                context, SizePageTransition(secondpage: Deviceinfo()));
          }, Colors.orange, 'Size Transition'),
          custombutton(() {
            Navigator.push(
                context, FadePageTransition(secondpage: Deviceinfo()));
          }, Colors.grey, 'Fade Transition'),
          custombutton(() {
            Navigator.push(
                context, RotatePageTransition(secondpage: Deviceinfo()));
          }, Colors.teal, 'Rotate Transition'),
          custombutton(() {
            Navigator.push(
                context,
                PageTransition(alignment: Alignment.center,
                duration: Duration(seconds: 3),
                reverseDuration: Duration(seconds: 3),
                curve: Curves.easeInOutCirc,
                    child: Deviceinfo(), type: PageTransitionType.scale));
          }, Colors.blueGrey, 'Custom Transition'),
        ]),
      ),
    );
  }

  MaterialButton custombutton(onpressed, Color color, String text) {
    return MaterialButton(
      onPressed: onpressed,
      color: color,
      child: Text(
        text,
        style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
    );
  }
}
