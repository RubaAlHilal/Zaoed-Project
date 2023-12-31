part of 'bottom_sheet_status_bloc.dart';

@immutable
sealed class BottomSheetStatusEvent {}

class UpdateStatusEvent extends BottomSheetStatusEvent {
  final Status status;
  final String? point;
  final String? imageType;
  final String? hour;

  UpdateStatusEvent({this.imageType, this.hour,this.point, required this.status});
}