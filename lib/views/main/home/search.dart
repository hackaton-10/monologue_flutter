part of 'page.dart';

class _Search extends StatelessWidget {
  const _Search({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchHomeTextEditingController,
      cursorColor: Colors.black,
      decoration: const InputDecoration(
        hintText: '검색할 프레임을 입력해주세요',
        prefixIcon: Icon(Icons.search),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
