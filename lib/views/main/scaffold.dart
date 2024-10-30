part of './page.dart';

// ignore: must_be_immutable
class _Scaffold extends StatefulWidget {
  const _Scaffold({
    required this.topbar,
    required this.bottomNav,
    required this.body,
  });

  final PreferredSizeWidget topbar;
  final Widget bottomNav;
  final List<Widget> body;

  @override
  State<_Scaffold> createState() => _ScaffoldState();
}

class _ScaffoldState extends State<_Scaffold> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(tabListener);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.removeListener(tabListener);
  }

  void tabListener() {
    setState(() {
      MainPage().currentIndex = tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tabController.index == 1 ? null : widget.topbar,
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: widget.body,
      ),
      bottomNavigationBar: tabController.index == 1 ? null : widget.bottomNav,
    );
  }
}
