// ignore_for_file: depend_on_referenced_packages, void_checks

import 'package:zaoed/constants/imports.dart';

export 'dart:async';
part 'actions_event.dart';
part 'actions_state.dart';

class ActionsBloc extends Bloc<ActionsEvent, ActionsState> {
  List<BookmarkModel>? bookmarkData;
  List<ChargingPoint>? chargingPointData;
  double? price = 9;
  String? capon;
  late QRViewController scanController;

  ActionsBloc() : super(ActionsInitial()) {
    on<GetBookmarkEvent>(getBookmarkMethod);
    on<AddBookmarkEvent>(addBookmarkMethod);
    on<DeleteBookmarkEvent>(deleteBookmarkMethod);
    on<GetChargingPointsEvent>(getChargingPointsMethod);

    on<CaponEvent>((event, emit) {
      if (capon == 'Zaoed') {
        price = price! - (price! * 0.25);
        return price;
      }
      emit(CaponState());
    });
  }

  FutureOr<void> getChargingPointsMethod(
      GetChargingPointsEvent event, Emitter<ActionsState> emit) async {
    try {
      chargingPointData = await ActionSupabaseMethods().getChargingPoint();

      emit(GetChargingPointsState(chargingPoints: chargingPointData!));
    } catch (e) {
      ErrorState();
    }
  }

  FutureOr<void> getBookmarkMethod(
      GetBookmarkEvent event, Emitter<ActionsState> emit) async {
    try {
      bookmarkData = await ActionSupabaseMethods().getBookmarks();
      await Future.delayed(const Duration(seconds: 1));
      emit(GetBookmarkState(bookmarks: bookmarkData!));
    } catch (e) {
      ErrorState();
    }
  }

  FutureOr<void> addBookmarkMethod(
      AddBookmarkEvent event, Emitter<ActionsState> emit) async {
    try {
      await ActionSupabaseMethods().addBookmark(pointID: event.pointID);

      emit(AddBookmarkState(isBookmarked: true));

      add(GetBookmarkEvent());
      emit(LoadingState());
    } catch (e) {
      emit(ErrorState());
    }
  }

  FutureOr<void> deleteBookmarkMethod(
      DeleteBookmarkEvent event, Emitter<ActionsState> emit) async {
    try {
      await ActionSupabaseMethods().deleteBookmark(id: event.bookmarkID);

      emit(DeleteBookmarkState(isBookmarked: false));
      add(GetBookmarkEvent());
      emit(LoadingState());
    } catch (e) {
      emit(ErrorState());
    }
  }
}
