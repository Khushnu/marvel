import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel/Widgets/text_widget.dart';
import 'package:marvel/theme.dart';

class ButtonWidget extends StatelessWidget {
  final String img; 
  final String title;
  const ButtonWidget({super.key, required this.img, required this.title});
  


  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.sizeOf(context).width;
    return Container(
                      height: 48, 
                      width: screenwidth*0.4 + 25, 
                      decoration: BoxDecoration(color: primary, 
                      borderRadius: BorderRadius.circular(13) ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            width: 22,
                          ),
                          Image.asset(img, color: Colors.white, height: 25,), 
                           const SizedBox(
                            width: 10,
                          ),
                           TextWidget(text: title, fontsize: 16, 
                          fontWeight: FontWeight.bold, color: Colors.white), 
                          const Spacer()
                        ],
                      ),
                      
                     );
  }
}