<div align=center>

<!-- labels -->

![][views] ![][stars] ![][forks] ![][issues] ![][license] ![][repo-size]

<!-- logo/title -->

<picture>
  <source media="(prefers-color-scheme: dark, (max-width:300px))" srcset="./assets/images/logo1920.png">
  <source media="(prefers-color-scheme: light,(max-width:300px))" srcset="./assets/images/logo1500.png">
  <img src="./assets/images/logo1920.png" width="300px" alt="infinitunes-mobile">
</picture>

### [WIP] 🎵 An open-source Music Player App built with Flutter.

#### Check out the [Web Version][site] of this app.

## Building from Source

</div>

- Fetch latest source code from master branch.

```
git clone https://github.com/rajput-hemant/infinitunes-mobile
cd infinitunes-mobile
```

- Rename **.env.example** => **.env**, add your own [**JioSaavn API**][api] Endpoint.

```js
JIOSAAVN_ENDPOINT = "https://saavn.me" <- change this
```

- Run the app with Android Studio or VS Code. Or the command line:

```
flutter pub get
flutter run
```

- To build data/model classes, run the following command:

```
rps gen || dart run build_runner build --delete-conflicting-outputs
```

- To watch for changes in source code and automatically build data/model classes, run the following command:

```
rps gen_w || dart run build_runner watch --delete-conflicting-outputs
```

> **Note**
> You need to active rps (Run Pubspec Script) executabe globally if you haven't already.
> To do so, run the following command:

```
pub global activate rps
```

<div align=center>

#### [JioSaavn API (Unofficial)][api] by [Sumit Kolhe][cc], [API Docs][api-docs]

## Contributors:

[![][contributors]][contributors-graph]

_Note: It may take up to 24h for the [contrib.rocks][contrib-rocks] plugin to update because it's refreshed once a day._

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

</div>

<!----------------------------------{ Labels }--------------------------------->

[views]: https://komarev.com/ghpvc/?username=infinitunes-mobile&label=view%20counter&color=red&style=flat
[repo-size]: https://img.shields.io/github/repo-size/rajput-hemant/infinitunes-mobile
[issues]: https://img.shields.io/github/issues-raw/rajput-hemant/infinitunes-mobile
[license]: https://img.shields.io/github/license/rajput-hemant/infinitunes-mobile
[forks]: https://img.shields.io/github/forks/rajput-hemant/infinitunes-mobile?style=flat
[stars]: https://img.shields.io/github/stars/rajput-hemant/infinitunes-mobile
[contributors]: https://contrib.rocks/image?repo=rajput-hemant/infinitunes-mobile&max=500
[contributors-graph]: https://github.com/rajput-hemant/infinitunes-mobile/graphs/contributors
[contrib-rocks]: https://contrib.rocks/preview?repo=rajput-hemant%2Finfinitunes-mobile

<!-----------------------------------{ Links }---------------------------------->

[site]: https://infinitunes.vercel.app

<!------------------------------------{ api }----------------------------------->

[api]: https://github.com/sumitkolhe/jiosaavn-api
[api-docs]: https://docs.saavn.me
[cc]: https://github.com/sumitkolhe
