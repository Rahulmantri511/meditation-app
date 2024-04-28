import 'package:meditation_app/consts/consts.dart';

Widget loadingIndicator({circleColor = Colors.blue}){
  return Center(
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation(circleColor),
    ),
  );
}