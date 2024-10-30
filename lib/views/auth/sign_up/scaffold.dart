part of 'page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.logo,
    required this.id,
    required this.password,
    required this.checkPassword,
    required this.username,
    required this.button,
    required this.formkey,
  });
  final Widget logo;
  final Widget id;
  final Widget password;
  final Widget checkPassword;
  final Widget username;
  final Widget button;
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
              const SizedBox(
                height: 20,
              ),
              checkPassword,
              const SizedBox(
                height: 20,
              ),
              username,
              const Spacer(),
              button,
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
