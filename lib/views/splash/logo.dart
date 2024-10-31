part of 'page.dart';

class _Logo extends StatefulWidget {
  const _Logo();

  @override
  State<_Logo> createState() => _LogoState();
}

class _LogoState extends State<_Logo> with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1000,
      ));

  fetchApis() async {
    user = await UserApi().userProfile();
    localFrame = await FrameApi().all();
    myFrame = await FrameApi().myFrame();
    usernameSignupTextEditingController.text = user!.name;
  }

  @override
  void initState() {
    _animationController.forward();
    // ignore: unnecessary_null_comparison
    if (accessToken == null) {
      Timer(
        const Duration(seconds: 2),
        () => Navigator.pushAndRemoveUntil(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => SignInPage(),
            transitionDuration: const Duration(milliseconds: 300),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          ),
          (predicate) => false,
        ),
      );
    } else {
      fetchApis();
      Timer(
        const Duration(seconds: 2),
        () => Navigator.pushAndRemoveUntil(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => MainPage(),
            transitionDuration: const Duration(milliseconds: 300),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          ),
          (predicate) => false,
        ),
      );
    }

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (_, __) => Opacity(
        opacity: _animationController.value,
        child: SvgPicture.asset('assets/images/Monologue.svg'),
      ),
    );
  }
}
