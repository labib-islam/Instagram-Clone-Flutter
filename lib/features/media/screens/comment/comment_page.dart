import 'package:flutter/material.dart';
import 'package:instagram_clone/app.dart';
import 'package:instagram_clone/features/media/screens/comment/widgets/comment.dart';

class LCommentPage extends StatelessWidget {
  const LCommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Comments'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          centerTitle: true,
          toolbarHeight: 80,
        ),
        
        body: ListView.separated(
          separatorBuilder: (_, __) => const Divider(thickness: 0.4, indent: 80,),
          itemBuilder: (_, index) => const LComment(),
          itemCount: 10,
        ));
  }
}
