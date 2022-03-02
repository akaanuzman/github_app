import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/base/view/base_view.dart';
import '../../../core/components/circle_load/circle_load.dart';
import '../viewmodel/repository_view_model.dart';
import '../../../core/extensions/app_extensions.dart';
import '../../../product/components/appbar/special_appbar.dart';

class RepositoryView extends StatelessWidget {
  final String username;
  const RepositoryView({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseView<RepositoryViewModel>(
        viewModel: RepositoryViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
          model.fetchAllRepositoryItems(username);
        },
        onPageBuilder: (BuildContext context, RepositoryViewModel viewModel) =>
            Scaffold(
          appBar: _appBar(context),
          body: viewModel.isLoad
              ? _loadedBody(context, viewModel)
              : const CircleLoad(),
        ),
      );

  SpeacialAppBar _appBar(BuildContext context) => SpeacialAppBar(
        context: context,
        title: "Repository",
        iconThemeData: IconThemeData(color: context.textColor),
      );

  FlipInX _loadedBody(BuildContext context, RepositoryViewModel viewModel) =>
      FlipInX(
        child: ListView.separated(
          padding: context.paddingNormal,
          itemBuilder: (context, index) => _item(viewModel, index, context),
          separatorBuilder: (context, index) => _divider(context),
          itemCount: viewModel.repositoryModel.length,
        ),
      );

  ListTile _item(
          RepositoryViewModel viewModel, int index, BuildContext context) =>
      ListTile(
        onTap: () => _launchURL(viewModel, index),
        title: _title(viewModel, index),
        subtitle: _subtitle(context, viewModel, index),
      );

  Text _title(RepositoryViewModel viewModel, int index) =>
      Text(viewModel.repositoryModel[index].name ?? "NULL_REPO");

  Padding _subtitle(
          BuildContext context, RepositoryViewModel viewModel, int index) =>
      Padding(
        padding: context.verticalPaddingLow,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: context.lowValue,
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: context.randomColor,
            ),
            Text(viewModel.repositoryModel[index].language ?? "Readme"),
            context.emptySizedWidthBoxLow,
            Text(
                "Updated ${viewModel.repositoryModel[index].updated_at!.substring(0, 10)}.")
          ],
        ),
      );

  Padding _divider(BuildContext context) => Padding(
        padding: EdgeInsets.fromLTRB(
          0,
          context.normalValue,
          0,
          context.lowValue,
        ),
        child: const Divider(
          thickness: 2,
        ),
      );

  void _launchURL(RepositoryViewModel viewModel, int index) async {
    if (await canLaunch(viewModel.repositoryModel[index].html_url ?? "")) {
      await launch(viewModel.repositoryModel[index].html_url ?? "",
          forceSafariVC: true, forceWebView: true, enableJavaScript: true);
    }
  }
}
