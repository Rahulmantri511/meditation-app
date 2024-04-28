import '../consts/consts.dart';

class BarChart extends StatelessWidget {

  final double height1;
  final double height2;
  final Color color1;
  final Color color2;
  final String text;


  const BarChart({super.key,  required this.height1, required this.color1, required this.color2, required this.text, required this.height2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(width: 10,height: height1,color: color1,),
          Container(width: 10,height: height2,color: color2,),
          10.heightBox,
          text.text.make()
        ],
      ),
    );
  }
}
