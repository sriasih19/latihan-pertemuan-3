class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Normal Text',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        Text(
          'Letter Spacing',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 1, // diubah dari 5 ke 1
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Word Spacing Example',
          style: TextStyle(
            fontSize: 20,
            wordSpacing: 20, // diubah dari 10 ke 20
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Line 1\nLine 2\nLine 3',
          style: TextStyle(
            fontSize: 20,
            height: 1, // diubah dari 2 ke 1
          ),
        ),
      ],
    );
  }
}