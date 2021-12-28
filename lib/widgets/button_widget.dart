import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    required this.containerColor,
    required this.text,
    required this.icon,
    Key? key,
  }) : super(key: key);

  final Color containerColor;
  final IconData icon;
  final String text;

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  double rightAlign = 210;
  double leftAlign = 210;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: MouseRegion(
        onEnter: (a) {
          setState(() {
            rightAlign = 0;
            leftAlign = 210;
          });
        },
        onExit: (a) {
          setState(() {
            rightAlign = 210;
            leftAlign = 0;
          });
        },
        child: Container(
          width: 210,
          height: 100,
          color: Colors.black87,
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedPositioned(
                child: Container(
                  color: widget.containerColor,
                  width: 210,
                  height: 100,
                ),
                right: rightAlign,
                duration: const Duration(milliseconds: 300),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    widget.icon,
                    color: Colors.white,
                    size: 32,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
