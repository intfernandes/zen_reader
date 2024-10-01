import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'messages_all_locales.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('tr'),
    Locale('zh'),
  ];

  static Future<AppLocalizations> load(Locale locale) async {
    final String name = locale.countryCode?.isEmpty ?? false ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    await initializeMessages(localeName);
    return AppLocalizations(locale);
  }

  // static AppLocalizations of(BuildContext context) {
  //   return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  // }

  String get appName => Intl.message('Anx Reader', name: 'appName', locale: locale.toString());
  String get app_about => Intl.message('About Anx Reader', name: 'app_about', locale: locale.toString());
  String get app_version => Intl.message('Version', name: 'app_version', locale: locale.toString());
  String get app_license => Intl.message('License', name: 'app_license', locale: locale.toString());
  String get app_author => Intl.message('Author', name: 'app_author', locale: locale.toString());
  String get navBar_bookshelf => Intl.message('Bookshelf', name: 'navBar_bookshelf', locale: locale.toString());
  String get navBar_statistics => Intl.message('Statistics', name: 'navBar_statistics', locale: locale.toString());
  String get navBar_notes => Intl.message('Notes', name: 'navBar_notes', locale: locale.toString());
  String get navBar_settings => Intl.message('Settings', name: 'navBar_settings', locale: locale.toString());
  String get settings_dark_mode => Intl.message('Dark', name: 'settings_dark_mode', locale: locale.toString());
  String get settings_light_mode => Intl.message('Light', name: 'settings_light_mode', locale: locale.toString());
  String get settings_system_mode => Intl.message('System', name: 'settings_system_mode', locale: locale.toString());
  String get settings_moreSettings => Intl.message('More Settings', name: 'settings_moreSettings', locale: locale.toString());
  String get settings_appearance => Intl.message('Appearance', name: 'settings_appearance', locale: locale.toString());
  String get settings_appearance_theme => Intl.message('Theme', name: 'settings_appearance_theme', locale: locale.toString());
  String get settings_appearance_themeColor => Intl.message('Theme Color', name: 'settings_appearance_themeColor', locale: locale.toString());
  String get settings_appearance_display => Intl.message('Display', name: 'settings_appearance_display', locale: locale.toString());
  String get settings_appearance_language => Intl.message('Language', name: 'settings_appearance_language', locale: locale.toString());
  String get reading_contents => Intl.message('Contents', name: 'reading_contents', locale: locale.toString());
  String get statistic_to_present => Intl.message('To Present', name: 'statistic_to_present', locale: locale.toString());
  String get statistic_books_read => Intl.message('books read', name: 'statistic_books_read', locale: locale.toString());
  String get statistic_days_of_reading => Intl.message('days read', name: 'statistic_days_of_reading', locale: locale.toString());
  String get statistic_notes => Intl.message('notes', name: 'statistic_notes', locale: locale.toString());
  String get statistic_week => Intl.message('week', name: 'statistic_week', locale: locale.toString());
  String get statistic_month => Intl.message('month', name: 'statistic_month', locale: locale.toString());
  String get statistic_year => Intl.message('year', name: 'statistic_year', locale: locale.toString());
  String get statistic_this_week => Intl.message('This Week', name: 'statistic_this_week', locale: locale.toString());
  String get statistic_monday => Intl.message('Mn', name: 'statistic_monday', locale: locale.toString());
  String get statistic_tuesday => Intl.message('Tu', name: 'statistic_tuesday', locale: locale.toString());
  String get statistic_wednesday => Intl.message('Wd', name: 'statistic_wednesday', locale: locale.toString());
  String get statistic_thursday => Intl.message('Th', name: 'statistic_thursday', locale: locale.toString());
  String get statistic_friday => Intl.message('Fr', name: 'statistic_friday', locale: locale.toString());
  String get statistic_saturday => Intl.message('Sa', name: 'statistic_saturday', locale: locale.toString());
  String get statistic_sunday => Intl.message('Su', name: 'statistic_sunday', locale: locale.toString());
  String get notes_notes_across => Intl.message('Notes Across', name: 'notes_notes_across', locale: locale.toString());
  String get notes_books => Intl.message('Books', name: 'notes_books', locale: locale.toString());
  String get notes_notes => Intl.message('Notes', name: 'notes_notes', locale: locale.toString());
  String get notes_minutes => Intl.message('minutes', name: 'notes_minutes', locale: locale.toString());
  String get reading_page_copy => Intl.message('Copy', name: 'reading_page_copy', locale: locale.toString());
  String get reading_page_excerpt => Intl.message('Excerpt', name: 'reading_page_excerpt', locale: locale.toString());
  String get reading_page_theme => Intl.message('Theme', name: 'reading_page_theme', locale: locale.toString());
  String get reading_page_style => Intl.message('Style', name: 'reading_page_style', locale: locale.toString());
  String get reading_page_full_screen => Intl.message('Full Screen', name: 'reading_page_full_screen', locale: locale.toString());
  String get reading_page_screen_timeout => Intl.message('Screen Timeout', name: 'reading_page_screen_timeout', locale: locale.toString());
  String get reading_page_page_turning_method => Intl.message('Page Turning Method', name: 'reading_page_page_turning_method', locale: locale.toString());
  String get bookshelf_tips_1 => Intl.message('There are no books.', name: 'bookshelf_tips_1', locale: locale.toString());
  String get bookshelf_tips_2 => Intl.message('Click the add button to add a book!', name: 'bookshelf_tips_2', locale: locale.toString());
  String get statistics_tips_1 => Intl.message('This week you have read', name: 'statistics_tips_1', locale: locale.toString());
  String get statistics_tips_2 => Intl.message('A book is a dream that you hold in your hands.', name: 'statistics_tips_2', locale: locale.toString());
  String get notes_tips_1 => Intl.message('There are no notes.', name: 'notes_tips_1', locale: locale.toString());
  String get notes_tips_2 => Intl.message('Add a note while reading!', name: 'notes_tips_2', locale: locale.toString());
  String get reading_page_chapter_pages => Intl.message('Chapter Pages', name: 'reading_page_chapter_pages', locale: locale.toString());
  String get reading_page_current_page => Intl.message('Current Page', name: 'reading_page_current_page', locale: locale.toString());
  String get book_detail_save => Intl.message('Save', name: 'book_detail_save', locale: locale.toString());
  String get book_detail_edit => Intl.message('Edit', name: 'book_detail_edit', locale: locale.toString());
  String get book_detail_nth_book => Intl.message('th book read', name: 'book_detail_nth_book', locale: locale.toString());
  String get book_detail_last_read_date => Intl.message('Last read: ', name: 'book_detail_last_read_date', locale: locale.toString());
  String get book_detail_import_date => Intl.message('Import date: ', name: 'book_detail_import_date', locale: locale.toString());
  String get notes_page_detail => Intl.message('Detail', name: 'notes_page_detail', locale: locale.toString());
  String get notes_page_export => Intl.message('Export', name: 'notes_page_export', locale: locale.toString());
  String get notes_page_copied => Intl.message('Copied', name: 'notes_page_copied', locale: locale.toString());
  String get notes_page_exported_to => Intl.message('Exported to', name: 'notes_page_exported_to', locale: locale.toString());
  String get common_delete => Intl.message('Delete', name: 'common_delete', locale: locale.toString());
  String get common_hours_full => Intl.message('hours', name: 'common_hours_full', locale: locale.toString());
  String get common_hours => Intl.message('h', name: 'common_hours', locale: locale.toString());
  String get common_minutes_full => Intl.message('minutes', name: 'common_minutes_full', locale: locale.toString());
  String get common_minutes => Intl.message('m', name: 'common_minutes', locale: locale.toString());
  String get common_seconds_full => Intl.message('seconds', name: 'common_seconds_full', locale: locale.toString());
  String get common_seconds => Intl.message('s', name: 'common_seconds', locale: locale.toString());
  String get common_save => Intl.message('Save', name: 'common_save', locale: locale.toString());
  String get common_cancel => Intl.message('Cancel', name: 'common_cancel', locale: locale.toString());
  String get common_ok => Intl.message('OK', name: 'common_ok', locale: locale.toString());
  String get common_success => Intl.message('Success', name: 'common_success', locale: locale.toString());
  String get common_failed => Intl.message('Failed', name: 'common_failed', locale: locale.toString());
  String get common_uploading => Intl.message('Uploading', name: 'common_uploading', locale: locale.toString());
  String get common_downloading => Intl.message('Downloading', name: 'common_downloading', locale: locale.toString());
  String get common_copy => Intl.message('Copy', name: 'common_copy', locale: locale.toString());
  String get common_new_version => Intl.message('New version!', name: 'common_new_version', locale: locale.toString());
  String get common_update => Intl.message('Update', name: 'common_update', locale: locale.toString());
  String get common_no_new_version => Intl.message('No new version', name: 'common_no_new_version', locale: locale.toString());
  String get service_import_success => Intl.message('Import success', name: 'service_import_success', locale: locale.toString());
  String get webdav_webdav_not_enabled => Intl.message('WebDAV is not enabled', name: 'webdav_webdav_not_enabled', locale: locale.toString());
  String get webdav_syncing => Intl.message('Syncing', name: 'webdav_syncing', locale: locale.toString());
  String get webdav_syncing_files => Intl.message('Syncing files', name: 'webdav_syncing_files', locale: locale.toString());
  String get webdav_sync_complete => Intl.message('Sync complete', name: 'webdav_sync_complete', locale: locale.toString());
  String get webdav_connection_success => Intl.message('Connection success', name: 'webdav_connection_success', locale: locale.toString());
  String get webdav_connection_failed => Intl.message('Connection failed', name: 'webdav_connection_failed', locale: locale.toString());
  String get webdav_set_info_first => Intl.message('Please set WebDAV information first', name: 'webdav_set_info_first', locale: locale.toString());
  String get webdav_choose_Sources => Intl.message('Choose Sources', name: 'webdav_choose_Sources', locale: locale.toString());
  String get webdav_download => Intl.message('Download from WebDAV', name: 'webdav_download', locale: locale.toString());
  String get webdav_upload => Intl.message('Upload to WebDAV', name: 'webdav_upload', locale: locale.toString());
  String get settings_sync => Intl.message('Sync', name: 'settings_sync', locale: locale.toString());
  String get settings_sync_webdav => Intl.message('WebDAV', name: 'settings_sync_webdav', locale: locale.toString());
  String get settings_sync_enable_webdav => Intl.message('Enable WebDAV', name: 'settings_sync_enable_webdav', locale: locale.toString());
  String get settings_sync_webdav_url => Intl.message('WebDAV URL', name: 'settings_sync_webdav_url', locale: locale.toString());
  String get settings_sync_webdav_username => Intl.message('Username', name: 'settings_sync_webdav_username', locale: locale.toString());
  String get settings_sync_webdav_password => Intl.message('Password', name: 'settings_sync_webdav_password', locale: locale.toString());
  String get settings_sync_webdav_test_connection => Intl.message('Test Connection', name: 'settings_sync_webdav_test_connection', locale: locale.toString());
  String get settings_sync_webdav_sync_now => Intl.message('Sync Now', name: 'settings_sync_webdav_sync_now', locale: locale.toString());
  String get settings_advanced => Intl.message('Advanced', name: 'settings_advanced', locale: locale.toString());
  String get settings_advanced_log => Intl.message('Log', name: 'settings_advanced_log', locale: locale.toString());
  String get settings_advanced_log_clear_log => Intl.message('Clear Log', name: 'settings_advanced_log_clear_log', locale: locale.toString());
  String get settings_advanced_log_export_log => Intl.message('Export Log', name: 'settings_advanced_log_export_log', locale: locale.toString());
  String get settings_advanced_clear_log_when_start => Intl.message('Clear log when start', name: 'settings_advanced_clear_log_when_start', locale: locale.toString());
  String get about_check_for_updates => Intl.message('Check for updates', name: 'about_check_for_updates', locale: locale.toString());
  String get update_new_version => Intl.message('New version: ', name: 'update_new_version', locale: locale.toString());
  String get update_current_version => Intl.message('Current version: ', name: 'update_current_version', locale: locale.toString());
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'tr', 'zh'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}