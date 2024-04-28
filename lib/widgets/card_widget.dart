import 'package:get/get.dart';
import 'package:meditation_app/consts/consts.dart';

class CardWidget extends StatelessWidget {
  final String label;
  final String sessions;
  final String time;
  final String image;
  final Color backgroundColor;

  const CardWidget({
    Key? key,
    required this.label,
    required this.sessions,
    required this.time,
    required this.image, required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Row(
            children: [
              Image.asset(image, color: Colors.white, width: 70,)
                  .box
                  .roundedFull
                  .color(backgroundColor)
                  .clip(Clip.antiAlias)
                  .make()
                  .paddingOnly(left: 8,top: 10),
              Text(label, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            children: [
              Text("Sessions", style: TextStyle(color: Colors.grey, fontSize: 16)).paddingOnly(left: 16),
              Text(sessions, style: TextStyle(fontSize: 30)).paddingAll(8),
              SizedBox(width: 25),
              Text("Time", style: TextStyle(color: Colors.grey, fontSize: 16)),
              Text(time, style: TextStyle(fontSize: 30)).paddingAll(8),
            ],
          ),
        ],
      ),
    ).box.color(Colors.grey.withOpacity(0.1)).rounded.make();
  }
}
