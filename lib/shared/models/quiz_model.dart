import 'package:dev_quiz/shared/models/question_model.dart';

enum Level { easy, normal, hard, expert }

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionsAnswered;
  final String imagem;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionsAnswered = 0,
    required this.imagem,
    required this.level,
  });
}
