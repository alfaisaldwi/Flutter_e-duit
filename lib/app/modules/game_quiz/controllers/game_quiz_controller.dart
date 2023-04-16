import 'package:eduit/app/data/quiz_model.dart';
import 'package:get/get.dart';

class GameQuizController extends GetxController {
  RxList isAnswer = [].obs;
  RxList userAnswer = [].obs;
  RxInt indexAnswerNow = 0.obs;
  RxBool isClick = false.obs;

  // final Rx<QuizModel?> dataQuiz = (null as QuizModel?).obs;

  late final Rx<QuizModel> quizData;

  changeIndexAnswerNow(int paramIndexAnswer) {
    indexAnswerNow.value = paramIndexAnswer;
  }

  addUserAnswer(String paramUserAnswer) {
    userAnswer[indexAnswerNow.value] = paramUserAnswer;

    // isAnswer[indexAnswerNow.value] = true;
  }

  submitAnswer() async {
    Map<String, dynamic> isAnswerUser = {
      "answer": userAnswer,
    };
  }
}
