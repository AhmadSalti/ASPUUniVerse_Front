class Message {
  final String content;
  final DateTime timestamp;
  final bool isUser;

  Message({
    required this.content,
    required this.timestamp,
    required this.isUser,
  });

  // storing messages locally
  Map<String, dynamic> toJson() => {
        'content': content,
        'timestamp': timestamp.toIso8601String(),
        'isUser': isUser,
      };

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        content: json['content'],
        timestamp: DateTime.parse(json['timestamp']),
        isUser: json['isUser'],
      );
}
