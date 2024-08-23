import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/constants/colors.dart';

import '../../../features/media/screens/comment/widgets/comment.dart';

class LCommentBox extends StatelessWidget {
  const LCommentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: LColors.darkerGrey,
      ),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            /// -- Title
            SizedBox(
                height: 50,
                child: Center(
                    child: Text(
                  'Comments',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ))),
            Divider(
              thickness: .3,
            ),

            /// -- Comments
            LComment(),
            LComment(),
            LComment(),
            LComment(),
            LComment(),


            // Divider(
            //   indent: 80,
            //   thickness: .2,
            // ),
          ],
        ),
      ),
    );
  }
}
