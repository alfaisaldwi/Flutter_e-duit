import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eduit/app/data/quiz_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class GameQuizController extends GetxController {
  RxList isAnswer = [].obs;
  RxList userAnswer = [].obs;
  RxInt indexAnswerNow = 0.obs;
  RxBool isClick = false.obs;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  RxList sksk = [
    ["qweqwe", "12"],
    ["aaaa", "222"]
  ].obs;

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
    String nilai;
    String uid = auth.currentUser!.uid;

    List p = userAnswer.expand((jawab) => jawab).toList();

    if (p.contains(
            'Ingin mengamankan uang, agar tidak boros walau tidak mendapatan keuntungan') &&
        p.contains('Kurang dari 1 tahun') &&
        p.contains('Mencairkan seluruh uang yang tersisa') &&
        p.contains('Tidak') &&
        p.contains('Belum paham banyak')) {
      nilai = 'Konservatif';
      print('----------- $p');

      await firestore.collection("profile").doc(uid).set({
        "nilai": nilai,
      }, SetOptions(merge: true)).then((value) {});
    } else if (p.contains(
            'Ingin mendapat keuntungan dari investasi meski untuk jangka waktu panjang') &&
        p.contains('1 sampai 5 tahun') &&
        p.contains('Tidak melakukan apa-apa') &&
        p.contains('Mungkin') &&
        p.contains('Cukup paham banyak')) {
      nilai = 'Moderat';

      await firestore.collection("profile").doc(uid).set({
        "nilai": nilai,
      });
    } else if (p.contains(
            'Ingin memperoleh keuntungan & pertumbuhan dana investasi secara signifikan') &&
        p.contains('1 sampai 5 tahun') &&
        p.contains('Tidak melakukan apa-apa') &&
        p.contains('Mungkin') &&
        p.contains('Cukup paham banyak')) {
      nilai = 'Agresif';

      await firestore.collection("profile").doc(uid).set({
        "nilai": nilai,
      });
    } else {
      // nilai = 'konservatif';

      // await firestore.collection("profile").doc(uid).set({
      //   "nilai": nilai,
      // }, SetOptions(merge: true)).then((value) {});
      print('gagal');
      print(userAnswer);
      print(sksk);
      print('----------- $p');
    }
  }

  // submitAnswer() async {
  //   Map<String, dynamic> isAnswerUser = {
  //     "answer": userAnswer,
  //   };
  // }

}
