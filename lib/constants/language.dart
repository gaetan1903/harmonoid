import 'package:flutter/widgets.dart';

import 'package:harmonoid/constants/strings.dart';
import 'package:harmonoid/core/configuration.dart';

class LanguageRegion {
  final String code;
  final String countryCode;
  final String name;
  final String country;
  final String translator;
  final String github;

  const LanguageRegion({
    required this.code,
    required this.countryCode,
    required this.name,
    required this.country,
    required this.translator,
    required this.github,
  });

  static const enUs = LanguageRegion(
    code: 'en',
    countryCode: 'US',
    name: 'English',
    country: 'United States',
    translator: 'alexmercerind',
    github: 'https://github.com/alexmercerind',
  );
  static const ruRu = LanguageRegion(
    code: 'ru',
    countryCode: 'RU',
    name: 'Русский',
    country: 'Россия',
    translator: 'raitonoberu',
    github: 'https://github.com/raitonoberu',
  );
  static const slSi = LanguageRegion(
    code: 'sl',
    countryCode: 'SI',
    name: 'Slovenija',
    country: 'Slovenščina',
    translator: 'mytja',
    github: 'https://github.com/mytja',
  );
  static const ptBr = LanguageRegion(
    code: 'pt',
    countryCode: 'BR',
    name: 'Português',
    country: 'Brasil',
    translator: 'bdlukaa',
    github: 'https://github.com/bdlukaa',
  );
  static const hiIn = LanguageRegion(
    code: 'hi',
    countryCode: 'IN',
    name: 'हिंदी',
    country: 'भारत',
    translator: 'alexmercerind',
    github: 'https://github.com/alexmercerind',
  );
  static const deDe = LanguageRegion(
      code: 'de',
      countryCode: 'DE',
      name: 'Deutsche',
      country: 'Deutschland',
      translator: 'MickLesk',
      github: 'https://github.com/MickLesk');
  static const nlNl = LanguageRegion(
    code: 'nl',
    countryCode: 'NL',
    name: 'Nederlands',
    country: 'Nederland',
    translator: 'kebabinjeneus',
    github: 'https://github.com/kebabinjeneus',
  );
  static const svSe = LanguageRegion(
    code: 'sv',
    countryCode: 'Se',
    name: 'Svenska',
    country: 'Sverige',
    translator: 'Max Haureus',
    github: '',
  );
  static const frFr = LanguageRegion(
    code: 'fr',
    countryCode: 'FR',
    name: 'Français',
    country: 'France',
    translator: 'Gaetan Jonathan',
    github: 'https://github.com/gaetan1903',
  );

  static const values = <LanguageRegion?>[
    enUs,
    ruRu,
    slSi,
    ptBr,
    hiIn,
    deDe,
    nlNl,
    svSe,
    frFr
  ];

  int get index => values.indexOf(this);
}

class Language extends Strings with ChangeNotifier {
  LanguageRegion? current;

  static Language? get() => language;

  static Future<void> init({required LanguageRegion languageRegion}) async {
    language = new Language();
    await language!.set(languageRegion: languageRegion);
  }

  Future<void> set({LanguageRegion? languageRegion}) async {
    switch (languageRegion) {
      case LanguageRegion.enUs:
        {
          this.STRING_INTERNET_ERROR = 'Check your internet connection.';
          this.STRING_SEARCH_HEADER = 'Search music';
          this.STRING_SEARCH_MODE_SUBHEADER = 'What are you looking for?';
          this.STRING_COLLECTION = 'Collection';
          this.STRING_NOW_PLAYING = 'Now playing';
          this.STRING_SETTING = 'Settings';
          this.STRING_OK = 'OKAY';
          this.STRING_YES = 'YES';
          this.STRING_NO = 'NO';
          this.STRING_ALBUM = 'Albums';
          this.STRING_TRACK = 'Tracks';
          this.STRING_TOP_TRACKS = 'TOP TRACKS';
          this.STRING_ARTIST = 'Artists';
          this.STRING_SAVED = 'Saved';
          this.STRING_THEME_MODE_LIGHT = 'Light';
          this.STRING_THEME_MODE_DARK = 'Dark';
          this.STRING_OPTIONS = 'Options';
          this.STRING_FOLLOWERS = 'followers';
          this.STRING_PLAYS = 'plays';
          this.STRING_EXPORT_TRACK = 'Export track';
          this.STRING_DELETE_TRACK = 'Delete track';
          this.STRING_SEARCH_MODE_SUBTITLE_ALBUM =
              'Search music from your favorite albums';
          this.STRING_SEARCH_MODE_SUBTITLE_TRACK =
              'Search for your favorite tracks';
          this.STRING_SEARCH_MODE_SUBTITLE_ARTIST =
              'Search music from your favorite artists';
          this.STRING_SEARCH_HISTORY_SUBHEADER = 'Your recent searches';
          this.STRING_SEARCH_RESULT_LOADER_LABEL = 'Getting your music...';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ALBUM =
              'Closest album from the result';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_TRACK =
              'Closest track from the result';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ARTIST =
              'Closest artist from the result';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ALBUM = 'SAVE ALBUM';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_TRACK = 'SAVE TRACK';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ARTIST = 'SAVE ARTIST';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ALBUM = 'SHOW ALBUM';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_TRACK = 'SHOW TRACK';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ARTIST = 'SHOW ARTIST';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ALBUM =
              'More albums from the result';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_TRACK =
              'More tracks from the result';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ARTIST =
              'More similar artists';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_TITLE = 'You cannot go back';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_SUBTITLE =
              'One or more tracks are being saved offline. Please wait until all the tracks are saved.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_TITLE =
              'The track could not be saved';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_SUBTITLE =
              'It is strongly recommend to check your internet connection & try again in a while.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_TITLE =
              'We all have bad days';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_SUBTITLE =
              'Exception is encountered while saving this track. This generally means that you need to check & update your server. This error has nothing to do with this application.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_TITLE = 'Wait';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_SUBTITLE =
              'This track is already being downloaded.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_TITLE =
              'This track is already saved';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_SUBTITLE =
              'Do you want to download this track once again?';
          this.STRING_ALBUM_VIEW_LOADER_LABEL = 'Getting tracks...';
          this.STRING_ALBUM_VIEW_TRACKS_SUBHEADER =
              'Here are the tracks from this album';
          this.STRING_ALBUM_VIEW_INFO_SUBHEADER = 'Some insights of the album';
          this.STRING_LOCAL_TOP_BODY_ALBUM_EMPTY =
              'Search & save some music to see it here.\nSpin the refresh to see new stuff.';
          this.STRING_LOCAL_TOP_SUBHEADER_ALBUM = 'Latest album';
          this.STRING_LOCAL_OTHER_SUBHEADER_ALBUM = 'More albums';
          this.STRING_LOCAL_TOP_SUBHEADER_TRACK = 'Latest track';
          this.STRING_LOCAL_OTHER_SUBHEADER_TRACK = 'More tracks';
          this.STRING_LOCAL_TOP_SUBHEADER_ARTIST = 'Latest artist';
          this.STRING_LOCAL_OTHER_SUBHEADER_ARTIST = 'More artists';
          this.STRING_LOCAL_ALBUM_VIEW_TRACKS_SUBHEADER =
              'Tracks from the album';
          this.STRING_LOCAL_ALBUM_VIEW_INFO_SUBHEADER =
              'Some insights of the album';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_HEADER =
              'Are you sure?';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_BODY =
              'Do you want to remove this album saved on your device?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_HEADER =
              'Are you sure?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_BODY =
              'Do you want to remove this track saved on your device?';
          this.STRING_NOW_PLAYING_NEXT_TRACK = 'NEXT';
          this.STRING_NOW_PLAYING_PREVIOUS_TRACK = 'PREVIOUS';
          this.STRING_NOW_PLAYING_NOT_PLAYING_TITLE =
              'Nothing is being played.';
          this.STRING_NOW_PLAYING_NOT_PLAYING_SUBTITLE =
              'Play from your collection.';
          this.STRING_NOW_PLAYING_NOT_PLAYING_HEADER = "We're all set...";
          this.STRING_SETTING_GITHUB = 'GITHUB';
          this.STRING_SETTING_STAR_GITHUB = 'STAR THE PROJECT';
          this.STRING_SETTING_STARGAZERS_TITLE = 'Project Stargazers';
          this.STRING_SETTING_STARGAZERS_SUBTITLE =
              'Thanks a lot for your support';
          this.STRING_SETTING_LANGUAGE_TITLE = 'Language';
          this.STRING_SETTING_LANGUAGE_SUBTITLE =
              'Change the language of the app';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_TITLE =
              'App restart required';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_SUBTITLE =
              'Do you want to restart the app now?';
          this.STRING_ABOUT_TITLE = 'About';
          this.STRING_ABOUT_SUBTITLE =
              'Information about the app & its developers';
          this.STRING_SETTING_SERVER_CHANGE_TITLE = 'Server';
          this.STRING_SETTING_SERVER_CHANGE_SUBTITLE =
              'Change where the app requests for its content';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_HINT = 'Enter a server URL';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_LABEL = 'Server URL';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_INVALID =
              'It is not a valid server URL for the app.';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_NETWORK =
              'Please check your internet connection.';
          this.STRING_SETTING_SERVER_CHANGE_DONE =
              'Server changed successfully.';
          this.STRING_SETTING_SERVER_CHANGE_CHANGING =
              'Changing server for the app...';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_TITLE =
              'Translation Providers';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_SUBTITLE =
              'Thanks a lot for your support to the app.';
          this.STRING_SETTING_ACCENT_COLOR_TITLE = 'Accent';
          this.STRING_SETTING_ACCENT_COLOR_SUBTITLE =
              'Change the accent coloring of the app';
          this.STRING_SETTING_THEME_TITLE = 'Theme';
          this.STRING_SETTING_THEME_SUBTITLE =
              'Change the app to light or dark mode';
          this.STRING_NO_DOWNLOAD_UPDATE = 'Your app is already updated';
          this.STRING_DOWNLOAD_UPDATE = 'DOWNLOAD UPDATE';
          this.STRING_SETTING_APP_VERSION_TITLE = 'Version';
          this.STRING_SETTING_APP_VERSION_SUBTITLE =
              'Information about current version of the app';
          this.STRING_SETTING_APP_VERSION_INSTALLED = 'Installed version';
          this.STRING_SETTING_APP_VERSION_LATEST = 'Latest version';
          this.STRING_MENU = 'Menu';
          this.STRING_SEARCH_COLLECTION = 'Search collection';
          this.STRING_SWITCH_THEME = 'Switch theme';
          this.STRING_DISCOVER = 'Discover';
          this.STRING_PLAY = 'Play';
          this.STRING_PAUSE = 'Pause';
          this.STRING_DELETE = 'Delete';
          this.STRING_SHARE = 'Share';
          this.STRING_ADD_TO_PLAYLIST = 'Add to playlist';
          this.STRING_SAVE_TO_DOWNLOADS = 'Save to downloads';
          this.STRING_LOCAL_SEARCH_WELCOME =
              'Enter something to search in your collection';
          this.STRING_LOCAL_SEARCH_NO_RESULTS =
              'Nothing like that could be found in your collection';
          this.STRING_PLAYLIST = 'Playlist';
          this.STRING_PLAYLISTS = 'Playlists';
          this.STRING_PLAYLISTS_SUBHEADER = 'Your playlists';
          this.STRING_PLAYLISTS_CREATE = 'Create a new playlist';
          this.STRING_PLAYLISTS_TEXT_FIELD_LABEL = 'Playlist name';
          this.STRING_PLAYLISTS_TEXT_FIELD_HINT = 'Name for your new playlist';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_HEADER =
              'Are you sure?';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_BODY =
              'Do you want to delete this playlist?';
          this.STRING_CANCEL = 'CANCEL';
          this.STRING_PLAYLIST_ADD_DIALOG_TITLE = 'Add to playlist';
          this.STRING_PLAYLIST_ADD_DIALOG_BODY =
              'Select a playlist to add this track';
          this.STRING_PLAYLIST_TRACKS_SUBHEADER =
              'Here are the tracks in this playlist';
          this.STRING_TRANSFERS = 'Transfers';
          this.STRING_THEME_MODE_SYSTEM = 'Follow system theme';
          this.STRING_SETTING_INDEXING_TITLE = 'Indexing';
          this.STRING_SETTING_INDEXING_SUBTITLE =
              'Reindex your music collection';
          this.STRING_SETTING_INDEXING_LINEAR_PROGRESS_INDICATOR =
              'Indexed NUMBER_STRING of TOTAL_STRING tracks...';
          this.STRING_SETTING_INDEXING_DONE = 'Indexed';
          this.STRING_SETTING_INDEXING_WARNING =
              'Do not interrupt the process.';
          this.STRING_REFRESH = 'REFRESH';
          this.STRING_SEARCH_NO_RECENT_SEARCHES =
              'Your recent searches will show here';
          this.STRING_NO_INTERNET_TITLE = 'No internet';
          this.STRING_NO_INTERNET_SUBTITLE = 'Check your connection.';
          this.STRING_NO_COLLECTION_TITLE = 'Empty collection';
          this.STRING_NO_COLLECTION_SUBTITLE =
              'No music found.\nChange where to look for the music from settings.';
          this.STRING_DOWNLOAD_COMPLETED = 'Download completed.';
          this.STRING_DOWNLOAD_FAILED = 'Download failed.';
          this.STRING_DISCORD = 'DISCORD SERVER';
          this.STRING_EXIT_TITLE = 'Exit';
          this.STRING_EXIT_SUBTITLE = 'Do you want to exit Harmonoid?';
          this.STRING_A_TO_Z = 'A to Z';
          this.STRING_DATE_ADDED = 'Date added';
          this.STRING_SETTING_ACCENT_COLOR_AUTOMATIC = 'Automatic accent';
          this.STRING_SETTING_MISCELLANEOUS_TITLE = 'Miscellaneous';
          this.STRING_SETTING_MISCELLANEOUS_SUBTITLE =
              'Other settings in the app';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_TITLE =
              'Enable iOS mechanics';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_SUBTITLE =
              'Set platform to TargetPlatform.iOS';
          this.STRING_SELECTED_DIRECTORY = 'Selected directory:';
          this.STRING_LYRICS = 'Lyrics';
          this.STRING_NOTIFICATION_LYRICS_TITLE = 'Notification lyrics';
          this.STRING_NOTIFICATION_LYRICS_SUBTITLE =
              'Show lyrics in a notification.';
          this.STRING_LYRICS_RETRIEVING = 'Retrieving lyrics...';
          this.STRING_LYRICS_NOT_FOUND = 'Lyrics not found.';
        }
        break;
      case LanguageRegion.ruRu:
        {
          this.STRING_INTERNET_ERROR = 'Проверьте интернет-соединение.';
          this.STRING_SEARCH_HEADER = 'Поиск музыки';
          this.STRING_SEARCH_MODE_SUBHEADER = 'Что вы ищете?';
          this.STRING_COLLECTION = 'Коллекция';
          this.STRING_NOW_PLAYING = 'Плеер';
          this.STRING_SETTING = 'Настройки';
          this.STRING_OK = 'ОК';
          this.STRING_YES = 'ДА';
          this.STRING_NO = 'НЕТ';
          this.STRING_ALBUM = 'Альбомы';
          this.STRING_TRACK = 'Треки';
          this.STRING_TOP_TRACKS = 'ЛУЧШИЕ ТРЕКИ';
          this.STRING_ARTIST = 'Исполнители';
          this.STRING_SAVED = 'Сохранено';
          this.STRING_THEME_MODE_LIGHT = 'Светлая';
          this.STRING_THEME_MODE_DARK = 'Тёмная';
          this.STRING_OPTIONS = 'Параметры';
          this.STRING_FOLLOWERS = 'подписчиков';
          this.STRING_PLAYS = 'прослушиваний';
          this.STRING_EXPORT_TRACK = 'Экспортировать трек';
          this.STRING_DELETE_TRACK = 'Удалить трек';
          this.STRING_SEARCH_MODE_SUBTITLE_ALBUM = 'Поиск любимых альбомов';
          this.STRING_SEARCH_MODE_SUBTITLE_TRACK = 'Поиск любимых треков';
          this.STRING_SEARCH_MODE_SUBTITLE_ARTIST =
              'Поиск любимых исполнителей';
          this.STRING_SEARCH_HISTORY_SUBHEADER = 'Недавние запросы';
          this.STRING_SEARCH_RESULT_LOADER_LABEL = 'Получаем музыку...';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ALBUM = 'Лучшее совпадение';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_TRACK = 'Лучшее совпадение';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ARTIST = 'Лучшее совпадение';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ALBUM = 'СКАЧАТЬ АЛЬБОМ';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_TRACK = 'СКАЧАТЬ ТРЕК';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ARTIST = 'СКАЧАТЬ ТРЕКИ';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ALBUM =
              'ПОКАЗАТЬ АЛЬБОМ';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_TRACK = 'ПОКАЗАТЬ ТРЕК';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ARTIST =
              'ПОКАЗАТЬ ИСПОЛНИТЕЛЯ';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ALBUM =
              'Другие результаты поиска';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_TRACK =
              'Другие результаты поиска';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ARTIST =
              'Больше похожих исполнителей';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_TITLE = 'Вы не можете вернуться';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_SUBTITLE =
              'В данный момент один или несколько треков скачиваются. Пожалуйста, дождитесь окончания загрузки.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_TITLE =
              'Трек не может быть сохранён';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_SUBTITLE =
              'Пожалуйста, проверьте интернет-соединение и попробуйте снова.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_TITLE =
              'У всех бывают плохие дни';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_SUBTITLE =
              'We have encountered an error while saving this track. This generally means that you need to check & update your server. This error has nothing to do with this application.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_TITLE = 'Подождите';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_SUBTITLE =
              'Этот трек уже скачивается.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_TITLE =
              'Трек уже скачан';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_SUBTITLE =
              'Хотите скачать его заново?';
          this.STRING_ALBUM_VIEW_LOADER_LABEL = 'Получаем треки...';
          this.STRING_ALBUM_VIEW_TRACKS_SUBHEADER = 'Треки из этого альбома';
          this.STRING_ALBUM_VIEW_INFO_SUBHEADER = 'Немного об альбоме';
          this.STRING_LOCAL_TOP_BODY_ALBUM_EMPTY =
              'Ищите и сохраняйте музыку, чтобы увидеть её здесь.';
          this.STRING_LOCAL_TOP_SUBHEADER_ALBUM =
              'Последний сохранённый альбом';
          this.STRING_LOCAL_OTHER_SUBHEADER_ALBUM = 'Другие альбомы';
          this.STRING_LOCAL_TOP_SUBHEADER_TRACK = 'Последний сохранённый трек';
          this.STRING_LOCAL_OTHER_SUBHEADER_TRACK = 'Другие треки';
          this.STRING_LOCAL_TOP_SUBHEADER_ARTIST =
              'Последний сохранённый исполнитель';
          this.STRING_LOCAL_OTHER_SUBHEADER_ARTIST = 'Другие исполнители';
          this.STRING_LOCAL_ALBUM_VIEW_TRACKS_SUBHEADER = 'Сохранённые треки';
          this.STRING_LOCAL_ALBUM_VIEW_INFO_SUBHEADER = 'Немного об альбоме';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_HEADER =
              'Удалить альбом';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_BODY =
              'Вы действительно хотите удалить альбом?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_HEADER =
              'Удалить трек';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_BODY =
              'Вы действительно хотите удалить сохранённый трек?';
          this.STRING_NOW_PLAYING_NEXT_TRACK = 'ВПЕРЁД';
          this.STRING_NOW_PLAYING_PREVIOUS_TRACK = 'НАЗАД';
          this.STRING_NOW_PLAYING_NOT_PLAYING_TITLE = 'Ничего не играет.';
          this.STRING_NOW_PLAYING_NOT_PLAYING_SUBTITLE =
              'Включите что-нибудь из коллекции.';
          this.STRING_NOW_PLAYING_NOT_PLAYING_HEADER = 'Всё готово.';
          this.STRING_SETTING_GITHUB = 'GITHUB';
          this.STRING_SETTING_STAR_GITHUB = 'Оценить проект';
          this.STRING_SETTING_STARGAZERS_TITLE = 'Оценили проект';
          this.STRING_SETTING_STARGAZERS_SUBTITLE = 'Спасибо за вашу поддержку';
          this.STRING_SETTING_LANGUAGE_TITLE = 'Язык';
          this.STRING_SETTING_LANGUAGE_SUBTITLE = 'Изменить язык приложения';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_TITLE =
              'Необходимо перезапустить приложение';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_SUBTITLE =
              'Перезапустить сейчас?';
          this.STRING_ABOUT_TITLE = 'О приложении';
          this.STRING_ABOUT_SUBTITLE =
              'Информация о проекте и его разработчиках.';
          this.STRING_SETTING_SERVER_CHANGE_TITLE = 'Сервер';
          this.STRING_SETTING_SERVER_CHANGE_SUBTITLE =
              'Изменить источник данных';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_HINT =
              'Введите ссылку на сервер';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_LABEL = 'Ссылка';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_INVALID =
              'Эта ссылка не подходит.';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_NETWORK =
              'Проверьте интернет-соединение.';
          this.STRING_SETTING_SERVER_CHANGE_DONE = 'Сервер успешно изменён.';
          this.STRING_SETTING_SERVER_CHANGE_CHANGING = 'Изменение сервера...';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_TITLE = 'Переводчики';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_SUBTITLE =
              'Огромное спасибо за вашу поддержку';
          this.STRING_SETTING_ACCENT_COLOR_TITLE = 'Цвет акцента';
          this.STRING_SETTING_ACCENT_COLOR_SUBTITLE =
              'Изменить дополнительный цвет приложения';
          this.STRING_SETTING_THEME_TITLE = 'Тема';
          this.STRING_SETTING_THEME_SUBTITLE = 'Сменить тему приложения';
          this.STRING_NO_DOWNLOAD_UPDATE = 'Установлена последняя версия';
          this.STRING_DOWNLOAD_UPDATE = 'СКАЧАТЬ ОБНОВЛЕНИЕ';
          this.STRING_SETTING_APP_VERSION_TITLE = 'Версия приложения';
          this.STRING_SETTING_APP_VERSION_SUBTITLE =
              'Информация о текущей версии приложения';
          this.STRING_SETTING_APP_VERSION_INSTALLED = 'Текущая версия';
          this.STRING_SETTING_APP_VERSION_LATEST = 'Последняя версия';
          this.STRING_MENU = 'Меню';
          this.STRING_SEARCH_COLLECTION = 'Поиск по коллекции';
          this.STRING_SWITCH_THEME = 'Сменить тему';
          this.STRING_DISCOVER = 'Поиск';
          this.STRING_PLAY = 'Плей';
          this.STRING_PAUSE = 'Пауза';
          this.STRING_DELETE = 'Удалить';
          this.STRING_SHARE = 'Поделиться';
          this.STRING_ADD_TO_PLAYLIST = 'Добавить в плейлист';
          this.STRING_SAVE_TO_DOWNLOADS = 'Сохранить в "Downloads"';
          this.STRING_LOCAL_SEARCH_WELCOME = 'Поиск среди загруженных треков';
          this.STRING_LOCAL_SEARCH_NO_RESULTS = 'В коллекции ничего не найдено';
          this.STRING_PLAYLIST = 'Плейлист';
          this.STRING_PLAYLISTS = 'Плейлисты';
          this.STRING_PLAYLISTS_SUBHEADER = 'Ваши плейлисты';
          this.STRING_PLAYLISTS_CREATE = 'Создать плейлист';
          this.STRING_PLAYLISTS_TEXT_FIELD_LABEL = 'Название';
          this.STRING_PLAYLISTS_TEXT_FIELD_HINT = 'Назовите плейлист';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_HEADER =
              'Вы уверены?';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_BODY =
              'Хотите удалить плейлист?';
          this.STRING_CANCEL = 'ОТМЕНА';
          this.STRING_PLAYLIST_ADD_DIALOG_TITLE = 'Добавить в плейлист';
          this.STRING_PLAYLIST_ADD_DIALOG_BODY = 'Выберите плейлист';
          this.STRING_PLAYLIST_TRACKS_SUBHEADER = 'Треки в плейлисте';
          this.STRING_TRANSFERS = 'Transfers';
          this.STRING_THEME_MODE_SYSTEM = 'Как в системе';
          this.STRING_SETTING_INDEXING_TITLE = 'Индексация';
          this.STRING_SETTING_INDEXING_SUBTITLE = 'Поиск треков на устройстве';
          this.STRING_SETTING_INDEXING_LINEAR_PROGRESS_INDICATOR =
              'Индексировано NUMBER_STRING треков из TOTAL_STRING...';
          this.STRING_SETTING_INDEXING_DONE = 'Ваша коллекция индексирована';
          this.STRING_SETTING_INDEXING_WARNING = 'Не прерывайте процесс.';
          this.STRING_REFRESH = 'ОБНОВИТЬ';
          this.STRING_SEARCH_NO_RECENT_SEARCHES =
              'Здесь появится история поиска';
          this.STRING_NO_INTERNET_TITLE = 'Нет доступа в Интернет';
          this.STRING_NO_INTERNET_SUBTITLE = 'Проверьте подключение.';
          this.STRING_NO_COLLECTION_TITLE = 'Пустая коллекция';
          this.STRING_NO_COLLECTION_SUBTITLE = 'Ничего не найдено.';
          this.STRING_DOWNLOAD_COMPLETED = 'Загрузка завершена.';
          this.STRING_DOWNLOAD_FAILED = 'Загрузка не удалась.';
          this.STRING_DISCORD = 'DISCORD';
          this.STRING_EXIT_TITLE = 'Выход';
          this.STRING_EXIT_SUBTITLE = 'Хотите выйти?';
          this.STRING_A_TO_Z = 'По алфавиту';
          this.STRING_DATE_ADDED = 'По дате добавления';
          this.STRING_SETTING_ACCENT_COLOR_AUTOMATIC = 'Автоматически';
          this.STRING_SETTING_MISCELLANEOUS_TITLE = 'Прочее';
          this.STRING_SETTING_MISCELLANEOUS_SUBTITLE = 'Другие настройки';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_TITLE =
              'Включить механики iOS';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_SUBTITLE =
              'Задать платформу TargetPlatform.iOS';
          this.STRING_SELECTED_DIRECTORY = 'Selected directory:';
          this.STRING_LYRICS = 'Lyrics';
          this.STRING_NOTIFICATION_LYRICS_TITLE = 'Notification lyrics';
          this.STRING_NOTIFICATION_LYRICS_SUBTITLE =
              'Show lyrics in a notification.';
          this.STRING_LYRICS_RETRIEVING = 'Retrieving lyrics...';
          this.STRING_LYRICS_NOT_FOUND = 'Lyrics not found.';
        }
        break;
      case LanguageRegion.slSi:
        {
          this.STRING_INTERNET_ERROR =
              'Prosimo, preverite vašo internetno povezavo';
          this.STRING_SEARCH_HEADER = 'Poišči glasbo';
          this.STRING_SEARCH_MODE_SUBHEADER = 'Kaj pa iščeš?';
          this.STRING_COLLECTION = 'Zbirka';
          this.STRING_NOW_PLAYING = 'Zdaj se predvaja';
          this.STRING_SETTING = 'Nastavitve';
          this.STRING_OK = 'OK';
          this.STRING_YES = 'JA';
          this.STRING_NO = 'NE';
          this.STRING_ALBUM = 'Albumi';
          this.STRING_TRACK = 'Pesmi';
          this.STRING_TOP_TRACKS = 'NAJBOLJŠE PESMI';
          this.STRING_ARTIST = 'Skladatelji';
          this.STRING_SAVED = 'Shranjeno';
          this.STRING_THEME_MODE_LIGHT = 'Svetli';
          this.STRING_THEME_MODE_DARK = 'Temni';
          this.STRING_OPTIONS = 'Opcije';
          this.STRING_FOLLOWERS = 'sledilci';
          this.STRING_PLAYS = 'se predvaja';
          this.STRING_EXPORT_TRACK = 'Izvozi pesem';
          this.STRING_DELETE_TRACK = 'Izbriši pesem';
          this.STRING_SEARCH_MODE_SUBTITLE_ALBUM =
              'Preišči glasbo iz priljubljenih albumov';
          this.STRING_SEARCH_MODE_SUBTITLE_TRACK = 'Preišči za najljubše pesmi';
          this.STRING_SEARCH_MODE_SUBTITLE_ARTIST =
              'Preišči za pesmi od priljubljenih avtorjev';
          this.STRING_SEARCH_HISTORY_SUBHEADER = 'Tvoja nedavna iskanja';
          this.STRING_SEARCH_RESULT_LOADER_LABEL =
              'Pridobivanje tvoje glasbe...';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ALBUM =
              'Tukaj je najbližji album tvojemu iskanju';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_TRACK =
              'Tukaj je najbližja pesem tvojemu iskanju';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ARTIST =
              'Tukaj je tvoj avtor';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ALBUM = 'PRENESI ALBUM';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_TRACK = 'PRENESI PESEM';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ARTIST = 'PRENESI PESMI';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ALBUM = 'POKAŽI ALBUM';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_TRACK = 'POKAŽI PESEM';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ARTIST =
              'POKAŽI SKLADATELJA';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ALBUM = 'Še več albumov';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_TRACK = 'Še več pesmi';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ARTIST = 'Podobni avtorji';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_TITLE = 'Ne moreš iti nazaj';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_SUBTITLE =
              'Ena ali več pesmi se prenašata. Prosimo počakajte.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_TITLE =
              'Pesmi ni bilo mogoče shraniti';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_SUBTITLE =
              'Priporočamo, da preverite internetno povezavo in poskusite znova kasneje.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_TITLE =
              'Vsi imamo slabe dni... :-(';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_SUBTITLE =
              'We have encountered an error while saving this track. This generally means that you need to check & update your server. This error has nothing to do with this application.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_TITLE = 'Počakaj';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_SUBTITLE =
              'Ta pesem se že prenaša.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_TITLE =
              'Pesem je že shranjena.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_SUBTITLE =
              'Ali hočeš še enkrat prenesti to pesem?';
          this.STRING_ALBUM_VIEW_LOADER_LABEL = 'Iščem pesmi...';
          this.STRING_ALBUM_VIEW_TRACKS_SUBHEADER =
              'Tukaj so pesmi iz tega albuma';
          this.STRING_ALBUM_VIEW_INFO_SUBHEADER = 'Nekaj informacij o albumu';
          this.STRING_LOCAL_TOP_BODY_ALBUM_EMPTY =
              'Poišči in shrani nekaj glasbe.\nZavrti osveži gumb, da se pokažejo nove pesmi.';
          this.STRING_LOCAL_TOP_SUBHEADER_ALBUM =
              'Tukaj je zadnji shranjeni avtor';
          this.STRING_LOCAL_OTHER_SUBHEADER_ALBUM = 'Tukaj so shranjeni albumi';
          this.STRING_LOCAL_TOP_SUBHEADER_TRACK =
              'Here is the latest track saved by you';
          this.STRING_LOCAL_OTHER_SUBHEADER_TRACK =
              'Here are your other tracks';
          this.STRING_LOCAL_TOP_SUBHEADER_ARTIST =
              'Here is the latest artist saved by you';
          this.STRING_LOCAL_OTHER_SUBHEADER_ARTIST =
              'Tukaj so ustvarjalci, shranjeni v tvoji napravi.';
          this.STRING_LOCAL_ALBUM_VIEW_TRACKS_SUBHEADER =
              'Tukaj so shranjene pesmi';
          this.STRING_LOCAL_ALBUM_VIEW_INFO_SUBHEADER = 'Nekaj stvari o albumu';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_HEADER =
              'Izbriši ta album?';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_BODY =
              'Ali si res prepričan...';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_HEADER =
              'Ali hočeš izbrisati to?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_BODY =
              'Ali res hočeš izbrisati to pesem?';
          this.STRING_NOW_PLAYING_NEXT_TRACK = 'NASLEDNJA';
          this.STRING_NOW_PLAYING_PREVIOUS_TRACK = 'PREJŠNJA';
          this.STRING_NOW_PLAYING_NOT_PLAYING_TITLE =
              'Nič se trenutno ne predvaja';
          this.STRING_NOW_PLAYING_NOT_PLAYING_SUBTITLE = 'Predvajaj iz zbirke';
          this.STRING_NOW_PLAYING_NOT_PLAYING_HEADER = "Pripravljeni smo...";
          this.STRING_SETTING_GITHUB = 'GITHUB';
          this.STRING_SETTING_STAR_GITHUB = 'VŠEČKAJ PROJEKT';
          this.STRING_SETTING_STARGAZERS_TITLE = 'Všečkerji projekta';
          this.STRING_SETTING_STARGAZERS_SUBTITLE =
              'Najlepša hvala za vašo podporo';
          this.STRING_SETTING_LANGUAGE_TITLE = 'Jezik';
          this.STRING_SETTING_LANGUAGE_SUBTITLE =
              'Spremenite način prikaza aplikacije';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_TITLE =
              'Ponovni zagon aplikacije je potreben';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_SUBTITLE =
              'Ali želiš ponovno zagnati aplikacijo zdaj?';
          this.STRING_SETTING_SERVER_CHANGE_TITLE = 'Strežnik';
          this.STRING_SETTING_SERVER_CHANGE_SUBTITLE =
              'Spremeni, kje aplikacija zahteva prenose';
          this.STRING_ABOUT_TITLE = 'O nas';
          this.STRING_ABOUT_SUBTITLE = 'Informacije o nas...';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_HINT =
              'Napiši strežnikov naslov';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_LABEL =
              'URL naslov strežnika';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_INVALID = 'Ni veljaven URL.';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_NETWORK =
              'Prosimo, preverite vašo internetno povezavo.';
          this.STRING_SETTING_SERVER_CHANGE_DONE = 'Strežnik zamenjan.';
          this.STRING_SETTING_SERVER_CHANGE_CHANGING = 'Menjanje strežnika...';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_TITLE = 'Prevajalci projekta';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_SUBTITLE =
              'Najlepša hvala za podporo pri aplikaciji';
          this.STRING_SETTING_ACCENT_COLOR_TITLE = 'Odtenek';
          this.STRING_SETTING_ACCENT_COLOR_SUBTITLE =
              'Zamenjaj odtenek na aplikaciji';
          this.STRING_SETTING_THEME_TITLE = 'Način';
          this.STRING_SETTING_THEME_SUBTITLE =
              'Menjaj med temnim in svetlim načinom';
          this.STRING_NO_DOWNLOAD_UPDATE = 'Aplikacija je že posodobljena.';
          this.STRING_DOWNLOAD_UPDATE = 'PRENESI POSODOBITEV';
          this.STRING_SETTING_APP_VERSION_TITLE = 'Verzija aplikacije';
          this.STRING_SETTING_APP_VERSION_SUBTITLE =
              'Informacija o trenutni verziji.';
          this.STRING_SETTING_APP_VERSION_INSTALLED = 'Nameščena verzija';
          this.STRING_SETTING_APP_VERSION_LATEST = 'Najnovejša verzija';
          this.STRING_MENU = 'Meni';
          this.STRING_SEARCH_COLLECTION = 'Preišči kolekcijo';
          this.STRING_SWITCH_THEME = 'Zamenjaj temo';
          this.STRING_DISCOVER = 'Razišči';
          this.STRING_PLAY = 'Predvajaj';
          this.STRING_PAUSE = 'Ustavi';
          this.STRING_DELETE = 'Izbriši';
          this.STRING_SHARE = 'Deli';
          this.STRING_ADD_TO_PLAYLIST = 'Dodaj na seznam predvajanja';
          this.STRING_SAVE_TO_DOWNLOADS = 'Shrani med prenose';
          this.STRING_DELETE = 'Izbriši';
          this.STRING_LOCAL_SEARCH_WELCOME =
              'Vpiši nekaj za iskanje v tvoji kolekciji';
          this.STRING_LOCAL_SEARCH_NO_RESULTS =
              'Nič nisem našel v tvoji kolekciji';
          this.STRING_PLAYLIST = 'Seznam predvajanja';
          this.STRING_PLAYLISTS = 'Seznami predvajanja';
          this.STRING_PLAYLISTS_SUBHEADER = 'Tvoji seznami predvajanja';
          this.STRING_PLAYLISTS_CREATE = 'Ustvari seznam predvajanja';
          this.STRING_PLAYLISTS_TEXT_FIELD_LABEL = 'Ime Seznama predvajanja';
          this.STRING_PLAYLISTS_TEXT_FIELD_HINT =
              'Ime za tvoj seznam predvajanja';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_HEADER =
              'Ali si prepričan?';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_BODY =
              'Ali hočeš odstraniti seznam predvajanja?';
          this.STRING_CANCEL = 'PREKLIČI';
          this.STRING_PLAYLIST_ADD_DIALOG_TITLE = 'Dodaj na seznam predvajanja';
          this.STRING_PLAYLIST_ADD_DIALOG_BODY =
              'Izberi pesem za seznam predvajanja';
          this.STRING_PLAYLIST_TRACKS_SUBHEADER =
              'Tukaj so pesmi iz seznama predvajanja';
          this.STRING_TRANSFERS = 'Prenosi';
          this.STRING_THEME_MODE_SYSTEM = 'Sledi sistemski temi';
          this.STRING_SETTING_INDEXING_TITLE = 'Indeksiraj';
          this.STRING_SETTING_INDEXING_SUBTITLE = 'Znova indeksiraj kolekcijo';
          this.STRING_SETTING_INDEXING_LINEAR_PROGRESS_INDICATOR =
              'Indeksiranih NUMBER_STRING od TOTAL_STRING pesmi...';
          this.STRING_SETTING_INDEXING_DONE = 'Tvoja kolekcija je indeksirana';
          this.STRING_SETTING_INDEXING_WARNING = 'Ne prekinjaj procesa.';
          this.STRING_REFRESH = 'OSVEŽI';
          this.STRING_SEARCH_NO_RECENT_SEARCHES =
              'Tvoji nedavni prenosi so tukaj';
          this.STRING_NO_INTERNET_TITLE = 'Ni interneta';
          this.STRING_NO_INTERNET_SUBTITLE = 'Preveri internetno povezavo';
          this.STRING_NO_COLLECTION_TITLE = 'Prazna kolekcija';
          this.STRING_NO_COLLECTION_SUBTITLE = 'Nič glasbe ni najdene';
          this.STRING_DOWNLOAD_COMPLETED = 'Prenos končan.';
          this.STRING_DOWNLOAD_FAILED = 'Prenos ni uspel.';
          this.STRING_DISCORD = 'DISCORD STREŽNIK';
          this.STRING_EXIT_TITLE = 'Izhod';
          this.STRING_EXIT_SUBTITLE = 'Ali res hočeš zapreti aplikacijo?';
          this.STRING_A_TO_Z = 'Od A do Z';
          this.STRING_DATE_ADDED = 'Po datumu prenosa';
          this.STRING_SETTING_ACCENT_COLOR_AUTOMATIC =
              'Avtomatska barvna shema';
          this.STRING_SETTING_MISCELLANEOUS_TITLE = 'Ostalo';
          this.STRING_SETTING_MISCELLANEOUS_SUBTITLE =
              'Ostale nastavitve aplikacije';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_TITLE =
              'Vključi iOS uporabniški vmesnik';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_SUBTITLE =
              'Nastavi platformo na TargetPlatform.iOS';
          this.STRING_SELECTED_DIRECTORY = 'Selected directory:';
          this.STRING_LYRICS = 'Lyrics';
          this.STRING_NOTIFICATION_LYRICS_TITLE = 'Notification lyrics';
          this.STRING_NOTIFICATION_LYRICS_SUBTITLE =
              'Show lyrics in a notification.';
          this.STRING_LYRICS_RETRIEVING = 'Retrieving lyrics...';
          this.STRING_LYRICS_NOT_FOUND = 'Lyrics not found.';
        }
        break;
      case LanguageRegion.ptBr:
        {
          this.STRING_INTERNET_ERROR =
              'Verifique sua conexão com a internet...';
          this.STRING_SEARCH_HEADER = 'Procurar uma música';
          this.STRING_SEARCH_MODE_SUBHEADER = 'O que você está procurando?';
          this.STRING_COLLECTION = 'Coleção';
          this.STRING_NOW_PLAYING = 'Tocando agora';
          this.STRING_SETTING = 'Configurações';
          this.STRING_OK = 'OK';
          this.STRING_YES = 'SIM';
          this.STRING_NO = 'NÃO';
          this.STRING_ALBUM = 'Álbuns';
          this.STRING_TRACK = 'Músicas';
          this.STRING_TOP_TRACKS = 'TOP MÚSICAS';
          this.STRING_ARTIST = 'Artistas';
          this.STRING_SAVED = 'Salvo';
          this.STRING_THEME_MODE_LIGHT = 'Claro';
          this.STRING_THEME_MODE_DARK = 'Escuro';
          this.STRING_OPTIONS = 'Opções';
          this.STRING_FOLLOWERS = 'seguidores';
          this.STRING_PLAYS = 'tocadas';
          this.STRING_EXPORT_TRACK = 'Exportar música';
          this.STRING_DELETE_TRACK = 'Deletar música';
          this.STRING_SEARCH_MODE_SUBTITLE_ALBUM =
              'Procurar músicas do seu álbum favorito';
          this.STRING_SEARCH_MODE_SUBTITLE_TRACK =
              'Procurar suas músicas preferidas';
          this.STRING_SEARCH_MODE_SUBTITLE_ARTIST =
              'Procurar músicas do seu artistas preferidos';
          this.STRING_SEARCH_HISTORY_SUBHEADER = 'Suas buscas recentes';
          this.STRING_SEARCH_RESULT_LOADER_LABEL = 'Baixando sua música...';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ALBUM =
              'Aqui está o álbum mais perto de sua pesquisa';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_TRACK =
              'Aqui está a música mais perta de sua pesquisa';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ARTIST =
              'Aqui está o artista que você procurou';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ALBUM = 'BAIXAR ÁLBUM';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_TRACK = 'BAIXAR MÚSICA';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ARTIST =
              'BAIXAR ARTISTA';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ALBUM = 'MOSTRAR ÁLBUM';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_TRACK = 'MOSTRAR MÚSICA';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ARTIST =
              'MOSTRAR ARTISTA';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ALBUM =
              'Mais álbums da pesquisa';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_TRACK =
              'Mais músicas da pesquisa';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ARTIST =
              'Mais artistas parecidos';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_TITLE = 'Você não pode voltar';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_SUBTITLE =
              'Uma ou mais músicas estão sendo salvadas offline. Por favor aguarde até que todas sejam baixadas.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_TITLE =
              'A música não pode ser baixada';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_SUBTITLE =
              'Nós recomendamos que você verifique sua conexão com a internet & tente novamente em alguns minutos.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_TITLE =
              'Todos nós temos dias ruins';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_SUBTITLE =
              'We have encountered an error while saving this track. This generally means that you need to check & update your server. This error has nothing to do with this application.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_TITLE = 'Aguarde';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_SUBTITLE =
              'Essa música já está sendo baixada.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_TITLE =
              'Essa música já está salva';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_SUBTITLE =
              'Você quer baixar essa música novamente?';
          this.STRING_ALBUM_VIEW_LOADER_LABEL = 'Buscando músicas...';
          this.STRING_ALBUM_VIEW_TRACKS_SUBHEADER =
              'Aqui estão as músicas desse álbum';
          this.STRING_ALBUM_VIEW_INFO_SUBHEADER = 'Alguns insights do álbum';
          this.STRING_LOCAL_TOP_BODY_ALBUM_EMPTY =
              'Procure & salve algumas músicas para vê-las aqui.\nGire para atualizar e ver as novidades.';
          this.STRING_LOCAL_TOP_SUBHEADER_ALBUM =
              'Aqui está o último álbum que você salvou';
          this.STRING_LOCAL_OTHER_SUBHEADER_ALBUM =
              'Aqui estão alguns outros álbuns';
          this.STRING_LOCAL_TOP_SUBHEADER_TRACK =
              'Aqui está a última música que você salvou';
          this.STRING_LOCAL_OTHER_SUBHEADER_TRACK =
              'Aqui estão suas outras músicas';
          this.STRING_LOCAL_TOP_SUBHEADER_ARTIST =
              'Aqui está o último artista que você salvou';
          this.STRING_LOCAL_OTHER_SUBHEADER_ARTIST =
              'Aqui estão os artistas salvos no seu dispositivo.';
          this.STRING_LOCAL_ALBUM_VIEW_TRACKS_SUBHEADER =
              'Aqui estão algumas músicas salvas por você';
          this.STRING_LOCAL_ALBUM_VIEW_INFO_SUBHEADER =
              'Alguns insights do álbum';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_HEADER =
              'Deletar esse álbum?';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_BODY =
              'Você tem certeza que quer apagar...';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_HEADER =
              'Você que apagar?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_BODY =
              'Você quer apagar essa música do dispositivo?';
          this.STRING_NOW_PLAYING_NEXT_TRACK = 'PRÓXIMO';
          this.STRING_NOW_PLAYING_PREVIOUS_TRACK = 'ANTERIOR';
          this.STRING_NOW_PLAYING_NOT_PLAYING_TITLE = 'Nada tocando...';
          this.STRING_NOW_PLAYING_NOT_PLAYING_SUBTITLE =
              'Tocar da sua coleção ';
          this.STRING_NOW_PLAYING_NOT_PLAYING_HEADER =
              "Estamos com tudo pronto...";
          this.STRING_SETTING_GITHUB = 'GITHUB';
          this.STRING_SETTING_STAR_GITHUB = 'Avaliar o projeto';
          this.STRING_SETTING_STARGAZERS_TITLE = 'Projeto Stargazers';
          this.STRING_SETTING_STARGAZERS_SUBTITLE =
              'Muito obrigado pela sua compreensão';
          this.STRING_SETTING_LANGUAGE_TITLE = 'Idioma';
          this.STRING_SETTING_LANGUAGE_SUBTITLE =
              'Mude o jeito que você enxerga o aplicativo';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_TITLE =
              'Reinicialização necessária';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_SUBTITLE =
              'Você quer reiniciar o aplicativo agora?';
          this.STRING_ABOUT_TITLE = 'Sobre';
          this.STRING_ABOUT_SUBTITLE = 'Saiba mais sobre nós';
          this.STRING_SETTING_SERVER_CHANGE_TITLE = 'Servidor';
          this.STRING_SETTING_SERVER_CHANGE_SUBTITLE =
              'Alterar onde o aplicativo solicita seu conteudo';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_HINT =
              'Insira uma URL do servidor';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_LABEL = 'URL do servidor';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_INVALID =
              'Essa não é uma URL válida do servidor.';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_NETWORK =
              'Por favor verifique sua conexão com a internet.';
          this.STRING_SETTING_SERVER_CHANGE_DONE =
              'Servidor alterado com sucesso.';
          this.STRING_SETTING_SERVER_CHANGE_CHANGING = 'Mudando de servidor...';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_TITLE = 'Tradutores';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_SUBTITLE =
              'Muito obrigado pelo seu apoio ao aplicativo';
          this.STRING_SETTING_ACCENT_COLOR_TITLE = 'Cor de destaque';
          this.STRING_SETTING_ACCENT_COLOR_SUBTITLE =
              'Mude a cor de destaque do aplicativo';
          this.STRING_SETTING_THEME_TITLE = 'Tema';
          this.STRING_SETTING_THEME_SUBTITLE =
              'Mude o tema do aplicativo para claro ou escuro';
          this.STRING_NO_DOWNLOAD_UPDATE = 'Seu aplicativo já está atualizado';
          this.STRING_DOWNLOAD_UPDATE = 'BAIXAR ATUALIZAÇÃO';
          this.STRING_SETTING_APP_VERSION_TITLE = 'Versão';
          this.STRING_SETTING_APP_VERSION_SUBTITLE =
              'Informações sobre a versão atual do aplicativo';
          this.STRING_SETTING_APP_VERSION_INSTALLED = 'Versão instalada';
          this.STRING_SETTING_APP_VERSION_LATEST = 'Última versão';
          this.STRING_MENU = 'Menu';
          this.STRING_SEARCH_COLLECTION = 'Procurar Coleção';
          this.STRING_SWITCH_THEME = 'Trocar tema';
          this.STRING_DISCOVER = 'Descobrir';
          this.STRING_PLAY = 'Tocar';
          this.STRING_PAUSE = 'Pausar';
          this.STRING_DELETE = 'Deletar';
          this.STRING_SHARE = 'Compartilhar';
          this.STRING_ADD_TO_PLAYLIST = 'Adicionar à playlist';
          this.STRING_SAVE_TO_DOWNLOADS = 'Salvar nos downloads';
          this.STRING_LOCAL_SEARCH_WELCOME =
              'Adicione algo para pesquisar na sua coleção';
          this.STRING_LOCAL_SEARCH_NO_RESULTS =
              'Nada parecido pôde ser encontrado em sua coleção';
          this.STRING_PLAYLIST = 'Playlist';
          this.STRING_PLAYLISTS = 'Playlists';
          this.STRING_PLAYLISTS_SUBHEADER = 'Playlists criadas por você';
          this.STRING_PLAYLISTS_CREATE = 'Criar uma nova playlist';
          this.STRING_PLAYLISTS_TEXT_FIELD_LABEL = 'Nome da Playlist';
          this.STRING_PLAYLISTS_TEXT_FIELD_HINT =
              'Dê um nome para sua nova playlist';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_HEADER =
              'Tem certeza?';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_BODY =
              'Você quer remover essa playlist salva no seu dispositivo?';
          this.STRING_CANCEL = 'CANCELAR';
          this.STRING_PLAYLIST_ADD_DIALOG_TITLE = 'Adicionar à playlist';
          this.STRING_PLAYLIST_ADD_DIALOG_BODY =
              'Selecione uma playlist para adicionar essa música';
          this.STRING_PLAYLIST_TRACKS_SUBHEADER =
              'Aqui estão algumas músicas nessa playlist';
          this.STRING_TRANSFERS = 'Transferências';
          this.STRING_THEME_MODE_SYSTEM = 'Seguir tema do sistema';
          this.STRING_SETTING_INDEXING_TITLE = 'Indexando';
          this.STRING_SETTING_INDEXING_SUBTITLE =
              'Reindexando sua coleção de múscias';
          this.STRING_SETTING_INDEXING_LINEAR_PROGRESS_INDICATOR =
              'Indexando NUMBER_STRING de TOTAL_STRING músicas...';
          this.STRING_SETTING_INDEXING_DONE =
              'Sua coleção de músicas foi indexada.';
          this.STRING_SETTING_INDEXING_WARNING = 'Não interrupa o processo.';
          this.STRING_REFRESH = 'ATUALIZAR';
          this.STRING_SEARCH_NO_RECENT_SEARCHES =
              'Suas pesquisas recentes aparecerão aqui';
          this.STRING_NO_INTERNET_TITLE = 'Sem internet';
          this.STRING_NO_INTERNET_SUBTITLE = 'Verifique sua conexão.';
          this.STRING_NO_COLLECTION_TITLE = 'Coleção vazia';
          this.STRING_NO_COLLECTION_SUBTITLE = 'Nenhuma música encontrada.';
          this.STRING_DOWNLOAD_COMPLETED = 'Download Completo.';
          this.STRING_DOWNLOAD_FAILED = 'Download Falhou.';
          this.STRING_DISCORD = 'SERVIDOR DO DISCORD';
          this.STRING_EXIT_TITLE = 'Sair';
          this.STRING_EXIT_SUBTITLE = 'Você quer nos deixar?';
          this.STRING_A_TO_Z = 'A à Z';
          this.STRING_DATE_ADDED = 'Data adicionada';
          this.STRING_SETTING_ACCENT_COLOR_AUTOMATIC =
              'Cor de destaque automatica';
          this.STRING_SETTING_MISCELLANEOUS_TITLE = 'Outras';
          this.STRING_SETTING_MISCELLANEOUS_SUBTITLE =
              'Outras configurações do aplicativo';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_TITLE =
              'Ativar mecânicas do iOS';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_SUBTITLE =
              'Mudar plataforma para TargetPlatform.iOS';
          this.STRING_SELECTED_DIRECTORY = 'Diretório selecionado:';
          this.STRING_LYRICS = 'Letras';
          this.STRING_NOTIFICATION_LYRICS_TITLE = 'Letras nas notificações';
          this.STRING_NOTIFICATION_LYRICS_SUBTITLE =
              'Mostrar letras numa notificação.';
          this.STRING_LYRICS_RETRIEVING =
              'Baixando letras...'; // (Downloading lyrics)
          this.STRING_LYRICS_NOT_FOUND =
              'Letras não disponíveis.'; // (Lyrics not available.)
        }
        break;
      case LanguageRegion.hiIn:
        {
          this.STRING_INTERNET_ERROR = 'अपना इंटरनेट कनेक्शन चेक करें।';
          this.STRING_SEARCH_HEADER = 'गाना खोजें';
          this.STRING_SEARCH_MODE_SUBHEADER = 'आप किस तरह से गाना खोजेंगे?';
          this.STRING_COLLECTION = 'कलेक्शन';
          this.STRING_NOW_PLAYING = 'अभी बजता';
          this.STRING_SETTING = 'सेटिंग';
          this.STRING_OK = 'ठीक';
          this.STRING_YES = 'हाँ';
          this.STRING_NO = 'नहीं';
          this.STRING_ALBUM = 'एल्बम';
          this.STRING_TRACK = 'गाने';
          this.STRING_TOP_TRACKS = 'टॉप गाने';
          this.STRING_ARTIST = 'कलाकार';
          this.STRING_SAVED = 'सेव्ड';
          this.STRING_THEME_MODE_LIGHT = 'लाइट';
          this.STRING_THEME_MODE_DARK = 'डार्क';
          this.STRING_OPTIONS = 'विकल्प';
          this.STRING_FOLLOWERS = 'फॉलोवर्स';
          this.STRING_PLAYS = 'बार सुना गया';
          this.STRING_EXPORT_TRACK = 'गाना एक्सपोर्ट करें';
          this.STRING_DELETE_TRACK = 'गाना डिलीट करें';
          this.STRING_SEARCH_MODE_SUBTITLE_ALBUM =
              'अपनी पसंदीदा एल्बमों से गाना खोजें';
          this.STRING_SEARCH_MODE_SUBTITLE_TRACK = 'अपने मनपसंद गाने खोजें';
          this.STRING_SEARCH_MODE_SUBTITLE_ARTIST =
              'अपने पसंदीदा कलाकारों के गाना खोजें';
          this.STRING_SEARCH_HISTORY_SUBHEADER = 'आपके पिछले खोज';
          this.STRING_SEARCH_RESULT_LOADER_LABEL = 'आपका गाना आ रहा है...';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ALBUM =
              'सबसे मिलती-जुलती एल्बम';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_TRACK =
              'सबसे मिलता-जुलता गाना';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ARTIST =
              'सबसे मिलता-जुलता कलाकार';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ALBUM = 'डाउनलोड एल्बम';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_TRACK = 'डाउनलोड गाना';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ARTIST =
              'डाउनलोड कलाकार';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ALBUM = 'एल्बम दिखाएं';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_TRACK = 'गाना दिखाएं';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ARTIST = 'कलाकार दिखाएं';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ALBUM = 'अन्य एल्बम';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_TRACK = 'अन्य गाने';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ARTIST =
              'मिलते-जुलते अन्य कलाकार';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_TITLE = 'आप वापस नहीं जा सकते';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_SUBTITLE =
              'अभी एक या अधिक गाने ऑफलाइन सेव हो रहे हैं। इंतज़ार करें।';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_TITLE =
              'हम इस गाने को सेव नहीं कर सके';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_SUBTITLE =
              'हम आपको अपना इंटरनेट चेक करने की सलाह देते हैं। थोड़ी देर में दोबारा प्रयास करें।';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_TITLE =
              'हम सभी के ख़राब दिन आते हैं';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_SUBTITLE =
              'We have encountered an error while saving this track. This generally means that you need to check & update your server. This error has nothing to do with this application.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_TITLE = 'रुको';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_SUBTITLE =
              'यह गाना डाउनलोड हो ही रहा है।';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_TITLE =
              'यह गाना पहले से सेव है';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_SUBTITLE =
              'क्या आप इस गाने को दोबारा डाउनलोड करना चाहते हैं?';
          this.STRING_ALBUM_VIEW_LOADER_LABEL = 'हम गाने ला रहे हैं...';
          this.STRING_ALBUM_VIEW_TRACKS_SUBHEADER = 'यह रहे इस एल्बम के गाने';
          this.STRING_ALBUM_VIEW_INFO_SUBHEADER =
              'इस एल्बम के बारे में थोड़ी जानकारी';
          this.STRING_LOCAL_TOP_BODY_ALBUM_EMPTY =
              'अपने पसंद के गानों को यहाँ सुनने के लिए, उन्हें ढूंढे व सेव करें।\nअपना कलेक्शन रिफ्रेश करने के लिए रिफ्रेश बटन दबायें।';
          this.STRING_LOCAL_TOP_SUBHEADER_ALBUM = 'नयी एल्बम';
          this.STRING_LOCAL_OTHER_SUBHEADER_ALBUM = 'अन्य एल्बम';
          this.STRING_LOCAL_TOP_SUBHEADER_TRACK = 'नया गाना';
          this.STRING_LOCAL_OTHER_SUBHEADER_TRACK = 'अन्य गाने';
          this.STRING_LOCAL_TOP_SUBHEADER_ARTIST = 'नया कलाकार';
          this.STRING_LOCAL_OTHER_SUBHEADER_ARTIST = 'अन्य कलाकार';
          this.STRING_LOCAL_ALBUM_VIEW_TRACKS_SUBHEADER = 'एल्बम के गाने';
          this.STRING_LOCAL_ALBUM_VIEW_INFO_SUBHEADER =
              'एल्बम के बारे में थोड़ी जानकारी';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_HEADER = 'डिलीट';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_BODY =
              'क्या आप इस एल्बम को डिलीट करना चाहते हैं?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_HEADER = 'डिलीट';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_BODY =
              'क्या आप इस गाने को डिलीट करना चाहते हैं?';
          this.STRING_NOW_PLAYING_NEXT_TRACK = 'अगला गाना';
          this.STRING_NOW_PLAYING_PREVIOUS_TRACK = 'पिछला गाना';
          this.STRING_NOW_PLAYING_NOT_PLAYING_TITLE =
              'अभी कुछ भी नहीं बज रहा है...';
          this.STRING_NOW_PLAYING_NOT_PLAYING_SUBTITLE =
              'अपने कलेक्शन में से गाना बजाएं';
          this.STRING_NOW_PLAYING_NOT_PLAYING_HEADER = 'हम तैयार हैं...';
          this.STRING_SETTING_GITHUB = 'गिटहब';
          this.STRING_SETTING_STAR_GITHUB = 'स्टार करें';
          this.STRING_SETTING_STARGAZERS_TITLE = 'प्रोजेक्ट स्टारगेज़र्स';
          this.STRING_SETTING_STARGAZERS_SUBTITLE =
              'आपके प्यार के लिए शुक्रिया';
          this.STRING_SETTING_LANGUAGE_TITLE = 'भाषा';
          this.STRING_SETTING_LANGUAGE_SUBTITLE = 'अपनी ऐप की भाषा बदलें';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_TITLE = 'ऐप रीस्टार्ट';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_SUBTITLE =
              'क्या आप ऐप को अभी रीस्टार्ट करना चाहेंगे?';
          this.STRING_ABOUT_TITLE = 'प्रोजेक्ट के बारे में';
          this.STRING_ABOUT_SUBTITLE =
              'प्रोजेक्ट और इसके डेवलपर्स के बारे में जानकारी';
          this.STRING_SETTING_SERVER_CHANGE_TITLE = 'सर्वर';
          this.STRING_SETTING_SERVER_CHANGE_SUBTITLE =
              'अपनी ऐप के लिए सर्वर बदलें';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_HINT =
              'कोई सर्वर यु.आर.एल दें';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_LABEL = 'सर्वर यु.आर.एल';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_INVALID =
              'यह इस ऐप के लिए किसी सही सर्वर का URL नहीं है।';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_NETWORK =
              'अपना इंटरनेट कनेक्शन चेक करें।';
          this.STRING_SETTING_SERVER_CHANGE_DONE = 'सर्वर बदल दिया गया है।';
          this.STRING_SETTING_SERVER_CHANGE_CHANGING =
              'सर्वर बदला जा रहा है...';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_TITLE = 'अनुवाद प्रदाता';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_SUBTITLE =
              'आपके योगदान के लिए शुक्रिया';
          this.STRING_SETTING_ACCENT_COLOR_TITLE = 'ऐप रंग';
          this.STRING_SETTING_ACCENT_COLOR_SUBTITLE = 'ऐप के लिए रंग बदलें';
          this.STRING_SETTING_THEME_TITLE = 'ऐप मोड';
          this.STRING_SETTING_THEME_SUBTITLE =
              'ऐप को लाइट या डार्क मोड में यूज़ करें';
          this.STRING_NO_DOWNLOAD_UPDATE = 'आपकी ऐप पहले से अपडेट है';
          this.STRING_DOWNLOAD_UPDATE = 'डाउनलोड अपडेट';
          this.STRING_SETTING_APP_VERSION_TITLE = 'ऐप वर्ज़न';
          this.STRING_SETTING_APP_VERSION_SUBTITLE =
              'ऐप के इस वर्ज़न के बारे में जानकारी';
          this.STRING_SETTING_APP_VERSION_INSTALLED = 'इन्सटाल्ड वर्ज़न';
          this.STRING_SETTING_APP_VERSION_LATEST = 'लेटेस्ट वर्ज़न';
          this.STRING_MENU = 'मेन्यू';
          this.STRING_SEARCH_COLLECTION = 'कलेक्शन में ढूंढें';
          this.STRING_SWITCH_THEME = 'थीम बदलें';
          this.STRING_DISCOVER = 'ढूंढें';
          this.STRING_PLAY = 'बजाएं';
          this.STRING_PAUSE = 'रोकें';
          this.STRING_DELETE = 'डिलीट';
          this.STRING_SHARE = 'शेयर';
          this.STRING_ADD_TO_PLAYLIST = 'प्लेलिस्ट में जोड़ें';
          this.STRING_SAVE_TO_DOWNLOADS = 'डौन्लोडस में सेव करें';
          this.STRING_LOCAL_SEARCH_WELCOME = 'खोजने के लिए कुछ लिखें';
          this.STRING_LOCAL_SEARCH_NO_RESULTS = 'ऐसा कुछ भी नहीं मिला';
          this.STRING_PLAYLIST = 'प्लेलिस्ट';
          this.STRING_PLAYLISTS = 'प्लेलिस्टें';
          this.STRING_PLAYLISTS_SUBHEADER = 'आपकी प्लेलिस्टें';
          this.STRING_PLAYLISTS_CREATE = 'नयी प्लेलिस्ट बनायें';
          this.STRING_PLAYLISTS_TEXT_FIELD_LABEL = 'नाम';
          this.STRING_PLAYLISTS_TEXT_FIELD_HINT = 'प्लेलिस्ट का नाम';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_HEADER = 'डिलीट?';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_BODY =
              'क्या आप इस प्लेलिस्ट को डिलीट करना चाहते हैं?';
          this.STRING_CANCEL = 'कैंसिल';
          this.STRING_PLAYLIST_ADD_DIALOG_TITLE = 'प्लेलिस्ट में जोड़े';
          this.STRING_PLAYLIST_ADD_DIALOG_BODY = 'प्लेलिस्ट चुनें';
          this.STRING_PLAYLIST_TRACKS_SUBHEADER = 'इस प्लेलिस्ट के गाने';
          this.STRING_TRANSFERS = 'ट्रांसफर्स';
          this.STRING_THEME_MODE_SYSTEM = 'सिस्टम थीम';
          this.STRING_SETTING_INDEXING_TITLE = 'इंडेक्सिंग';
          this.STRING_SETTING_INDEXING_SUBTITLE =
              'अपने कलेक्शन को दोबारा इंडेक्स करें।';
          this.STRING_SETTING_INDEXING_LINEAR_PROGRESS_INDICATOR =
              'TOTAL_STRING में से NUMBER_STRING गाने इंडेक्स हो गए...';
          this.STRING_SETTING_INDEXING_DONE = 'आपका कलेक्शन इंडेक्स्ड है';
          this.STRING_SETTING_INDEXING_WARNING = 'प्रोसेस को चलने से ना रोकें।';
          this.STRING_REFRESH = 'रिफ्रेश';
          this.STRING_SEARCH_NO_RECENT_SEARCHES = 'आपके ';
          this.STRING_NO_INTERNET_TITLE = 'इंटरनेट एरर';
          this.STRING_NO_INTERNET_SUBTITLE = 'अपना कनेक्शन चेक करें।';
          this.STRING_NO_COLLECTION_TITLE = 'खाली कलेक्शन';
          this.STRING_NO_COLLECTION_SUBTITLE = 'कोई गाना नहीं मिला।';
          this.STRING_DOWNLOAD_COMPLETED = 'डाउनलोड कम्पलीट.';
          this.STRING_DOWNLOAD_FAILED = 'डाउनलोड फेल्ड.';
          this.STRING_DISCORD = 'डिस्कॉर्ड सर्वर';
          this.STRING_EXIT_TITLE = 'बंद';
          this.STRING_EXIT_SUBTITLE = 'क्या आप Harmonoid को छोड़ना चाहते हैं?';
          this.STRING_A_TO_Z = 'A से Z';
          this.STRING_DATE_ADDED = 'तिथि';
          this.STRING_SETTING_ACCENT_COLOR_AUTOMATIC = 'ऑटोमैटिक ऐप रंग';
          this.STRING_SETTING_MISCELLANEOUS_TITLE = 'अन्य सेटिंग';
          this.STRING_SETTING_MISCELLANEOUS_SUBTITLE =
              'ऐप में अन्य सेटिंग्स बदलें';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_TITLE = 'iOS मोड';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_SUBTITLE =
              'platform को TargetPlatform.iOS करें';
          this.STRING_SELECTED_DIRECTORY = 'Selected directory:';
          this.STRING_LYRICS = 'Lyrics';
          this.STRING_NOTIFICATION_LYRICS_TITLE = 'Notification lyrics';
          this.STRING_NOTIFICATION_LYRICS_SUBTITLE =
              'Show lyrics in a notification.';
          this.STRING_LYRICS_RETRIEVING = 'Retrieving lyrics...';
          this.STRING_LYRICS_NOT_FOUND = 'Lyrics not found.';
        }
        break;
      case LanguageRegion.deDe:
        {
          this.STRING_INTERNET_ERROR =
              'Überprüfen Sie Ihre Internetverbindung...';
          this.STRING_SEARCH_HEADER = 'Musik suchen';
          this.STRING_SEARCH_MODE_SUBHEADER = 'Wonach suchen Sie?';
          this.STRING_COLLECTION = 'Sammlung';
          this.STRING_NOW_PLAYING = 'Jetzt abspielen';
          this.STRING_SETTING = 'Einstellungen';
          this.STRING_OK = 'OKAY';
          this.STRING_YES = 'JA';
          this.STRING_NO = 'NEIN';
          this.STRING_ALBUM = 'Alben';
          this.STRING_TRACK = 'Songs';
          this.STRING_TOP_TRACKS = 'TOP TRACKS';
          this.STRING_ARTIST = 'Künstler';
          this.STRING_SAVED = 'gespeichert';
          this.STRING_THEME_MODE_LIGHT = 'Light';
          this.STRING_THEME_MODE_DARK = 'Dark';
          this.STRING_OPTIONS = 'Optionen';
          this.STRING_FOLLOWERS = 'followers';
          this.STRING_PLAYS = 'plays';
          this.STRING_EXPORT_TRACK = 'Song exportieren';
          this.STRING_DELETE_TRACK = 'Song löschen';
          this.STRING_SEARCH_MODE_SUBTITLE_ALBUM =
              'Musik aus Ihren Lieblingsalben suchen';
          this.STRING_SEARCH_MODE_SUBTITLE_TRACK =
              'Suche nach Ihren Lieblings-Songs';
          this.STRING_SEARCH_MODE_SUBTITLE_ARTIST =
              'Musik von Ihren Lieblings-Künstlern suchen';
          this.STRING_SEARCH_HISTORY_SUBHEADER = 'Ihre letzten Suchen';
          this.STRING_SEARCH_RESULT_LOADER_LABEL = 'Musik laden...';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ALBUM =
              'Hier ist das Album, das Ihrer Suche am nächsten kommt';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_TRACK =
              'Hier ist der nächstgelegene Song  zu Ihrer Suche';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ARTIST =
              'Hier ist der Künstler zu Ihrer Suche';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ALBUM =
              'ALBUM HERUNTERLADEN';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_TRACK =
              'SONG HERUNTERLADEN';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ARTIST =
              'KÜNSTLER HERUNTERLADEN';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ALBUM = 'ALBUM ANZEIGEN';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_TRACK = 'SONG ANZEIGEN';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ARTIST =
              'KÜNSTLER ANZEIGEN';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ALBUM =
              'Mehr Alben zum Ergebnis';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_TRACK =
              'Mehr Songs zum Ergebnis';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ARTIST =
              'Ähnliche Künstler';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_TITLE =
              'Sie können nicht zurückgehen';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_SUBTITLE =
              'Einer oder mehrere Songs werden offline gespeichert. Bitte warten Sie, bis alle Songs gespeichert wurden.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_TITLE =
              'Der Song konnte nicht gespeichert werden';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_SUBTITLE =
              'Wir empfehlen Ihnen dringend, Ihre Internetverbindung zu überprüfen und es in einer Weile erneut zu versuchen';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_TITLE =
              'Wir haben alle schlechte Tage';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_SUBTITLE =
              'We have encountered an error while saving this track. This generally means that you need to check & update your server. This error has nothing to do with this application.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_TITLE = 'Warten';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_SUBTITLE =
              'Dieser Song wird bereits heruntergeladen';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_TITLE =
              'Dieser Song wurde bereits heruntergeladen.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_SUBTITLE =
              'Möchten Sie diesen Song erneut herunterladen?';
          this.STRING_ALBUM_VIEW_LOADER_LABEL = 'Songs laden...';
          this.STRING_ALBUM_VIEW_TRACKS_SUBHEADER =
              'Hier sind die Songs aus diesem Album';
          this.STRING_ALBUM_VIEW_INFO_SUBHEADER =
              'Einige Einblicke in das Album';
          this.STRING_LOCAL_TOP_BODY_ALBUM_EMPTY =
              'Suche & speichere etwas Musik, um sie hier zu sehen.\nDrehe den Aktualisierungsbutton, um neue Sachen zu sehen';
          this.STRING_LOCAL_TOP_SUBHEADER_ALBUM =
              'Hier ist das letzte von Ihnen gespeicherte Album';
          this.STRING_LOCAL_OTHER_SUBHEADER_ALBUM =
              'Hier sind Ihre anderen Alben';
          this.STRING_LOCAL_TOP_SUBHEADER_TRACK =
              'Here is the latest track saved by you';
          this.STRING_LOCAL_OTHER_SUBHEADER_TRACK =
              'Here are your other tracks';
          this.STRING_LOCAL_TOP_SUBHEADER_ARTIST =
              'Here is the latest artist saved by you';
          this.STRING_LOCAL_OTHER_SUBHEADER_ARTIST =
              'Here are the artists saved on your device.';
          this.STRING_LOCAL_ALBUM_VIEW_TRACKS_SUBHEADER =
              'Hier sind die Songs, die Sie gespeichert haben';
          this.STRING_LOCAL_ALBUM_VIEW_INFO_SUBHEADER =
              'Einige Einblicke in das Album';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_HEADER =
              'Dieses Album löschen ?';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_BODY =
              'Löschen - Sicher...?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_HEADER =
              'Wollen Sie diesen Song löschen?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_BODY =
              'Möchten Sie diesen auf Ihrem Gerät gespeicherten Song entfernen?';
          this.STRING_NOW_PLAYING_NEXT_TRACK = 'NÄCHSTER';
          this.STRING_NOW_PLAYING_PREVIOUS_TRACK = 'VORHERIGER';
          this.STRING_NOW_PLAYING_NOT_PLAYING_TITLE =
              'Es wird aktuell nichts gespielt...';
          this.STRING_NOW_PLAYING_NOT_PLAYING_SUBTITLE =
              'Aus Ihrer Sammlung abspielen';
          this.STRING_NOW_PLAYING_NOT_PLAYING_HEADER = ', ';
          this.STRING_SETTING_GITHUB = 'GITHUB';
          this.STRING_SETTING_STAR_GITHUB =
              'Projekt mit "Star" versehen (GitHub)';
          this.STRING_SETTING_STARGAZERS_TITLE =
              'Projekt "Star"-Geber (GitHub)';
          this.STRING_SETTING_STARGAZERS_SUBTITLE =
              'Vielen Dank für Ihre Unterstützung';
          this.STRING_SETTING_LANGUAGE_TITLE = 'Sprachen';
          this.STRING_SETTING_LANGUAGE_SUBTITLE =
              'Ändern Sie die Spracheinstellungen der App.';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_TITLE =
              'App restart required';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_SUBTITLE =
              'Do you want to restart the app now?';
          this.STRING_ABOUT_TITLE = 'Über';
          this.STRING_ABOUT_SUBTITLE =
              'Informationen über die App und deren Entwickler';
          this.STRING_SETTING_SERVER_CHANGE_TITLE = 'Server';
          this.STRING_SETTING_SERVER_CHANGE_SUBTITLE =
              'Nur ändern, um Songs von einen anderen Server zu erhalten.';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_HINT =
              'Bitte geben Sie eine Server-URL ein';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_LABEL = 'Server-URL';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_INVALID =
              'Dies ist keine gültige Server-URL.';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_NETWORK =
              'Bitte überprüfen Sie Ihre Internetverbindung.';
          this.STRING_SETTING_SERVER_CHANGE_DONE =
              'Server erfolgreich geändert.';
          this.STRING_SETTING_SERVER_CHANGE_CHANGING =
              'Server für die App gewechselt...';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_TITLE = 'Übersetzer';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_SUBTITLE =
              'Vielen Dank für die Unterstützung!';
          this.STRING_SETTING_ACCENT_COLOR_TITLE = 'Akzentfarbe';
          this.STRING_SETTING_ACCENT_COLOR_SUBTITLE =
              'Ändern der Akzentfarbe der App';
          this.STRING_SETTING_THEME_TITLE = 'Theme';
          this.STRING_SETTING_THEME_SUBTITLE =
              'Ändern Sie die App im Light-Mode oder Dark-Mode';
          this.STRING_NO_DOWNLOAD_UPDATE = 'Ihre App ist bereits aktuell.';
          this.STRING_DOWNLOAD_UPDATE = 'UPDATE DOWNLOADEN';
          this.STRING_SETTING_APP_VERSION_TITLE = 'Version';
          this.STRING_SETTING_APP_VERSION_SUBTITLE =
              'Informationen über die aktuelle App-Version';
          this.STRING_SETTING_APP_VERSION_INSTALLED = 'installierte Version';
          this.STRING_SETTING_APP_VERSION_LATEST = 'letzte Version';
          this.STRING_MENU = 'Menu';
          this.STRING_SEARCH_COLLECTION = 'Search Collection';
          this.STRING_SWITCH_THEME = 'Switch Theme';
          this.STRING_DISCOVER = 'Discover';
          this.STRING_PLAY = 'Play';
          this.STRING_PAUSE = 'Pause';
          this.STRING_DELETE = 'Delete';
          this.STRING_SHARE = 'Share';
          this.STRING_ADD_TO_PLAYLIST = 'Add to playlist';
          this.STRING_SAVE_TO_DOWNLOADS = 'Save to downloads';
          this.STRING_LOCAL_SEARCH_WELCOME =
              'Enter something to search in your collection';
          this.STRING_LOCAL_SEARCH_NO_RESULTS =
              'Nothing like that could be found in your collection';
          this.STRING_PLAYLIST = 'Playlist';
          this.STRING_PLAYLISTS = 'Playlists';
          this.STRING_PLAYLISTS_SUBHEADER = 'Playlists created by you';
          this.STRING_PLAYLISTS_CREATE = 'Create a new playlist';
          this.STRING_PLAYLISTS_TEXT_FIELD_LABEL = 'Playlist Name';
          this.STRING_PLAYLISTS_TEXT_FIELD_HINT = 'Name for your new playlist';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_HEADER =
              'Are you sure?';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_BODY =
              'Do you want to remove this playlist saved on your device?';
          this.STRING_CANCEL = 'CANCEL';
          this.STRING_PLAYLIST_ADD_DIALOG_TITLE = 'Add to playlist';
          this.STRING_PLAYLIST_ADD_DIALOG_BODY =
              'Select a playlist to add this track';
          this.STRING_PLAYLIST_TRACKS_SUBHEADER =
              'Here are the tracks in this playlist';
          this.STRING_TRANSFERS = 'Transfers';
          this.STRING_THEME_MODE_SYSTEM = 'Follow system theme';
          this.STRING_SETTING_INDEXING_TITLE = 'Indexing';
          this.STRING_SETTING_INDEXING_SUBTITLE =
              'Reindex your music collection';
          this.STRING_SETTING_INDEXING_LINEAR_PROGRESS_INDICATOR =
              'Indexed NUMBER_STRING of TOTAL_STRING tracks...';
          this.STRING_SETTING_INDEXING_DONE = 'Indexed';
          this.STRING_SETTING_INDEXING_WARNING =
              'Do not interrupt the process.';
          this.STRING_REFRESH = 'REFRESH';
          this.STRING_SEARCH_NO_RECENT_SEARCHES =
              'Your recent searches will show here';
          this.STRING_NO_INTERNET_TITLE = 'No Internet';
          this.STRING_NO_INTERNET_SUBTITLE = 'Check your connection.';
          this.STRING_NO_COLLECTION_TITLE = 'Empty Collection';
          this.STRING_NO_COLLECTION_SUBTITLE = 'No music found.';
          this.STRING_DOWNLOAD_COMPLETED = 'Download Completed.';
          this.STRING_DOWNLOAD_FAILED = 'Download Failed.';
          this.STRING_DISCORD = 'DISCORD SERVER';
          this.STRING_EXIT_TITLE = 'Exit';
          this.STRING_EXIT_SUBTITLE = 'Do you want to exit Harmonoid?';
          this.STRING_A_TO_Z = 'A to Z';
          this.STRING_DATE_ADDED = 'Date Added';
          this.STRING_SETTING_ACCENT_COLOR_AUTOMATIC = 'Automatic Accent';
          this.STRING_SETTING_MISCELLANEOUS_TITLE = 'Miscellaneous';
          this.STRING_SETTING_MISCELLANEOUS_SUBTITLE =
              'Other settings in the app';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_TITLE =
              'Enable iOS mechanics';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_SUBTITLE =
              'Set platform to TargetPlatform.iOS';
          this.STRING_SELECTED_DIRECTORY = 'Selected directory:';
          this.STRING_LYRICS = 'Lyrics';
          this.STRING_NOTIFICATION_LYRICS_TITLE = 'Notification lyrics';
          this.STRING_NOTIFICATION_LYRICS_SUBTITLE =
              'Show lyrics in a notification.';
          this.STRING_LYRICS_RETRIEVING = 'Retrieving lyrics...';
          this.STRING_LYRICS_NOT_FOUND = 'Lyrics not found.';
        }
        break;
      case LanguageRegion.nlNl:
        {
          this.STRING_INTERNET_ERROR = 'Controleer uw internet verbinding...';
          this.STRING_SEARCH_HEADER = 'Zoek Muziek';
          this.STRING_SEARCH_MODE_SUBHEADER = 'Waar zoekt u naar?';
          this.STRING_COLLECTION = 'Collectie';
          this.STRING_NOW_PLAYING = 'Speelt nu';
          this.STRING_SETTING = 'Instellingen';
          this.STRING_OK = 'OKÉ';
          this.STRING_YES = 'JA';
          this.STRING_NO = 'NEE';
          this.STRING_ALBUM = 'Albums';
          this.STRING_TRACK = 'Nummers';
          this.STRING_TOP_TRACKS = 'TOP NUMMERS';
          this.STRING_ARTIST = 'Artiesten';
          this.STRING_SAVED = 'Opgeslagen';
          this.STRING_THEME_MODE_LIGHT = 'Licht';
          this.STRING_THEME_MODE_DARK = 'Donker';
          this.STRING_OPTIONS = 'Opties';
          this.STRING_FOLLOWERS = 'volgers';
          this.STRING_PLAYS = 'speelt';
          this.STRING_EXPORT_TRACK = 'Exporteer nummer';
          this.STRING_DELETE_TRACK = 'Verwijder nummer';
          this.STRING_SEARCH_MODE_SUBTITLE_ALBUM =
              'Zoek muziek uit je favoriete albums';
          this.STRING_SEARCH_MODE_SUBTITLE_TRACK =
              'Zoek naar je favoriete nummers';
          this.STRING_SEARCH_MODE_SUBTITLE_ARTIST =
              'Zoek muziek van je favoriete artiesten';
          this.STRING_SEARCH_HISTORY_SUBHEADER = 'Uw recente zoekopdrachten';
          this.STRING_SEARCH_RESULT_LOADER_LABEL = 'Uw muziek verkrijgen...';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ALBUM =
              'Dichtstbijzijnde album in het resultaat';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_TRACK =
              'Dichtstbijzijnde nummer in het resultaat';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ARTIST =
              'Dichtstbijzijnde artiest in het resultaat';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ALBUM = 'ALBUM OPSLAAN';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_TRACK = 'NUMMER OPSLAAN';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ARTIST =
              'ARTIEST OPSLAAN';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ALBUM = 'TOON ALBUM';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_TRACK = 'TOON NUMMER';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ARTIST = 'TOON ARTIEST';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ALBUM =
              'Meer albums uit het resultaat';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_TRACK =
              'Meer nummers uit het resultaat';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ARTIST =
              'Meer vergelijkbare artiesten';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_TITLE = 'U kunt niet terug';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_SUBTITLE =
              'Een of meer nummers worden offline opgeslagen. Wacht alstublieft tot alle nummers zijn opgeslagen.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_TITLE =
              'Het nummer kon niet opgeslagen wordenThe track could not be saved';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_SUBTITLE =
              'We raden u sterk aan uw internet verbinding te controleren en het over een tijdje nogmaals te proberen.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_TITLE =
              'We hebben allemaal slechte dagen';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_SUBTITLE =
              'We have encountered an error while saving this track. This generally means that you need to check & update your server. This error has nothing to do with this application.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_TITLE = 'Wacht';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_SUBTITLE =
              'Dit nummer wordt al gedownload.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_TITLE =
              'Dit nummer is al opgeslagen.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_SUBTITLE =
              'Wilt u dit nummer nogmaals downloaden?';
          this.STRING_ALBUM_VIEW_LOADER_LABEL = 'Verkrijgt nummers...';
          this.STRING_ALBUM_VIEW_TRACKS_SUBHEADER =
              'Hier zijn de nummers uit dit album';
          this.STRING_ALBUM_VIEW_INFO_SUBHEADER =
              'Een aantal inzichten in het album';
          this.STRING_LOCAL_TOP_BODY_ALBUM_EMPTY =
              'Zoek- en sla muziek op om het hier te zien. Klik op vernieuwen om nieuwe dingen te zien.';
          this.STRING_LOCAL_TOP_SUBHEADER_ALBUM = 'Laatste album';
          this.STRING_LOCAL_OTHER_SUBHEADER_ALBUM = 'Meer albums';
          this.STRING_LOCAL_TOP_SUBHEADER_TRACK = 'Laatste nummer';
          this.STRING_LOCAL_OTHER_SUBHEADER_TRACK = 'Meer nummers';
          this.STRING_LOCAL_TOP_SUBHEADER_ARTIST = 'Laatste artiest';
          this.STRING_LOCAL_OTHER_SUBHEADER_ARTIST = 'Meer artiesten';
          this.STRING_LOCAL_ALBUM_VIEW_TRACKS_SUBHEADER =
              'Hier zijn de nummers die u opgeslagen heeft';
          this.STRING_LOCAL_ALBUM_VIEW_INFO_SUBHEADER =
              'Enkele inzichten in het album';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_HEADER =
              'Weet u dat zeker?';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_BODY =
              'Wilt u dit album van uw apparaat verwijderen?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_HEADER =
              'Weet u dat zeker?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_BODY =
              'Wilt u dit album van uw apparaat verwijderen?';
          this.STRING_NOW_PLAYING_NEXT_TRACK = 'VOLGENDE';
          this.STRING_NOW_PLAYING_PREVIOUS_TRACK = 'VORIGE';
          this.STRING_NOW_PLAYING_NOT_PLAYING_TITLE =
              'Niks wordt afgespeeld...';
          this.STRING_NOW_PLAYING_NOT_PLAYING_SUBTITLE =
              'Speel uit uw collectie.';
          this.STRING_NOW_PLAYING_NOT_PLAYING_HEADER =
              "We zijn helemaal klaar...";
          this.STRING_SETTING_GITHUB = 'GITHUB';
          this.STRING_SETTING_STAR_GITHUB = 'STAR THE PROJECT';
          this.STRING_SETTING_STARGAZERS_TITLE = 'Project Stargazers';
          this.STRING_SETTING_STARGAZERS_SUBTITLE =
              'Heel erg bedankt voor uw steun!';
          this.STRING_SETTING_LANGUAGE_TITLE = 'Taal';
          this.STRING_SETTING_LANGUAGE_SUBTITLE = 'Verander de taal van de app';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_TITLE =
              'App herstart vereist';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_SUBTITLE =
              'Wilt u de app nu opnieuw starten?';
          this.STRING_ABOUT_TITLE = 'Over';
          this.STRING_ABOUT_SUBTITLE =
              'Informatie over de app en zijn ontwikkelaars';
          this.STRING_SETTING_SERVER_CHANGE_TITLE = 'Server';
          this.STRING_SETTING_SERVER_CHANGE_SUBTITLE =
              'Verander waar de app zijn inhoud vandaan haalt';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_HINT =
              'Vul een server URL in';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_LABEL = 'Server URL';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_INVALID =
              'Het is geen geldige server URL voor de app.';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_NETWORK =
              'Gelieve uw internetverbinding te controleren.';
          this.STRING_SETTING_SERVER_CHANGE_DONE =
              'Server succesvol veranderd.';
          this.STRING_SETTING_SERVER_CHANGE_CHANGING =
              'Verandert de server voor de app...';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_TITLE = 'Vertalers';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_SUBTITLE =
              'Heel erg bedankt voor uw steun voor de app';
          this.STRING_SETTING_ACCENT_COLOR_TITLE = 'Accent';
          this.STRING_SETTING_ACCENT_COLOR_SUBTITLE =
              'Verander de accentkleur van de app';
          this.STRING_SETTING_THEME_TITLE = 'Thema';
          this.STRING_SETTING_THEME_SUBTITLE =
              'Verander de app naar lichte of donkere modus';
          this.STRING_NO_DOWNLOAD_UPDATE = 'Uw app is al geupdate';
          this.STRING_DOWNLOAD_UPDATE = 'DOWNLOAD UPDATE';
          this.STRING_SETTING_APP_VERSION_TITLE = 'Versie';
          this.STRING_SETTING_APP_VERSION_SUBTITLE =
              'Informatie over de huidige versie van de app';
          this.STRING_SETTING_APP_VERSION_INSTALLED = 'Geinstalleerde versie';
          this.STRING_SETTING_APP_VERSION_LATEST = 'Laatste versie';
          this.STRING_MENU = 'Menu';
          this.STRING_SEARCH_COLLECTION = 'Zoek Collectie';
          this.STRING_SWITCH_THEME = 'Wissel Thema';
          this.STRING_DISCOVER = 'Ontdek';
          this.STRING_PLAY = 'Speel';
          this.STRING_PAUSE = 'Pauze';
          this.STRING_DELETE = 'Verwijder';
          this.STRING_SHARE = 'Deel';
          this.STRING_ADD_TO_PLAYLIST = 'Voeg toe aan afspeellijst';
          this.STRING_SAVE_TO_DOWNLOADS = 'Sla op in downloads';
          this.STRING_LOCAL_SEARCH_WELCOME =
              'Voer iets in om uw collectie te doorzoeken';
          this.STRING_LOCAL_SEARCH_NO_RESULTS =
              'Dat kon niet in uw collectie gevonden worden';
          this.STRING_PLAYLIST = 'Afspeellijst';
          this.STRING_PLAYLISTS = 'Afspeellijsten';
          this.STRING_PLAYLISTS_SUBHEADER = 'Jouw afspeellijsten';
          this.STRING_PLAYLISTS_CREATE = 'Maak een nieuwe afspeellijst';
          this.STRING_PLAYLISTS_TEXT_FIELD_LABEL = 'Naam afspeellijst';
          this.STRING_PLAYLISTS_TEXT_FIELD_HINT =
              'Naam voor uw nieuwe afspeellijst';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_HEADER =
              'Weet u het zeker?';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_BODY =
              'Wilt u deze afspeellijst van uw apparaat verwijderen?';
          this.STRING_CANCEL = 'ANNULEER';
          this.STRING_PLAYLIST_ADD_DIALOG_TITLE = 'Voeg toe aan afspeellijst';
          this.STRING_PLAYLIST_ADD_DIALOG_BODY =
              'Selecteer een afspeellijst en voeg dit nummer toe';
          this.STRING_PLAYLIST_TRACKS_SUBHEADER =
              'Hier zijn de nummers in deze afspeellijst';
          this.STRING_TRANSFERS = 'Overdrachten';
          this.STRING_THEME_MODE_SYSTEM = 'Volg systeem thema';
          this.STRING_SETTING_INDEXING_TITLE = 'Indexeren';
          this.STRING_SETTING_INDEXING_SUBTITLE =
              'Herindexeer uw muziek collectie';
          this.STRING_SETTING_INDEXING_LINEAR_PROGRESS_INDICATOR =
              'NUMBER_STRING / TOTAL_STRING nummers geindexeerd...';
          this.STRING_SETTING_INDEXING_DONE =
              'Uw muziek collectie is geindexeerd';
          this.STRING_SETTING_INDEXING_WARNING = 'Onderbreek het proces niet';
          this.STRING_REFRESH = 'HERLAAD';
          this.STRING_SEARCH_NO_RECENT_SEARCHES =
              'Uw recente zoekopdrachten zullen hier getoond worden';
          this.STRING_NO_INTERNET_TITLE = 'Geen Internet';
          this.STRING_NO_INTERNET_SUBTITLE = 'Controleer uw verbinding';
          this.STRING_NO_COLLECTION_TITLE = 'Lege Collectie';
          this.STRING_NO_COLLECTION_SUBTITLE = 'Geen muziek gevonden';
          this.STRING_DOWNLOAD_COMPLETED = 'Download Completed.';
          this.STRING_DOWNLOAD_FAILED = 'Download Failed.';
          this.STRING_DISCORD = 'DISCORD SERVER';
          this.STRING_EXIT_TITLE = 'Exit';
          this.STRING_EXIT_SUBTITLE = 'Do you want to exit Harmonoid?';
          this.STRING_A_TO_Z = 'A to Z';
          this.STRING_DATE_ADDED = 'Date Added';
          this.STRING_SETTING_ACCENT_COLOR_AUTOMATIC = 'Automatic Accent';
          this.STRING_SETTING_MISCELLANEOUS_TITLE = 'Miscellaneous';
          this.STRING_SETTING_MISCELLANEOUS_SUBTITLE =
              'Other settings in the app';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_TITLE =
              'Enable iOS mechanics';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_SUBTITLE =
              'Set platform to TargetPlatform.iOS';
          this.STRING_SELECTED_DIRECTORY = 'Selected directory:';
          this.STRING_LYRICS = 'Lyrics';
          this.STRING_NOTIFICATION_LYRICS_TITLE = 'Notification lyrics';
          this.STRING_NOTIFICATION_LYRICS_SUBTITLE =
              'Show lyrics in a notification.';
          this.STRING_LYRICS_RETRIEVING = 'Retrieving lyrics...';
          this.STRING_LYRICS_NOT_FOUND = 'Lyrics not found.';
        }
        break;
      case LanguageRegion.svSe:
        {
          this.STRING_INTERNET_ERROR = 'Granska din internetanslutning.';
          this.STRING_SEARCH_HEADER = 'Sök musik';
          this.STRING_SEARCH_MODE_SUBHEADER = 'Vad letar du efter?';
          this.STRING_COLLECTION = 'Samling';
          this.STRING_NOW_PLAYING = 'Spelas Nu';
          this.STRING_SETTING = 'Inställningar';
          this.STRING_OK = 'OKEJ';
          this.STRING_YES = 'JA';
          this.STRING_NO = 'NEJ';
          this.STRING_ALBUM = 'Album';
          this.STRING_TRACK = 'Låtar';
          this.STRING_TOP_TRACKS = 'TOPP LÅTAR';
          this.STRING_ARTIST = 'Artister';
          this.STRING_SAVED = 'Sparat';
          this.STRING_THEME_MODE_LIGHT = 'Ljus';
          this.STRING_THEME_MODE_DARK = 'Mörk';
          this.STRING_OPTIONS = 'Val';
          this.STRING_FOLLOWERS = 'följare';
          this.STRING_PLAYS = 'uppspelningar';
          this.STRING_EXPORT_TRACK = 'Exportera låt';
          this.STRING_DELETE_TRACK = 'Radera låt';
          this.STRING_SEARCH_MODE_SUBTITLE_ALBUM =
              'Sök musik från dina favoritalbum';
          this.STRING_SEARCH_MODE_SUBTITLE_TRACK = 'Sök dina favoritlåtar';
          this.STRING_SEARCH_MODE_SUBTITLE_ARTIST =
              'Sök musik av dina favoritartister';
          this.STRING_SEARCH_HISTORY_SUBHEADER = 'Dina senaste sökningar';
          this.STRING_SEARCH_RESULT_LOADER_LABEL = 'Hämtar din musik...';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ALBUM =
              'Närmaste album från resultatet';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_TRACK =
              'Närmaste låt från resultatet';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ARTIST =
              'Närmaste artist från resultatet';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ALBUM = 'SPARA ALBUM';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_TRACK = 'SPARA LÅT';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ARTIST = 'SPARA ARTIST';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ALBUM = 'VISA ALBUM';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_TRACK = 'VISA LÅT';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ARTIST = 'VISA ARTIST';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ALBUM =
              'Fler album från resultaten';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_TRACK =
              'Fler låtar från resultaten';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ARTIST =
              'Fler liknande artister';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_TITLE =
              'Du kan inte gå tillbaka';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_SUBTITLE =
              'En eller fler låtar sparas offline. Vänligen vänta tills alla låtar är sparade.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_TITLE =
              'Låten kunde inte sparas';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_SUBTITLE =
              'Rekommenderat att granska din internetanslutning & prova igen om en stund.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_TITLE =
              'Alla har vi dåliga dagar';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_SUBTITLE =
              'Undantag inträffat vid sparande utav denna låt. Detta betyder vanligen att du behöver kolla & uppdatera din server. Detta felmeddelande har inget att göra med denna applikation.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_TITLE = 'Vänta';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_SUBTITLE =
              'Denna låt laddas redan ner.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_TITLE =
              'Denna låt är redan sparad';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_SUBTITLE =
              'Vill du ladda ner denna låt igen?';
          this.STRING_ALBUM_VIEW_LOADER_LABEL = 'Hämtar låtar...';
          this.STRING_ALBUM_VIEW_TRACKS_SUBHEADER =
              'Här är låtarna från detta album';
          this.STRING_ALBUM_VIEW_INFO_SUBHEADER = 'Lite information om albumet';
          this.STRING_LOCAL_TOP_BODY_ALBUM_EMPTY =
              'Sök & spara musik för att se här.\nSnurra på uppdatera för att se nya saker.';
          this.STRING_LOCAL_TOP_SUBHEADER_ALBUM = 'Senaste album';
          this.STRING_LOCAL_OTHER_SUBHEADER_ALBUM = 'Fler album';
          this.STRING_LOCAL_TOP_SUBHEADER_TRACK = 'Senaste låt';
          this.STRING_LOCAL_OTHER_SUBHEADER_TRACK = 'Fler låtar';
          this.STRING_LOCAL_TOP_SUBHEADER_ARTIST = 'Senaste artist';
          this.STRING_LOCAL_OTHER_SUBHEADER_ARTIST = 'Fler artister';
          this.STRING_LOCAL_ALBUM_VIEW_TRACKS_SUBHEADER = 'Låtar från albumet';
          this.STRING_LOCAL_ALBUM_VIEW_INFO_SUBHEADER =
              'Lite information om albumet';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_HEADER =
              'Är du säker?';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_BODY =
              'Vill du avlägsna detta album sparat på din enhet?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_HEADER =
              'Är du säker?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_BODY =
              'Vill du avlägsna denna låt sparad på din enhet?';
          this.STRING_NOW_PLAYING_NEXT_TRACK = 'NÄSTA';
          this.STRING_NOW_PLAYING_PREVIOUS_TRACK = 'FÖREGÅENDE';
          this.STRING_NOW_PLAYING_NOT_PLAYING_TITLE = 'Inget spelas upp';
          this.STRING_NOW_PLAYING_NOT_PLAYING_SUBTITLE =
              'Spela från din samling';
          this.STRING_NOW_PLAYING_NOT_PLAYING_HEADER = "Vi är klara...";
          this.STRING_SETTING_GITHUB = 'GITHUB';
          this.STRING_SETTING_STAR_GITHUB = 'STJÄRNMÄRK PROJEKTET';
          this.STRING_SETTING_STARGAZERS_TITLE = 'Projekt Stargazers';
          this.STRING_SETTING_STARGAZERS_SUBTITLE =
              'Tack så mycket för ditt stöd';
          this.STRING_SETTING_LANGUAGE_TITLE = 'Språk';
          this.STRING_SETTING_LANGUAGE_SUBTITLE = 'Byt språk på applikationen';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_TITLE =
              'Applikationsomstart krävs';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_SUBTITLE =
              'Vill du starta om applikationen nu?';
          this.STRING_ABOUT_TITLE = 'Om';
          this.STRING_ABOUT_SUBTITLE =
              'Information om applikationen & dess utvecklare';
          this.STRING_SETTING_SERVER_CHANGE_TITLE = 'Server';
          this.STRING_SETTING_SERVER_CHANGE_SUBTITLE =
              'Ändra varifrån applikationen hämtar sitt innehåll';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_HINT = 'Ange server URL';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_LABEL = 'Server URL';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_INVALID =
              'Är inte en giltig server URL för applikationen.';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_NETWORK =
              'Vänligen granska din internetanslutning.';
          this.STRING_SETTING_SERVER_CHANGE_DONE = 'Serverändring lyckades.';
          this.STRING_SETTING_SERVER_CHANGE_CHANGING =
              'Ändrar server för applikationen...';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_TITLE = 'Översättare';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_SUBTITLE =
              'Tack så mycket för ditt stöd för applikationen.';
          this.STRING_SETTING_ACCENT_COLOR_TITLE = 'Accentfärg';
          this.STRING_SETTING_ACCENT_COLOR_SUBTITLE =
              'Ändra applikationens accentfärg';
          this.STRING_SETTING_THEME_TITLE = 'Tema';
          this.STRING_SETTING_THEME_SUBTITLE =
              'Ändra applikationen till ljust eller mörkt läge';
          this.STRING_NO_DOWNLOAD_UPDATE =
              'Din applikation är redan uppdaterad';
          this.STRING_DOWNLOAD_UPDATE = 'LADDA NER UPPDATERING';
          this.STRING_SETTING_APP_VERSION_TITLE = 'Version';
          this.STRING_SETTING_APP_VERSION_SUBTITLE =
              'Information om nuvarande version av applikationen';
          this.STRING_SETTING_APP_VERSION_INSTALLED = 'Installerad version';
          this.STRING_SETTING_APP_VERSION_LATEST = 'Senaste versionen';
          this.STRING_MENU = 'Meny';
          this.STRING_SEARCH_COLLECTION = 'Sök samling';
          this.STRING_SWITCH_THEME = 'Byt tema';
          this.STRING_DISCOVER = 'Upptäck';
          this.STRING_PLAY = 'Spela';
          this.STRING_PAUSE = 'Paus';
          this.STRING_DELETE = 'Radera';
          this.STRING_SHARE = 'Dela';
          this.STRING_ADD_TO_PLAYLIST = 'Lägg till spellista';
          this.STRING_SAVE_TO_DOWNLOADS = 'Spara i nerladdningar';
          this.STRING_LOCAL_SEARCH_WELCOME =
              'Skriv något för att söka i din samling';
          this.STRING_LOCAL_SEARCH_NO_RESULTS =
              'Inget sådant fanns i din samling';
          this.STRING_PLAYLIST = 'Spellista';
          this.STRING_PLAYLISTS = 'Spellistor';
          this.STRING_PLAYLISTS_SUBHEADER = 'Dina spellistor';
          this.STRING_PLAYLISTS_CREATE = 'Skapa ny spellista';
          this.STRING_PLAYLISTS_TEXT_FIELD_LABEL = 'Spellistans namn';
          this.STRING_PLAYLISTS_TEXT_FIELD_HINT = 'Namn för din nya spellista';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_HEADER =
              'Är du säker?';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_BODY =
              'Vill du radera denna spellista?';
          this.STRING_CANCEL = 'AVBRYT';
          this.STRING_PLAYLIST_ADD_DIALOG_TITLE = 'Lägg till spellista';
          this.STRING_PLAYLIST_ADD_DIALOG_BODY =
              'Välj en spellista för att lägga till denna låt';
          this.STRING_PLAYLIST_TRACKS_SUBHEADER =
              'Här är låtarna i denna spellista';
          this.STRING_TRANSFERS = 'Överföringar';
          this.STRING_THEME_MODE_SYSTEM = 'Följ systemtema';
          this.STRING_SETTING_INDEXING_TITLE = 'Indexering';
          this.STRING_SETTING_INDEXING_SUBTITLE = 'Omindexera din musiksamling';
          this.STRING_SETTING_INDEXING_LINEAR_PROGRESS_INDICATOR =
              'Indexerat NUMBER_STRING av TOTAL_STRING låtar...';
          this.STRING_SETTING_INDEXING_DONE = 'Indexerad';
          this.STRING_SETTING_INDEXING_WARNING = 'Avbryt inte processen.';
          this.STRING_REFRESH = 'UPPDATERA';
          this.STRING_SEARCH_NO_RECENT_SEARCHES =
              'Dina senaste sökningar visas här';
          this.STRING_NO_INTERNET_TITLE = 'Inget internet';
          this.STRING_NO_INTERNET_SUBTITLE = 'Granska din anslutning.';
          this.STRING_NO_COLLECTION_TITLE = 'Tom samling';
          this.STRING_NO_COLLECTION_SUBTITLE =
              'Ingen musik hittades.\nÄndra sökväg till musik i inställningarna.';
          this.STRING_DOWNLOAD_COMPLETED = 'Nerladdning klar.';
          this.STRING_DOWNLOAD_FAILED = 'Nerladdning misslyckades.';
          this.STRING_DISCORD = 'DISCORD SERVER';
          this.STRING_EXIT_TITLE = 'Avsluta';
          this.STRING_EXIT_SUBTITLE = 'Vill du avsluta Harmonoid?';
          this.STRING_A_TO_Z = 'A till Ö';
          this.STRING_DATE_ADDED = 'Datum tillagd';
          this.STRING_SETTING_ACCENT_COLOR_AUTOMATIC = 'Automatisk accentfärg';
          this.STRING_SETTING_MISCELLANEOUS_TITLE = 'Diverse';
          this.STRING_SETTING_MISCELLANEOUS_SUBTITLE =
              'Andra inställningar i applikationen';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_TITLE =
              'Aktivera iOS mekanik';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_SUBTITLE =
              'Ange plattform till TargetPlatform.iOS';
          this.STRING_SELECTED_DIRECTORY = 'Vald katalog:';
          this.STRING_LYRICS = 'Lyrics';
          this.STRING_NOTIFICATION_LYRICS_TITLE = 'Notification lyrics';
          this.STRING_NOTIFICATION_LYRICS_SUBTITLE =
              'Show lyrics in a notification.';
          this.STRING_LYRICS_RETRIEVING = 'Retrieving lyrics...';
          this.STRING_LYRICS_NOT_FOUND = 'Lyrics not found.';
        }
        break;
      case LanguageRegion.frFr:
        {
          this.STRING_INTERNET_ERROR = 'Vérifier votre connexion Internet.';
          this.STRING_SEARCH_HEADER = 'Rechercher musique';
          this.STRING_SEARCH_MODE_SUBHEADER = 'qu\'est-ce que vous cherchez?';
          this.STRING_COLLECTION = 'Collection';
          this.STRING_NOW_PLAYING = 'Lecture en cours';
          this.STRING_SETTING = 'Paramètres';
          this.STRING_OK = 'OK';
          this.STRING_YES = 'OUI';
          this.STRING_NO = 'NON';
          this.STRING_ALBUM = 'Albums';
          this.STRING_TRACK = 'Pistes';
          this.STRING_TOP_TRACKS = 'Meilleurs Pistes';
          this.STRING_ARTIST = 'Artistes';
          this.STRING_SAVED = 'Enregistré';
          this.STRING_THEME_MODE_LIGHT = 'Clair';
          this.STRING_THEME_MODE_DARK = 'Sombre';
          this.STRING_OPTIONS = 'Options';
          this.STRING_FOLLOWERS = 'Abonnés';
          this.STRING_PLAYS = 'Jouer';
          this.STRING_EXPORT_TRACK = 'Exporter la piste';
          this.STRING_DELETE_TRACK = 'Supprimer la piste';
          this.STRING_SEARCH_MODE_SUBTITLE_ALBUM =
              'Rechercher à partir de vos albums préférés';
          this.STRING_SEARCH_MODE_SUBTITLE_TRACK =
              'Rechercher à partir de vos pistes préférés';
          this.STRING_SEARCH_MODE_SUBTITLE_ARTIST =
              'Rechercher à partir de vos artistes préférés';
          this.STRING_SEARCH_HISTORY_SUBHEADER = 'Vos recherches récentes';
          this.STRING_SEARCH_RESULT_LOADER_LABEL =
              'Obtention de votre musique ...';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ALBUM =
              'Album le plus proche du résultat';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_TRACK =
              'Piste le plus proche du résultat';
          this.STRING_SEARCH_RESULT_TOP_SUBHEADER_ARTIST =
              'Artiste le plus proche du résultat';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ALBUM =
              'ALBUM enregistré';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_TRACK =
              'PISTE enregistré';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_0_ARTIST =
              'ARTIST enregistré';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ALBUM = 'AFFICHER ALBUM';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_TRACK = 'AFFICHER PISTE';
          this.STRING_SEARCH_RESULT_TOP_BUTTON_LABEL_1_ARTIST =
              'AFFICHER ARTISTE';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ALBUM =
              'Plus d\'albums du résultat';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_TRACK =
              'Plus de piste du résultat';
          this.STRING_SEARCH_RESULT_OTHER_SUBHEADER_ARTIST =
              'Plus d\'artistes similaires';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_TITLE =
              'Vous ne pouvez pas revenir en arrière';
          this.STRING_ALBUM_VIEW_DOWNLOAD_BACK_SUBTITLE =
              'Une ou plusieurs pistes sont enregistrées hors ligne. Veuillez attendre que toutes les pistes soient enregistrées.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_TITLE =
              'La piste n\'a pas pu être enregistrée';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_NETWORK_SUBTITLE =
              'Il est fortement recommandé de vérifier votre connexion Internet et de réessayer dans quelques instants.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_TITLE =
              'Nous avons tous de mauvais jours';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ERROR_RATE_SUBTITLE =
              "Une exception est rencontrée lors de l'enregistrement de cette piste. Cela signifie généralement que vous devez vérifier et mettre à jour votre serveur. Cette erreur n'a rien à voir avec cette application.";
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_TITLE = 'Attendez';
          this.STRING_ALBUM_VIEW_DOWNLOAD_DOUBLE_SUBTITLE =
              'Cette piste est déjà en cours de téléchargement.';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_TITLE =
              'Cette piste est déjà enregistrée';
          this.STRING_ALBUM_VIEW_DOWNLOAD_ALREADY_SAVED_SUBTITLE =
              'Voulez-vous télécharger à nouveau cette piste?';
          this.STRING_ALBUM_VIEW_LOADER_LABEL = 'Obtention des pistes ...';
          this.STRING_ALBUM_VIEW_TRACKS_SUBHEADER =
              'Voici les morceaux de cet album';
          this.STRING_ALBUM_VIEW_INFO_SUBHEADER =
              'Quelques aperçus de l\'album';
          this.STRING_LOCAL_TOP_BODY_ALBUM_EMPTY =
              'Recherchez et enregistrez de la musique pour la voir ici.\nActualisez-la pour voir de nouvelles choses.';
          this.STRING_LOCAL_TOP_SUBHEADER_ALBUM = 'Dernier album';
          this.STRING_LOCAL_OTHER_SUBHEADER_ALBUM = 'Plus d\'album';
          this.STRING_LOCAL_TOP_SUBHEADER_TRACK = 'Dernier piste';
          this.STRING_LOCAL_OTHER_SUBHEADER_TRACK = 'Plus de pistes';
          this.STRING_LOCAL_TOP_SUBHEADER_ARTIST = 'Dernier artiste';
          this.STRING_LOCAL_OTHER_SUBHEADER_ARTIST = 'Plus d\'artistes';
          this.STRING_LOCAL_ALBUM_VIEW_TRACKS_SUBHEADER = 'Pistes de l\'album';
          this.STRING_LOCAL_ALBUM_VIEW_INFO_SUBHEADER =
              'Quelques aperçus de l\'album';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_HEADER =
              'Êtes-vous sûr?';
          this.STRING_LOCAL_ALBUM_VIEW_ALBUM_DELETE_DIALOG_BODY =
              'Voulez-vous supprimer cet album enregistré sur votre appareil?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_HEADER =
              'Êtes-vous sûr?';
          this.STRING_LOCAL_ALBUM_VIEW_TRACK_DELETE_DIALOG_BODY =
              'Voulez-vous supprimer cette piste enregistrée sur votre appareil?';
          this.STRING_NOW_PLAYING_NEXT_TRACK = 'Suivant';
          this.STRING_NOW_PLAYING_PREVIOUS_TRACK = 'Précedent';
          this.STRING_NOW_PLAYING_NOT_PLAYING_TITLE = 'Rien n\'est joué';
          this.STRING_NOW_PLAYING_NOT_PLAYING_SUBTITLE =
              'Lire depuis votre collection';
          this.STRING_NOW_PLAYING_NOT_PLAYING_HEADER = "We're all set...";
          this.STRING_SETTING_GITHUB = 'GITHUB';
          this.STRING_SETTING_STAR_GITHUB = 'STAR THE PROJECT';
          this.STRING_SETTING_STARGAZERS_TITLE = 'Project Stargazers';
          this.STRING_SETTING_STARGAZERS_SUBTITLE =
              'Merci beaucoup pour votre soutien';
          this.STRING_SETTING_LANGUAGE_TITLE = 'Langues';
          this.STRING_SETTING_LANGUAGE_SUBTITLE =
              'Changer la langue de l\'application';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_TITLE =
              'Redémarrage de l\'application requis';
          this.STRING_SETTING_LANGUAGE_RESTART_DIALOG_SUBTITLE =
              'Voulez-vous redémarrer l\'application maintenant?';
          this.STRING_ABOUT_TITLE = 'À propos';
          this.STRING_ABOUT_SUBTITLE =
              'Informations sur l\'application et ses développeurs';
          this.STRING_SETTING_SERVER_CHANGE_TITLE = 'Serveur';
          this.STRING_SETTING_SERVER_CHANGE_SUBTITLE =
              "Modifier l'endroit où l'application demande son contenu";
          this.STRING_SETTING_SERVER_CHANGE_SERVER_HINT =
              'Entrer un\'URL de serveur';
          this.STRING_SETTING_SERVER_CHANGE_SERVER_LABEL = 'URL du serveur';
          this.STRING_SETTING_SERVER_CHANGE_ERROR_INVALID =
              "Ce n'est pas une URL de serveur valide pour l'application.";
          this.STRING_SETTING_SERVER_CHANGE_ERROR_NETWORK =
              'S\'il vous plait, vérifiez votre connexion internet.';
          this.STRING_SETTING_SERVER_CHANGE_DONE =
              'Le serveur a bien été modifié.';
          this.STRING_SETTING_SERVER_CHANGE_CHANGING =
              'Changement de serveur pour l\'application ...';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_TITLE =
              'Fournisseurs de traduction';
          this.STRING_SETTING_LANGUAGE_PROVIDERS_SUBTITLE =
              'Merci beaucoup pour votre soutien à l\'application.';
          this.STRING_SETTING_ACCENT_COLOR_TITLE = 'Accent';
          this.STRING_SETTING_ACCENT_COLOR_SUBTITLE =
              "Changer la coloration d'accent de l'application";
          this.STRING_SETTING_THEME_TITLE = 'Theme';
          this.STRING_SETTING_THEME_SUBTITLE =
              'Changez l\'application en mode clair ou sombre';
          this.STRING_NO_DOWNLOAD_UPDATE =
              'Votre application est déjà mise à jour';
          this.STRING_DOWNLOAD_UPDATE = 'TÉLÉCHARGER LA MISE À JOUR';
          this.STRING_SETTING_APP_VERSION_TITLE = 'Version';
          this.STRING_SETTING_APP_VERSION_SUBTITLE =
              'Informations sur la version actuelle de l\'application';
          this.STRING_SETTING_APP_VERSION_INSTALLED = 'Version instalée';
          this.STRING_SETTING_APP_VERSION_LATEST = 'dernière version';
          this.STRING_MENU = 'Menu';
          this.STRING_SEARCH_COLLECTION = 'Chercher collection';
          this.STRING_SWITCH_THEME = 'Changer de theme';
          this.STRING_DISCOVER = 'Discover';
          this.STRING_PLAY = 'Lire';
          this.STRING_PAUSE = 'Pause';
          this.STRING_DELETE = 'Supprimer';
          this.STRING_SHARE = 'Partager';
          this.STRING_ADD_TO_PLAYLIST = 'Ajouter au Playlist';
          this.STRING_SAVE_TO_DOWNLOADS =
              'Enregistrer dans les téléchargements';
          this.STRING_LOCAL_SEARCH_WELCOME =
              'Entrez quelque chose à rechercher dans votre collection';
          this.STRING_LOCAL_SEARCH_NO_RESULTS =
              'Rien de tel n\'a pu être trouvé dans votre collection';
          this.STRING_PLAYLIST = 'Playlist';
          this.STRING_PLAYLISTS = 'Playlists';
          this.STRING_PLAYLISTS_SUBHEADER = 'Votre playlists';
          this.STRING_PLAYLISTS_CREATE = 'Créer un nouveau playlist';
          this.STRING_PLAYLISTS_TEXT_FIELD_LABEL = 'Nom du Playlist';
          this.STRING_PLAYLISTS_TEXT_FIELD_HINT =
              'Nom pour votre nouveau playlist';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_HEADER =
              'Êtes-vous sûr?';
          this.STRING_LOCAL_ALBUM_VIEW_PLAYLIST_DELETE_DIALOG_BODY =
              'Voulez-vous supprimer cette playlist?';
          this.STRING_CANCEL = 'ANNULER';
          this.STRING_PLAYLIST_ADD_DIALOG_TITLE = 'Ajouter au playlist';
          this.STRING_PLAYLIST_ADD_DIALOG_BODY =
              'Sélectionnez une playlist pour ajouter cette piste';
          this.STRING_PLAYLIST_TRACKS_SUBHEADER =
              'Voici les morceaux de cette playlist';
          this.STRING_TRANSFERS = 'Transfers';
          this.STRING_THEME_MODE_SYSTEM = 'Suivre le thème du système';
          this.STRING_SETTING_INDEXING_TITLE = 'Indexage';
          this.STRING_SETTING_INDEXING_SUBTITLE =
              'Réindexez votre collection de musique';
          this.STRING_SETTING_INDEXING_LINEAR_PROGRESS_INDICATOR =
              'NUMBER_STRING pistes indexées sur TOTAL_STRING ...';
          this.STRING_SETTING_INDEXING_DONE = 'Indexée';
          this.STRING_SETTING_INDEXING_WARNING =
              'N\'interrompez pas le processus.';
          this.STRING_REFRESH = 'ACTUALISER';
          this.STRING_SEARCH_NO_RECENT_SEARCHES =
              'Vos recherches récentes s\'afficheront ici';
          this.STRING_NO_INTERNET_TITLE = 'Pas d\'internet';
          this.STRING_NO_INTERNET_SUBTITLE = 'Vérifiez votre connexion.';
          this.STRING_NO_COLLECTION_TITLE = 'Collection vide';
          this.STRING_NO_COLLECTION_SUBTITLE =
              'Aucune musique trouvée.\nChangez où chercher la musique dans les paramètres.';
          this.STRING_DOWNLOAD_COMPLETED = 'Téléchargement terminé.';
          this.STRING_DOWNLOAD_FAILED = 'Échec du téléchargement.';
          this.STRING_DISCORD = 'DISCORD SERVEUR';
          this.STRING_EXIT_TITLE = 'Quitter';
          this.STRING_EXIT_SUBTITLE = 'Voulez-vous quitter Harmonoid?';
          this.STRING_A_TO_Z = 'A à Z';
          this.STRING_DATE_ADDED = 'Date ajouté';
          this.STRING_SETTING_ACCENT_COLOR_AUTOMATIC = 'Automatique accent';
          this.STRING_SETTING_MISCELLANEOUS_TITLE = 'Miscellaneous';
          this.STRING_SETTING_MISCELLANEOUS_SUBTITLE =
              'Autres paramètres de l\'application';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_TITLE =
              'Activer la mécanique iOS';
          this.STRING_SETTING_MISCELLANEOUS_ENABLE_IOS_SUBTITLE =
              'Définir la plate-forme sur TargetPlatform.iOS';
          this.STRING_SELECTED_DIRECTORY = 'Répertoire sélectionné:';
          this.STRING_LYRICS = 'Paroles';
          this.STRING_NOTIFICATION_LYRICS_TITLE = 'Notification de Paroles';
          this.STRING_NOTIFICATION_LYRICS_SUBTITLE =
              'Afficher les paroles dans une notification.';
          this.STRING_LYRICS_RETRIEVING = 'Récupération des paroles ...';
          this.STRING_LYRICS_NOT_FOUND = 'Paroles non trouvées.';
        }
        break;
    }
    configuration.save(languageRegion: languageRegion);
    this.current = languageRegion;
    this.notifyListeners();
  }
}

Language? language;
