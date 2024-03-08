// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:food_ui/common/themes/theme.dart';
import 'package:food_ui/models/onboarding_model.dart';
import 'package:food_ui/view/pages/auth/sign_up_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController();

    List<OnboardingModel> onboard = <OnboardingModel>[
      OnboardingModel(
        desc:
            'Order from the best local restaurants\nwith ease and on-demand delivery',
        image: 'assets/images/bro.png',
        title: 'All your favourites restaurants',
      ),
      OnboardingModel(
        desc: 'Experience peace of mind while tracking your order in real time',
        image: 'assets/images/take_away.png',
        title: 'Unmatched reliability',
      ),
      OnboardingModel(
        desc: 'Something came up? Talk to a real person. We are here to help',
        image: 'assets/images/cofee_shop.png',
        title: '24/7 support\nfor you',
      ),
      OnboardingModel(
        desc:
            'Want a food of your mood?\nGet your tummies filled with the edible good',
        image: 'assets/images/pasta.png',
        title: 'Eat it in your\nown cozy comfort',
      ),
    ];

    return Scaffold(
        body: PageView.builder(
      controller: _pageController,
      itemCount: onboard.length,
      itemBuilder: (context, index) {
        return SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          _pageController.jumpToPage(onboard.length - 1);
                        },
                        child: Text(
                          'Skip',
                          style: kOrangePeetTextStyle.copyWith(
                              fontWeight: semiBold),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 75,
                ),
                Center(
                  child: Image.asset(
                    onboard[index].image!,
                    width: 255,
                    height: 240,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Text(
                  onboard[index].title!,
                  textAlign: TextAlign.center,
                  style: kOrangePeetTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 24),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  onboard[index].desc!,
                  textAlign: TextAlign.center,
                  style: kChineseBlackTextStyle,
                ),
                const SizedBox(
                  height: 100,
                ),
                Visibility(
                  visible: index == onboard.length - 1 ? false : true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: index == 0 ? kOrangePeetColor : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: index == 1 ? kOrangePeetColor : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: index == 2 ? kOrangePeetColor : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: index == 3 ? kOrangePeetColor : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: index == onboard.length - 1 ? true : false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: kOrangePeetColor,
                            minimumSize: const Size(
                              double.infinity,
                              58,
                            ),
                            shape: const RoundedRectangleBorder()),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
                              ),
                              (route) => false);
                        },
                        child: Text(
                          'Get Moody',
                          style: kPapayaWhipTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 18),
                        )),
                  ),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
