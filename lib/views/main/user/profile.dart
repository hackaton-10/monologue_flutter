part of 'page.dart';

// ignore: must_be_immutable
class _Profile extends StatelessWidget {
  _Profile({
    super.key,
    required this.image,
    required this.name,
    required this.id,
  });

  late String? image;
  final String name;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        border: Border.all(
          color: MonologueColor.gray200,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 30,
          ),
          image == null
              ? Image.asset(
                  'assets/images/user.png',
                  height: 80,
                  width: 80,
                )
              : Image.network(image!),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                id,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: MonologueColor.gray600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
