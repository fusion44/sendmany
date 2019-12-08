class MessageItem {
  /// The message ID
  final String id;

  /// The [DateTime] when the message arrived
  final DateTime date;

  /// The sender alias
  final String from;

  /// The message text contents
  final String text;

  /// Whether the message was delivered successfully
  final bool delivered;

  /// True if message above is the same user
  final bool aboveIsSame;

  /// True if message below is the same user
  final bool belowIsSame;

  MessageItem(
    this.id,
    this.date,
    this.from,
    this.text, {
    this.delivered = false,
    this.aboveIsSame = false,
    this.belowIsSame = false,
  });

  MessageItem copyWith({
    String id,
    String from,
    String text,
    bool delivered,
    bool aboveIsSame,
    bool belowIsSame,
  }) {
    return MessageItem(
      id != null ? id : this.id,
      date != null ? date : this.date,
      from != null ? from : this.from,
      text != null ? text : this.text,
      delivered: delivered != null ? delivered : this.delivered,
      aboveIsSame: aboveIsSame != null ? aboveIsSame : this.aboveIsSame,
      belowIsSame: belowIsSame != null ? belowIsSame : this.belowIsSame,
    );
  }
}
