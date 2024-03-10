import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marvel/Widgets/text_widget.dart';
import 'package:marvel/theme.dart';

class TaxiCardWidget extends StatelessWidget {
  final String image;
  final bool islux;
  const TaxiCardWidget({super.key, required this.image,  this.islux= false});

  @override
  Widget build(BuildContext context) {
    return  Container(
                        height: 90, 
                        width: 120, 
                        // padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: secondary), 
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            if(islux)
                            Container(
                              height: 19, 
                              width: 60, 
                              color: primary, 
                              child: const Center(child: Text('Luxury', style: TextStyle(color: Colors.yellow),)),
                            ),
                              const SizedBox(
                              height: 15,
                            ),
                            Image.asset(image), 
                            const SizedBox(
                              height: 15,
                            ),
                            const TextWidget(text: '\$\$\$\$', 
                            fontsize: 11, fontWeight: FontWeight.normal, color: secondarytext)
                          ],
                        ),
                      );
  }
}