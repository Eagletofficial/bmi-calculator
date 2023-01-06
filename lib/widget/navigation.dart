import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final Function() onTap;
  final String buttonTitle;
  const NavigationButton({
    Key? key, required this.onTap, required this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // ignore: sort_child_properties_last
        child:  Center(
          child: Text(
            buttonTitle,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        // margin: EdgeInsets.all(10),
        height: 60,
        color: const Color(0xffeb1555),
        width: double.infinity,
      ),
    );
  }
}
