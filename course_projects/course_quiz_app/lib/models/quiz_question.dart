class QuizQuestion {
  QuizQuestion({required this.question, required this.answers});

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffleList = List.of(answers);

    shuffleList.shuffle();

    return shuffleList;
  }
}
