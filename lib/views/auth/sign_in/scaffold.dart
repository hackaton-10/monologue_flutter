part of 'page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.logo,
    required this.id,
    required this.password,
    required this.button,
    required this.signupButton,
    required this.formkey,
  });
  final Widget logo;
  final Widget id;
  final Widget password;
  final Widget button;
  final Widget signupButton;
  final GlobalKey<FormState> formkey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(27, 120, 27, 20),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              logo,
              const SizedBox(
                height: 40,
              ),
              id,
              const SizedBox(
                height: 20,
              ),
              password,
              const Spacer(),
              button,
              const SizedBox(
                height: 10,
              ),
              signupButton,
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
