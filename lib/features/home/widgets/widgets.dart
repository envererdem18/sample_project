part of "../home_screen.dart";

extension HomeScreenWidgets on HomeScreen {
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Consumer<HomeScreenViewModel>(
        builder: (ctx, viewModel, widget) {
          return Center(
            child: Text("Count: ${viewModel.count}"),
          );
        },
      ),
      actions: [
        Consumer<HomeScreenViewModel>(
          builder: (ctx, viewModel, widget) {
            return IconButton(
              onPressed: () {
                viewModel.goToSettings(context);
              },
              icon: const Icon(Icons.settings),
            );
          },
        ),
      ],
    );
  }

  Consumer<HomeScreenViewModel> _buildBody() {
    return Consumer<HomeScreenViewModel>(
      builder: (ctx, viewModel, widget) {
        return viewModel.isLoading
            ? const SizedBox(height: 4, child: LinearProgressIndicator())
            : ListView.builder(
                itemCount: viewModel.articles.length,
                itemBuilder: (ctx, index) {
                  final article = viewModel.articles[index];
                  return ArticleCard(article: article);
                },
              );
      },
    );
  }

  Consumer<HomeScreenViewModel> _buildFAB() {
    return Consumer<HomeScreenViewModel>(
      builder: (ctx, viewModel, widget) {
        return Container(
          decoration: BoxDecoration(
            color: ColorPalette.primaryButton,
            borderRadius: const BorderRadius.all(Radius.circular(45)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  viewModel.incrementCount();
                },
                child: const Text(
                  "+",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {
                  viewModel.decrementCount();
                },
                child: const Text(
                  "-",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
