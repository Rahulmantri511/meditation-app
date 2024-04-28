import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:meditation_app/views/music%20screen/music.dart';

import '../../consts/consts.dart';
import '../../widgets/loading_indicator.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "Popular".text.bold.size(20).make(),
      ),
      body: StreamBuilder(
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
                      ),),
                  ),
                );
          }

        },
      )
    );
  }
}
