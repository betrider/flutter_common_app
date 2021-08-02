import 'package:flutter_common_app/index.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({
    required this.rating,
    this.itemSize = 16,
  })  : assert(rating >= 0),
        assert(rating <= 5);

  /// 평점(0~5)
  final double rating;

  /// 아이콘 사이즈
  final double itemSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          this.rating.toString(),
          style: AppTextStyle.black_16_w400,
        ),
        SizedBox(
          width: 4,
        ),
        RatingBarIndicator(
          rating: this.rating,
          itemBuilder: (context, index) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          itemCount: 5,
          itemSize: itemSize,
          unratedColor: Colors.amber.withAlpha(50),
          direction: Axis.horizontal,
        ),
      ],
    );
  }
}
