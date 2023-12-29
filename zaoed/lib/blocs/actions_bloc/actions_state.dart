part of 'actions_bloc.dart';

class ActionsState {}

final class ActionsInitial extends ActionsState {}

final class GetBookmarkState extends ActionsState {
  final List<BookmarkModel> bookmarks;

  GetBookmarkState({required this.bookmarks});
}

final class GetChargingPointsState extends ActionsState {
  final List<ChargingPoint> chargingPoints;

  GetChargingPointsState({required this.chargingPoints});
}

final class AddBookmarkState extends ActionsState {}

final class DeleteBookmarkState extends ActionsState {}

final class CaponState extends ActionsState {}

final class LoadingState extends ActionsState {}

final class ErrorState extends ActionsState {}
