import 'package:flutter/material.dart';

class CommentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50, // Background similar to the image
      appBar: AppBar(
        title: Text('Comments (45)'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          CommentWidget(
            profileImage: 'https://www.hollywoodreporter.com/wp-content/uploads/2012/07/chan_a.jpg?w=1440&h=810&crop=1', // Replace with real URLs
            name: 'Satyam',
            role: 'Farmer',
            content: 'The generated Lorem Ipsum is therefore always free from...',
            time: '2hrs',
            likes: 125,
            replies: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: CommentWidget(
              profileImage: 'https://static.wikia.nocookie.net/listofdeaths/images/0/0d/Jackie_chan.webp/revision/latest/scale-to-width-down/300?cb=20221111172112',
              name: 'Prakash',
              role: 'Business',
              content: 'The generated Lorem Ipsum',
              time: '2hrs',
              likes: 125,
              replies: 0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: CommentWidget(
              profileImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD9LzK0g8FMhgx1rxaGJXvfP8tJuFR4uRfyw&s',
              name: 'Deepak Verma',
              role: 'Agriculturist',
              content: '@prakash The generated Lorem Ipsum',
              time: '2hrs',
              likes: 125,
              replies: 0,
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                // Action for "View More Comments"
              },
              child: Text(
                'View More Comments',
                style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  final String profileImage;
  final String name;
  final String role;
  final String content;
  final String time;
  final int likes;
  final int replies;

  const CommentWidget({
    required this.profileImage,
    required this.name,
    required this.role,
    required this.content,
    required this.time,
    required this.likes,
    required this.replies,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CircleAvatar(
                //   backgroundImage: NetworkImage(profileImage),
                //   radius: 24,
                // ),
                // FlutterLogo(size: 20,),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        role,
                        style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                      ),
                      SizedBox(height: 5),
                      Text(
                        content,
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  time,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                ),
                Row(
                  children: [
                    Icon(Icons.thumb_up, color: Colors.orange, size: 16),
                    SizedBox(width: 4),
                    Text('$likes'),
                    SizedBox(width: 16),
                    Icon(Icons.comment, color: Colors.orange, size: 16),
                    SizedBox(width: 4),
                    Text('$replies'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




// Comment design
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: CommentThreadScreen(),
//   ));
// }

// class CommentThreadScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orange.shade50, // Background similar to the image
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               CommentThread(
//                 profileImage: 'https://via.placeholder.com/150', // Replace with actual image URL
//                 isFirst: true,
//                 isLast: false,
//               ),
//               CommentThread(
//                 profileImage: 'https://via.placeholder.com/150',
//                 isFirst: false,
//                 isLast: false,
//               ),
//               CommentThread(
//                 profileImage: 'https://via.placeholder.com/150',
//                 isFirst: false,
//                 isLast: true,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CommentThread extends StatelessWidget {
//   final String profileImage;
//   final bool isFirst;
//   final bool isLast;

//   const CommentThread({
//     required this.profileImage,
//     required this.isFirst,
//     required this.isLast,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.topCenter,
//       children: [
//         CustomPaint(
//           size: Size(50, isLast ? 60 : 120), // Height adjusts based on thread position
//           painter: ThreadPainter(isFirst: isFirst, isLast: isLast),
//         ),
//         CircleAvatar(
//           backgroundImage: NetworkImage(profileImage),
//           radius: 28,
//           backgroundColor: Colors.white,
//         ),
//       ],
//     );
//   }
// }

// class ThreadPainter extends CustomPainter {
//   final bool isFirst;
//   final bool isLast;

//   ThreadPainter({required this.isFirst, required this.isLast});

//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint paint = Paint()
//       ..color = Colors.grey.shade400
//       ..strokeWidth = 2
//       ..style = PaintingStyle.stroke;

//     final double circleRadius = 28.0; // Matches the avatar size

//     // Start and end positions for the line
//     final double startY = isFirst ? circleRadius : 0;
//     final double endY = isLast ? circleRadius : size.height;

//     // Draw the vertical line
//     canvas.drawLine(
//       Offset(size.width / 2, startY),
//       Offset(size.width / 2, endY),
//       paint,
//     );
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }
