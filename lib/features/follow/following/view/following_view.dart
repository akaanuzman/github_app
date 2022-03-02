import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../../../core/base/view/base_view.dart';
import '../../../../core/components/circle_load/circle_load.dart';
import '../../../../core/components/image/responsive_image.dart';
import '../../../../product/components/appbar/special_appbar.dart';
import '../../../../core/extensions/app_extensions.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../repository/view/repository_view.dart';
import '../viewmodel/following_view_model.dart';

class FollowingView extends StatelessWidget {
  final String username;
  const FollowingView({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseView<FollowingViewModel>(
        viewModel: FollowingViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
          model.fetchAllFollowing(username);
        },
        onPageBuilder: (BuildContext context, FollowingViewModel viewModel) =>
            Scaffold(
          appBar: SpeacialAppBar(
            context: context,
            title: "Followers",
            iconThemeData: IconThemeData(color: context.textColor),
          ),
          //TODO: make component
          body: viewModel.isLoad
              ? FlipInX(
                child: ListView.separated(
                    padding: context.paddingNormal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => ListTile(
                      onTap: () => _launchURL(viewModel, index),
                      leading: ResponsiveImage(
                          url: viewModel.followingModel[index].avatar_url ??
                              "NULL_URL",
                          context: context),
                      title: Padding(
                        padding: context.horizontalPaddingLow,
                        child: Text(viewModel.followingModel[index].login ??
                            "NULL_USERNAME"),
                      ),
                      subtitle: Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => RepositoryView(
                                  username:
                                      viewModel.followingModel[index].login ??
                                          "sa"),
                            ),
                          ),
                          child: const Text("See repository"),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => Padding(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        context.normalValue,
                        0,
                        context.lowValue,
                      ),
                      child: const Divider(
                        thickness: 2,
                      ),
                    ),
                    itemCount: viewModel.followingModel.length,
                  ),
              )
              : const CircleLoad(),
        ),
      );

  void _launchURL(FollowingViewModel viewModel, int index) async {
    if (await canLaunch(viewModel.followingModel[index].html_url ?? "")) {
      await launch(viewModel.followingModel[index].html_url ?? "",
          forceSafariVC: true, forceWebView: true, enableJavaScript: true);
    }
  }
}
