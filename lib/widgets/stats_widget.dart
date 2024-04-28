import 'package:meditation_app/consts/consts.dart';

class StatsWidget extends StatelessWidget {
  final String label;
  final String time;
  final Color color;
  final SizedBox sizedBox;

  const StatsWidget({super.key,
    required this.label,
    required this.time,
    required this.color, required this.sizedBox,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0,bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 5,
          ),

          10.widthBox,
          label.text.color(Colors.grey).make(),
          sizedBox,
          Icon(Icons.watch_later_outlined,size: 12,color: Colors.grey,),
          5.widthBox,
          time.text.size(12).color(Colors.grey).make()

        ],
      ),
    );
  }
}
