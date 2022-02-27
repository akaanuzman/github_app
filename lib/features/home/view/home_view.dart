// ignore_for_file: must_be_immutable

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:github_app/core/base/view/base_view.dart';
import 'package:github_app/core/components/circle_load/circle_load.dart';
import 'package:github_app/core/components/image/responsive_image.dart';
import 'package:github_app/core/components/text/headline6_text.dart';
import 'package:github_app/core/components/text/subtitle1_text.dart';
import 'package:github_app/core/extensions/app_extensions.dart';
import 'package:github_app/core/components/textformfield/bordered_text_form_field.dart';
import 'package:github_app/features/home/viewModel/home_view_model.dart';
import 'package:github_app/product/components/button/special_icon_button.dart';
import 'package:github_app/product/components/wrap/wrap_icon_text.dart';

class HomeView extends StatelessWidget {
  var usernameController = TextEditingController();
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseView<HomeViewModel>(
        viewModel: HomeViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, HomeViewModel viewModel) => Scaffold(
            appBar: _appBar(context),
            body: viewModel.isLoad
                ? _loadedBody(context, viewModel)
                : const CircleLoad(),
          ),
      );

  AppBar _appBar(BuildContext context) => AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Headline6Text(context: context, data: "Profile"),
      );

  FlipInX _loadedBody(BuildContext context, HomeViewModel viewModel) {
    var loadProfile = viewModel.isShowProfile
        ? _profile(viewModel, context)
        : _notFoundProfile;
    return FlipInX(
      child: ListView(
        padding: context.paddingMedium,
        children: [
          Subtitle1Text(context: context, data: "Username"),
          context.emptySizedHeightBoxLow,
          _textFormField(context, viewModel),
          context.emptySizedHeightBoxLow3x,
          loadProfile
        ],
      ),
    );
  }

  BorderedTextFormField _textFormField(
          BuildContext context, HomeViewModel viewModel) =>
      BorderedTextFormField(
        context: context,
        hintText: "Enter github username.",
        controller: usernameController,
        suffixIcon: _suffixIcon(context, viewModel),
      );

  SpecialIconButton _suffixIcon(
          BuildContext context, HomeViewModel viewModel) =>
      SpecialIconButton(
        context: context,
        icon: Icons.navigate_next,
        onTap: () => viewModel.fetchUserItems(usernameController.text),
      );

  Text get _notFoundProfile => const Text(
        "Please make sure you entered the username correctly!",
        textAlign: TextAlign.center,
      );

  FlipInX _profile(HomeViewModel viewModel, BuildContext context) => FlipInX(
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            _image(viewModel, context),
            context.emptySizedHeightBoxNormal,
            _profileInfoItems(context, viewModel),
            _repositoryButton(context, viewModel)
          ],
        ),
      );

  ResponsiveImage _image(HomeViewModel viewModel, BuildContext context) =>
      ResponsiveImage(
        url: viewModel.userModel.avatar_url ?? "",
        context: context,
      );

  GridView _profileInfoItems(BuildContext context, HomeViewModel viewModel) =>
      GridView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3.5,
        ),
        children: [
          WrapIconText(
            context: context,
            icon: Icons.person,
            title: viewModel.userModel.login ?? "NULL_USERNAME",
          ),
          WrapIconText(
            context: context,
            icon: Icons.business_center,
            title: viewModel.userModel.company ?? "Has no company",
          ),
          WrapIconText(
            context: context,
            icon: Icons.location_on,
            title: viewModel.userModel.location ?? "Has no location",
          ),
          WrapIconText(
            context: context,
            icon: Icons.mood,
            title: viewModel.userModel.name ?? "Has no name.",
          ),
          WrapIconText(
            context: context,
            icon: Icons.group,
            title: "${viewModel.userModel.followers} followers",
          ),
          WrapIconText(
            context: context,
            icon: Icons.groups,
            title: "${viewModel.userModel.following} following",
          )
        ],
      );

  GestureDetector _repositoryButton(
          BuildContext context, HomeViewModel viewModel) =>
      GestureDetector(
        onTap: () {},
        child: AspectRatio(
          aspectRatio: 5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: context.highBorderRadius,
              color: context.grey4,
            ),
            child: _repositoryButtonContent(context, viewModel),
          ),
        ),
      );

  Center _repositoryButtonContent(
          BuildContext context, HomeViewModel viewModel) =>
      Center(
        child: WrapIconText(
          context: context,
          icon: Icons.assignment,
          title: "${viewModel.userModel.public_repos} Repository",
        ),
      );
}
