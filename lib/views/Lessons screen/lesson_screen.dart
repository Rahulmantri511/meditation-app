import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../consts/consts.dart';
import '../../consts/lists.dart';
import '../../widgets/loading_indicator.dart';
import '../music screen/music.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: lessons.text.bold.makeCentered(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VxSwiper.builder(
                  aspectRatio: 16/9,
                  enlargeCenterPage: true,
                  height: 180,
                  itemCount: sliderList2.length,
                  viewportFraction: 0.8,
                  itemBuilder: (context,index){
                    return Image.asset(sliderList2[index],
                      fit: BoxFit.fill,width: 400,
                    ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                  }),
              15.heightBox,
              "All Practices".text.semiBold.size(16).make(),
              15.heightBox,
              StreamBuilder(
                stream: FirebaseFirestore.instance.collection("popular").snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                  if (!snapshot.hasData) {
                    return loadingIndicator();
                  } else{
                    var data = snapshot.data!.docs;
                    return SingleChildScrollView(
                      child: Column(
                          children:
                          List.generate(data.length, (index) => Column(
                            children: [
                              ListTile(
                                onTap: (){
                                  Get.to(()=>MusicPlayer(
                                      title: data[index]['title'],
                                      imageUrl: data[index]['music_img'],
                                      audioUrl: data[index]['audioUrl']));
                                },
                                leading: Image.network(data[index]['img'],width: 100,fit: BoxFit.fill,),
                                title: Text(data[index]['title']),
                                subtitle: "${data[index]['time']}".text.color(Colors.grey).make(),
                                trailing: Icon(Icons.favorite_border),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Divider(),
                              ),
                            ],
                          ))
                      ),
                    );
                  }

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
