# Awesome Chat Bubble

[![pub package](https://img.shields.io/pub/v/awesome_side_sheet.svg)](https://pub.dev/publishers/moesaid.com/packages)

A Flutter package that provides a customizable chat bubble widget.

## Installation 💻

**❗ In order to start using Awesome Chat Bubble you must have the [Flutter SDK][flutter_install_link] installed on your machine.**

Install via `flutter pub add`:

```sh
flutter pub add awesome_chat_bubble
```

<!-- --- -->

<!-- ## Continuous Integration 🤖

Awesome Chat Bubble comes with a built-in [GitHub Actions workflow][github_actions_link] powered by [Very Good Workflows][very_good_workflows_link] but you can also add your preferred CI/CD solution.

Out of the box, on each pull request and push, the CI `formats`, `lints`, and `tests` the code. This ensures the code remains consistent and behaves correctly as you add functionality or make changes. The project uses [Very Good Analysis][very_good_analysis_link] for a strict set of analysis options used by our team. Code coverage is enforced using the [Very Good Workflows][very_good_coverage_link]. -->

<!-- ---

## Running Tests 🧪

For first time users, install the [very_good_cli][very_good_cli_link]:

```sh
dart pub global activate very_good_cli
```

To run all unit tests:

```sh
very_good test --coverage
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
open coverage/index.html
``` -->

# Awesome-Chat-Bubble

```dart
AwesomeChatBubble(
    authorName : 'Author Name',
    timestamp : '12:00 PM',
    message : 'This is a message',
    isSender : true or false,
    messageWidget : null or your custom widget,
    replayMessage : 'This is a replay message',
    replayToName : 'Replay to name',
    replayIcon : Icons.reply,
    tailType : TailType.standard or TailType.none,
    onMore: 'on more function',
    onMoreIcon: 'on more icon' ,
    onMoreWidget : 'on more widget',
),
```
