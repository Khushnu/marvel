import 'package:flutter/material.dart';
import 'package:marvel/Widgets/text_widget.dart';
import 'package:marvel/theme.dart';

class ListWidget extends StatelessWidget {
  final String name; 
  final String time; 
  final double? font;
  final double? font2;
  final double? size;
  final FontWeight? fontWeight;
  final IconData icon; 
  final IconData? trailicon; 
  final Color? color;
  final Color? color2;

  const ListWidget({super.key, required this.name, required this.time, required this.icon,  this.trailicon, this.font, this.fontWeight, this.color, this.color2, this.size, this.font2});

  @override
  Widget build(BuildContext context) {

    return  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(icon),
                         const SizedBox(width: 10,),
                        TextWidget(text: name, fontsize: font2 ?? 18, fontWeight: FontWeight.bold, color: color?? primary),
                        Spacer(),
                         TextWidget(text: time, fontsize: font ?? 14, fontWeight: fontWeight?? FontWeight.normal, color:color2 ?? secondarytext),
                            SizedBox(width: 13,),
                            Icon(trailicon ?? Icons.arrow_forward , size: size,)
                      ],
                    );
  }
}