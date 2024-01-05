import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:testproject/exceptions/exception.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/repositories/api/api_client.dart';
import 'package:testproject/service/locator.dart';

/// Repository responsible for handling operations related to favorite books.
class FavoriteBooksRepository {
  FavoriteBooksRepository();

  /// Fetches the list of favorite books for the given user.
  Future<List<Book>> getFavoriteBooks(String userId) async {
    try {
      FavoriteBooksResponse response =
          await getIt<ApiClient>().getFavoriteBooks(userId: userId);

      List<Book> favorites = response.favoriteBooks;

      return favorites;
    } on DioException catch (error) {
      if (error.message!.contains('SocketException')) {
        throw NoConnectionException();
      }
      throw DefaultException();
    } catch (error) {
      print(error.toString());
      throw DefaultException();
    }
  }

  /// Saves a book as a favorite for the given user.
  Future<void> saveFavoriteBook(Book book, String userId) async {
    try {
      await getIt<ApiClient>()
          .saveFavoriteBook(book: jsonEncode(book).toString(), userId: userId);
    } on DioException catch (error) {
      if (error.message!.contains('SocketException')) {
        throw NoConnectionException();
      }
      if (error.response?.statusCode == 500) {
        throw InternalServerError();
      }
      throw DefaultException();
    } catch (error) {
      print(error.toString());
      throw DefaultException();
    }
  }

  /// Deletes a book from the list of favorite books for the given user.
  Future<void> deleteFavoriteBook(String bookTitle, String userId) async {
    try {
      await getIt<ApiClient>()
          .deleteFavoriteBook(bookTitle: bookTitle, userId: userId);
    } on DioException catch (error) {
      if (error.message!.contains('SocketException')) {
        throw NoConnectionException();
      }
      if (error.response?.statusCode == 500) {
        throw InternalServerError();
      }
      throw DefaultException();
    } catch (error) {
      print(error.toString());
      throw DefaultException();
    }
  }
}
