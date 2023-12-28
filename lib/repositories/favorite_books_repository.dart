import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:testproject/exceptions/exception.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/repositories/api/api_client.dart';
import 'package:testproject/service/locator.dart';

class FavoriteBooksRepository {
  FavoriteBooksRepository();

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
      switch (error.response?.statusCode) {
        default:
          throw InternalServerError();
      }
    } catch (error) {
      print(error);
      throw DefaultException();
    }
  }

  Future<void> saveFavoriteBook(Book book, String userId) async {
    try {
      await getIt<ApiClient>()
          .saveFavoriteBook(book: jsonEncode(book).toString(), userId: userId);
    } on DioException catch (error) {
      if (error.message!.contains('SocketException')) {
        throw NoConnectionException();
      }
      switch (error.response?.statusCode) {
        default:
          print(error.response);
      }
    } catch (error) {
      print(error);
      throw DefaultException();
    }
  }

  Future<void> deleteFavoriteBook(String bookTitle, String userId) async {
    try {
      await getIt<ApiClient>()
          .deleteFavoriteBook(bookTitle: bookTitle, userId: userId);
    } on DioException catch (error) {
      if (error.message!.contains('SocketException')) {
        throw NoConnectionException();
      }
      switch (error.response?.statusCode) {
        default:
          throw InternalServerError();
      }
    } catch (error) {
      print(error);
      throw DefaultException();
    }
  }
}
