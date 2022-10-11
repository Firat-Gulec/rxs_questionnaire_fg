class QuestionModel {
  final int id, answer;
  final String question;
  final String image;
  late final List<String> options;

  QuestionModel(
      {required this.id,
      required this.question,
      required this.image,
      required this.answer,
      required this.options});
}

// ignore: constant_identifier_names
const List sample_data = [
  {
    "id": 0,
    "question": "Bulunduğunuz şehiri değiştirmek istermisiniz?",
    "image": "assets/images/breeding-pets.jpg",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 1,
    "question": "Lütfen telefon numarasınızı girermisiniz?",
    "image": "assets/images/healthy-pets.jpg",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question": "Lütfen listeden evcil hayvanınızı şeçermisiniz?",
    "image": "assets/images/breeding-pets.jpg",
    "options": [
      'Köpek',
      'Kedi',
      'Kuş',
      'Kemirgen',
      'Balık',
      'Sürüngen',
      'Böcek'
    ],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "Lütfen listeden ilgilendiğiniz içerikleri şeçermisiniz?",
    "image": "assets/images/healthy-pets.jpg",
    "options": [
      'Pets',
      'Veterinerler',
      'Sahiplenme',
      'Market',
      'Eğitim',
      'Social'
    ],
    "answer_index": 4,
  },
];
