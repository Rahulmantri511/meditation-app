import 'package:get/get.dart';
import 'package:meditation_app/widgets/bar_chart.dart';
import 'package:meditation_app/widgets/card_widget.dart';
import 'package:meditation_app/widgets/stats_widget.dart';

import '../../consts/consts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite,color: Colors.blue,size: 30,),
                  Icon(Icons.settings,color: Colors.grey,size: 30,)
                ],
              ),
              Image.asset(imgprofile).box.roundedFull.clip(Clip.antiAlias).make(),
              10.heightBox,
              "Natalia Lebediva".text.bold.size(20).make(),
              15.heightBox,
              const CardWidget(label: lessons, sessions: session1, time: time1, image: icLessons, backgroundColor: Colors.blueAccent,),
              15.heightBox,
              const CardWidget(label: meditation, sessions: session2, time: time2, image: icMeditation,backgroundColor: Colors.pinkAccent,),
              15.heightBox,
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Stats".text.semiBold.size(22).make().paddingOnly(left: 16,top: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              "Last week".text.semiBold.size(12).make(),
                              const Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        )
                      ],
                    ),
                    10.heightBox,
                    StatsWidget(label: lessons, time: time2, color: Colors.blueAccent,sizedBox: SizedBox(width: 40,),),
                    StatsWidget(label: meditation, time: time1, color: Colors.pinkAccent,sizedBox: SizedBox(width: 30,),),
                    10.heightBox,
                   const Padding(
                     padding: EdgeInsets.only(left: 10.0,right: 10,bottom: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                         BarChart( height1: 30, color1: Colors.blue, color2: Colors.blue, text: mon, height2: 15,),
                         BarChart( height1: 40, height2: 40, color1: Colors.blue, color2: Colors.blue, text: tue,),
                         BarChart( height1: 30, height2: 30, color1: Colors.pinkAccent, color2: Colors.blue, text: wed,),
                         BarChart( height1: 15, height2: 15, color1: Colors.pinkAccent, color2: Colors.blue, text: thu,),
                         BarChart( height1: 30, height2: 25, color1: Colors.blue, color2: Colors.blue, text: fri,),
                         BarChart( height1: 20, height2: 40, color1: Colors.pinkAccent, color2: Colors.blue, text: sat,),
                         BarChart( height1: 30, height2: 18, color1: Colors.blue, color2: Colors.pinkAccent, text: sat,),
                       ],
                     ),
                   )
                  ],
                ),
              ).box.color(Colors.grey.withOpacity(0.1)).rounded.make(),


            ],
          ),
        ),

      ),
    );
  }
}
