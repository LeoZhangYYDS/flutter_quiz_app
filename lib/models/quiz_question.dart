class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

//创建一个方法，把 answers list 打乱顺序
  List<String> shuffledAnswers() {
    //create list copy
    final shuffledList = List.of(answers);
    //shuffle copied list and return
    shuffledList.shuffle();
    return shuffledList;
  }
}
