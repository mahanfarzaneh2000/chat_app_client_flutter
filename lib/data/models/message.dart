class Message {
  final int id;
  final String message;
  final String timeStamp;
  final String senderUsername;
  final bool isSender;
  Message(this.id, this.message, this.timeStamp, this.senderUsername,
      this.isSender);
}
