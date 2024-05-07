

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:ngdemo13_cubit/bloc/update_state.dart';

import '../models/post_model.dart';
import '../services/http_service.dart';

class UpdateCubit extends Cubit<UpdateState>{
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

  UpdateCubit() : super(UpdateInitialState());

  Future<void> onUpdatePost() async{
    emit(UpdateLoadingState());

    String title = titleController.text.toString().trim();
    String body = bodyController.text.toString().trim();

      // Post newPost = context.post;
      // newPost.title = title;
      // newPost.body = body;
    
    // var response=await Network.GET(Network.API_POST_UPDATE, Network.paramsUpdate());
    // if(response!=null){
      // emit(UpdatedPostState(newPost));
    // }else{
    //   emit(UpdateErrorState('Cannot edit post'));
    // }
  }


}