import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "Fernando",
      photoUrl: "https://avatars.githubusercontent.com/u/4109319?v=4",
    );
    state = HomeState.sucess;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        imagem: AppImages.blocks,
        questionsAnswered: 1,
        level: Level.easy,
        questions: [
          QuestionModel(
            title: "Are you enjoying Flutter?",
            answers: [
              AnswerModel(title: "Yeah, I'm Enjoying."),
              AnswerModel(title: "I think that's awesome."),
              AnswerModel(title: "I'am in loving with that.'"),
              AnswerModel(title: "It's amazing."),
            ],
          ),
          QuestionModel(
            title: "Are you enjoying Flutter?",
            answers: [
              AnswerModel(title: "Yeah, I'm Enjoying."),
              AnswerModel(title: "I think that's awesome."),
              AnswerModel(title: "I'am in loving with that.'"),
              AnswerModel(title: "It's amazing."),
            ],
          ),
        ],
      )
    ];
    state = HomeState.sucess;
  }
}
