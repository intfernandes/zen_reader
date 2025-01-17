# Clone from the anx-reader which has been deleted from github

**English** | [简体中文](README_zh.md)

<br>

<p align="center">
  <img src="./docs/images/Anx-logo.jpg" alt="Anx-logo" width="100" />
</p>
<h1 align="center">Anx Reader</h1>
<p align="center">
  <a href="https://github.com/Anxcye/anx-reader/blob/main/LICENSE"><img src="https://img.shields.io/github/license/anxcye/anx-reader" alt="License" ></a>
  <a href="https://github.com/Anxcye/anx-reader/releases"><img src="https://img.shields.io/github/downloads/anxcye/anx-reader/total" alt="Downloads"></a>
  <a href="https://hellogithub.com/repository/819a2b3050204451bed552a8812114e5" target="_blank"><img src="https://abroad.hellogithub.com/v1/widgets/recommend.svg?rid=819a2b3050204451bed552a8812114e5&claim_uid=WBA1XOQirm2GRqs&theme=small" alt="Featured｜HelloGitHub"/></a>
  <a href="https://github.com/anxcye/anx-reader/stargazers"><img src="https://img.shields.io/github/stars/anxcye/anx-reader" alt="stars"></a>
</p>

Anx Reader is an application focused on reading, without any online promotional content. It can help you concentrate more on reading and improve your reading efficiency.

![](./docs/images/9.jpg)

- More comprehensive synchronization features. Supports using WebDAV to sync reading progress, notes, and book files.
- Rich and customizable reading color schemes for a more comfortable reading experience.
- Powerful reading statistics to record your every reading session.
- Rich reading note-taking features for deeper reading.
- Interface adapted for phones and tablets.

### TODO
- [X] UI adaptation for tablets
- [X] Page-turning animation
- [ ] TTS voice reading
- [ ] Reading fonts
- [ ] Translation
- [ ] Support for more file types (currently only supports importing epub)
- [X] Support for WebDAV synchronization
- [ ] Support for Windows, Linux

Telegram group: [https://t.me/AnxReader](https://t.me/AnxReader)

## Building
Want to build Anx Reader from source? Please follow these steps:
- Install [Flutter](https://flutter.dev).
- Clone and enter the project directory.
- Run `flutter pub get`.
- Run `flutter gen-l10n` to generate multi-language files.
- Run `flutter run` to launch the application.

You may encounter Flutter version incompatibility issues. Please refer to the [Flutter documentation](https://flutter.dev/docs/get-started/install).