import 'package:flutter/material.dart';

/// {@template awesome_chat_bubble}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class AwesomeChatBubble {
  /// {@macro awesome_chat_bubble}
  const AwesomeChatBubble();
}

/// An enum to determine the type of tail to be displayed on the bubble.
enum TailType {
  /// No tail will be displayed.
  none,

  /// A standard tail will be displayed.
  standard,

  /// A curved tail will be displayed.
  curved;
}

///  [ChatBubble] widget.
class ChatBubble extends StatelessWidget {
  /// Creates a [ChatBubble] widget.
  const ChatBubble({
    super.key,
    this.authorName,
    this.timestamp,
    this.message,
    this.isSender,
    this.messageWidget,
    this.replayMessage,
    this.replayToName,
    this.replayIcon,
    this.tailType = TailType.standard,
  });

  /// Author name
  final String? authorName;

  /// Timestamp
  final String? timestamp;

  /// The message to be displayed in the bubble.
  final String? message;

  /// The widget to be displayed in the bubble.
  final Widget? messageWidget;

  /// Determines if the message is sent by the sender.
  final bool? isSender;

  /// The type of tail to be displayed on the bubble.
  final TailType tailType;

  /// Replay info
  final String? replayMessage;

  /// Replay to name
  final String? replayToName;

  /// Replay icon
  final IconData? replayIcon;

  BorderRadius _getBorderRadius() {
    switch (tailType) {
      case TailType.none:
        return BorderRadius.circular(12);
      case TailType.curved:
        return isSender ?? false
            ? const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(24),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(24),
              )
            : const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(12),
              );

      case TailType.standard:
        return isSender ?? false
            ? const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              )
            : const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              );
    }
  }

  @override
  Widget build(BuildContext context) {
    /// The theme of the app.
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSender ?? false
            ? theme.colorScheme.onSurface.withOpacity(0.3)
            : theme.colorScheme.onSurface.withOpacity(0.1),
        borderRadius: _getBorderRadius(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // author name
          if (authorName != null)
            Text(
              authorName ?? '',
              style: theme.textTheme.labelSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),

          // timestamp
          if (timestamp != null)
            Text(
              timestamp ?? '12:00 PM',
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(0.4),
              ),
            ),

          // Gap
          if (authorName != null || timestamp != null)
            const SizedBox(height: 5),

          // if there is a replay message
          if (replayMessage != null)
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: theme.colorScheme.onSurface.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        replayIcon ?? Icons.reply_all,
                        size: theme.textTheme.titleSmall?.fontSize,
                        color: theme.colorScheme.primary,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        replayToName ?? 'John Doe',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onSurface.withOpacity(0.9),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    replayMessage ?? 'This is a replay message',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),

          // Display the message widget if it is not null.
          if (messageWidget != null) messageWidget!,

          // Display the message if it is not null.
          if (message != null && messageWidget == null)
            Text(message ?? 'placeholder value'),
        ],
      ),
    );
  }
}
