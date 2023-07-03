import 'package:blocapi/widgets/posts/bloc/post_bloc.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final PostBloc postBloc = PostBloc();
  @override
  void initState() {
    postBloc.add(PostInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts Pages')),
    );
  }
}
