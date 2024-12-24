import 'package:dalel/core/utils/app_assets.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String supTitle;

  OnBoardingModel(
      {required this.image, required this.title, required this.supTitle});
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    image: AppAssets.onBoairding1,
    title: "Explore The history with Dalel in a smart way",
    supTitle: "Using our app’s history libraries you can find many historical periods ",
  ),
  OnBoardingModel(
    image: AppAssets.onBoairding2,
    title: "From every place on earth",
    supTitle: "A big variety of ancient places from all over the world",
  ),
  OnBoardingModel(
    image: AppAssets.onBairding3,
    title: "Using modern AI technology for better user experience",
    supTitle: "AI provide recommendations and helps you to continue the search journey",
  )
];
