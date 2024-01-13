class QuizQuestion {
  final String question;
  final List<String> options;

  QuizQuestion({required this.question, required this.options});

  List<String>getShuffledAnswers(){
    final shuffle=List.of(options);
    shuffle.shuffle();
    return shuffle;
  }
}
