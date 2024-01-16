class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  // named arguments
  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction
    (
      id: json['id'],
      title: json['title'],
      amount: json['amount'],
      date: json['date']
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'amount': amount,
    'date': date
  };
}