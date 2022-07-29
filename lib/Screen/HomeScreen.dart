
import 'package:bankk/Screen/ticket_view.dart';
import 'package:bankk/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _homeScreenState();
  }

}

class _homeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children:[
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text("Good Morning" , style: Styles.headLineStyle3,),
                          const Gap(5),
                          Text("Book Tickets" , style: Styles.headLineStyle1,),
                        ]
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/booth.png"),
                            fit: BoxFit.cover
                          )
                        ),
                        width: 50,
                        height: 50,

                      )
                    ],
                  ),
                  const Gap(25),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:const Color(0XFFF4F6FD)
                    ),
                    child: Row(
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_search_regular , color: Color(0XFFBFC205)),
                        Text("Search" , style: Styles.headLineStyle4,)
                      ],
                    ),
                  ),
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Upcoming Flights", style: Styles.headLineStyle2,),
                      InkWell(
                          onTap:(){
                            print("You Are Tapped ");
                          } ,
                          child: Text("View all" , style: Styles.textStyle.copyWith(color:Styles.primaryColor), ))
                    ],
                  ),
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  TicketView(),
                  TicketView(),
                  TicketView(),
                ],
              ),
            )
          ],
        )
    );
  }

}