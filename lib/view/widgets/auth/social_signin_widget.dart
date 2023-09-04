import 'package:flutter/cupertino.dart';

class SocialSignIn extends StatelessWidget {
  const SocialSignIn({super.key, required this.maincolor, required this.image});
  final Color maincolor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 43,
          height: 43,
          decoration: ShapeDecoration(
            color:maincolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Image.asset(image),
        );
  }
}