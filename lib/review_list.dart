import 'package:flutter/material.dart'; 
import 'review.dart'; 

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/avatar-1.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/avatar-2.jpg", "Anahí Salgado", "2 review 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/avatar-3.jpg", "Gissele Thomas", "2 review 2 photos", "There is an amazing place in Sri Lanka"),
      ],
    );
  }
}