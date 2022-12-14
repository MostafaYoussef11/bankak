
import 'package:bankk/utils/App_layout.dart';
import 'package:bankk/utils/app_styles.dart';
import 'package:bankk/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
     return SizedBox(
        width: size.width * 0.85,
        height: 200,
        child:Container(
          margin: const EdgeInsets.only(right: 9),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /**
               * Showing The Blue Part of The Card / Ticket
               * */
              Container(
                decoration: BoxDecoration(
                  color: const Color(0XFF526799),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21)),

                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children:[
                        Text("Cai" , style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                        Expanded(child: Container()),
                        ThickContainer(),
                        Expanded(child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  print("The width is ${constraints.constrainWidth()}");
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate((constraints.constrainWidth()/8).floor(), (index) =>
                                        SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(decoration: BoxDecoration(
                                              color: Colors.white
                                          )),
                                        )
                                    ),

                                  );
                                },
                              ),
                            ),
                            Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.airplanemode_active , color: Colors.white,),)),
                          ],

                        )),
                        ThickContainer(),
                        Expanded(child: Container()),
                        Text("Asw" , style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text("Cairo" , style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                        ),
                        Text("8H 30M" , style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                        SizedBox(
                          width: 100,
                          child: Text("Aswan" , style: Styles.headLineStyle4.copyWith(color: Colors.white),textAlign: TextAlign.end,),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              /**
               * Showing the Orange part of The Card / Ticekt
               * */
              Container(
                color: Styles.orangeColor,
                child: Row(
                  children:[
                    const SizedBox(
                      width: 10,
                      height: 20,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          )
                        )
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                            width: 5, height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,

                              ),
                            ),
                          )),

                        );
                      },

                      ),
                    )),
                    const SizedBox(
                      width: 10,
                      height: 20,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)
                              )
                          )
                      ),
                    )
                  ],
                ),
              ),
              /**
               * The Bottom Part Of Orange
               * */
              Container(
                decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21)),

                ),
                padding: const EdgeInsets.only(left: 16 , top: 10 ,right: 16 , bottom: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("1 Aug" , style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                            const Gap(5),
                            Text("Date" , style: Styles.headLineStyle4.copyWith(color: Colors.white),),

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("08:00 AM" , style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                            const Gap(5),
                            Text("Departure time" , style: Styles.headLineStyle4.copyWith(color: Colors.white),),

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("30" , style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                            const Gap(5),
                            Text("Number" , style: Styles.headLineStyle4.copyWith(color: Colors.white),),

                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ) ,
     );
  }

}