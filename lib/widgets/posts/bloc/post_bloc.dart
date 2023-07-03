import 'dart:async';
import 'dart:developer';
import 'package:http/http.dart' as http;

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<PostInitialEvent>(postInitialEvent);
  }

  FutureOr<void> postInitialEvent(
      PostInitialEvent event, Emitter<PostState> emit) async {
    var client = http.Client();
    try {
      var response = await client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      print(response.body);
    } catch (e) {
      log(e.toString());
    }
  }
}
