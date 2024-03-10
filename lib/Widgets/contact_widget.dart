import 'package:flutter/material.dart';
import 'package:marvel/Widgets/text_widget.dart';
import 'package:marvel/theme.dart';

class ContactWidget extends StatelessWidget {
  final String text; 

  const ContactWidget({super.key, required this.text, });

  @override
  Widget build(BuildContext context) {
    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(text: text, 
                            fontsize: 16, fontWeight: FontWeight.bold, color: primary), 
                            Container(
                              height: 37, 
                              width: 50, 
                              decoration: BoxDecoration(
                                color: secondary,
                                borderRadius: BorderRadius.circular(25)
                              ),
                              child: Center(child: Image.asset('images/call.png', height: 20, color: Colors.black,),),
                            )
                          ],
                        ),
                      );
  }
}