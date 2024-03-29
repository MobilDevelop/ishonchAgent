import 'package:agent/funcsion/colorhex.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WindowStoriesReport2 extends StatelessWidget {
  const WindowStoriesReport2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: ColorHex.colorFromHex("#FFFFFF"),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                          color: ColorHex.colorFromHex("#F5F5F5"), width: 2)),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nomonov Muhammadayubxon",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#000000"),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "Agent mutaxassis",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#8896A1"),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ],
                ),
                  ],
                ),
                    
               Column(
                 children: [
                   Text("№:",style: TextStyle(color: ColorHex.colorFromHex("#8896A1"),fontWeight: FontWeight.w500,fontSize: 12),),
                   Text("404",style: TextStyle(color: ColorHex.colorFromHex("#000000"),fontWeight: FontWeight.w700,fontSize: 14),),
                   
                 ],
               )
              ],
            ),
          ),
          DottedLine(
            dashColor: ColorHex.colorFromHex("#E0E0E0"),
          ),
          Container(
             padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 14,
                      width: 24,
                      decoration: BoxDecoration(
                        color: ColorHex.colorFromHex("#FFA801"),
                        borderRadius: BorderRadius.circular(4)
                      ),
                    ),
                    SizedBox(width: 8,),
                     Text("Statusi:",style: TextStyle(color: ColorHex.colorFromHex("#8896A1"),fontWeight: FontWeight.w500,fontSize: 12),),
                  ],
                ),
                Text("Kiritildi",style: TextStyle(color: ColorHex.colorFromHex("#000000"),fontWeight: FontWeight.w700,fontSize: 14),),
              ],
            ), 
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sanasi:",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#8896A1"),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Text(
                      "01.01.2022",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#000000"),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  "assets/images/leftRight.svg",
                  width: 20,
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Summasi",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#8896A1"),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Text(
                      "1 350 \$",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#FF4842"),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
