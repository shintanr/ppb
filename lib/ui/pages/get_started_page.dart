import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/custom_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/background1.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Fly Like a Bird',
                style: blackTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Explore new world with us and let\nyourself get an amazing experiences',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
              CustomButton(
                title: 'Get Started',
                width: 220,
                margin: EdgeInsets.only(
                  top: 50,
                  bottom: 80,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
              ),
            ],
          ),
        )
      ],
    ));
  }
}
