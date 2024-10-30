part of 'page.dart';

class _Scaffold extends StatefulWidget {
  const _Scaffold({
    required this.initializeControllerFuture,
    required this.controller,
  });

  final Future<void> initializeControllerFuture;
  final CameraController controller;

  @override
  _ScaffoldState createState() => _ScaffoldState();
}

class _ScaffoldState extends State<_Scaffold> {
  Future<void> _takePicture() async {
    try {
      await widget.initializeControllerFuture;

      // 사진을 찍고 경로를 얻기
      final image = await widget.controller.takePicture();

      if (imagePath.length < 10) {
        setState(() {
          imagePath.add(image.path);
        });
      } else {
        print("이미 최대 10개의 이미지가 저장되었습니다.");
      }
    } catch (e) {
      print("사진을 찍는 도중 에러가 발생했습니다: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MonologueColor.gray700,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
            height: 154,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '사진 촬영 (${imagePath.length}/10)',
                      style: const TextStyle(
                        color: MonologueColor.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: imagePath.length >= 4
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => const ChoiceFramePage(),
                                ),
                              );
                            }
                          : null,
                      child: Text(
                        '다음',
                        style: TextStyle(
                          color: imagePath.length >= 4 ? MonologueColor.white : MonologueColor.gray500, // Dim color if less than 4 images
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => SizedBox(
                      height: 76,
                      width: 76,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Image.file(
                              File(imagePath[index]),
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: GestureDetector(
                              onTap: () => setState(() {
                                imagePath.removeAt(index);
                              }),
                              child: SvgPicture.asset('assets/images/delete.svg'),
                            ),
                          )
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 14,
                    ),
                    itemCount: imagePath.length,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          FutureBuilder<void>(
            future: widget.initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // 미리보기
                return CameraPreview(widget.controller);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: _takePicture,
            child: SvgPicture.asset('assets/images/cameraButton.svg'),
          ),
        ],
      ),
    );
  }
}
