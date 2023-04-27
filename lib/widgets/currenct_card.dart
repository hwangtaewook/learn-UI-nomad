import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final double offset;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.offset,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, offset),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: isInverted ? Colors.white : const Color(0xff1f2123),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color:
                            isInverted ? const Color(0xff1f2123) : Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted
                              ? const Color(0xff1f2123)
                              : Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? const Color(0xff1f2123)
                              : Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.1,
                child: Transform.translate(
                  offset: const Offset(-3, 10),
                  child: Icon(
                    icon,
                    color: isInverted ? const Color(0xff1f2123) : Colors.white,
                    size: 70,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
