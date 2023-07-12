import 'package:flutter/material.dart';
import 'package:kantin_new_mobile/constants/global_constants.dart';


class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonText, required this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: mainColorLight,),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            buttonText,
            style: kBodyText,
          ),
        ),
      ),
    );
  }
}
