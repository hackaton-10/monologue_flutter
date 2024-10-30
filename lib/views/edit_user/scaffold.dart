part of 'page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    super.key,
    required this.textfield,
    required this.button,
    required this.formKey,
  });
  final Widget textfield;
  final Widget button;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MonologueTopbar(),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const Divider(
              thickness: 1,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  const MonologueUserImage(),
                  const SizedBox(
                    height: 40,
                  ),
                  textfield,
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: button,
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
