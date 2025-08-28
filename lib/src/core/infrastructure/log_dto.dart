import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/log.dart';
import 'local_database.dart';

part 'log_dto.freezed.dart';
part 'log_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class LogDTO with _$LogDTO implements Insertable<LogDTO> {
  const LogDTO._();
  const factory LogDTO({
    @JsonKey(name: 'ID') required int? id,
    @JsonKey(name: 'LOG_LEVEL') required String level,
    @JsonKey(name: 'LOG_MESSAGE') required String message,
    @JsonKey(name: 'LOG_ERROR') String? error,
    @JsonKey(name: 'APP_ID') required String appId,
    @JsonKey(name: 'APP_BUILD') required String appBuild,
    @JsonKey(name: 'APP_BUILD_NAME') required String appBuildName,
    @JsonKey(name: 'DEVICE') required String device,
    @JsonKey(name: 'USER_ID') required String userId,
    @JsonKey(name: 'USER_EMAIL') String? userEmail,
    @JsonKey(name: 'USER_NAME') String? userName,
    @JsonKey(name: 'TIMESTAMP') required DateTime timestamp,
  }) = _LogDTO;

  factory LogDTO.fromJson(Map<String, dynamic> json) => _$LogDTOFromJson(json);

  factory LogDTO.fromDomain(Log log) {
    return LogDTO(
      id: log.id,
      level: log.level,
      message: log.message,
      error: log.error,
      appId: log.appId,
      appBuild: log.appBuild,
      appBuildName: log.appBuildName,
      device: log.device,
      userId: log.userId,
      timestamp: log.timestamp,
    );
  }

  Log toDomain() {
    return Log(
      level: level,
      message: message,
      error: error,
      appId: appId,
      appBuild: appBuild,
      appBuildName: appBuildName,
      device: device,
      userId: userId,
      timestamp: timestamp,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return LogTableCompanion(
      level: Value(level),
      message: Value(message),
      error: Value(error),
      appId: Value(appId),
      appBuild: Value(appBuild),
      appBuildName: Value(appBuildName),
      device: Value(device),
      userId: Value(userId),
      timestamp: Value(timestamp),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(LogDTO)
class LogTable extends Table {
  @override
  String get tableName => 'LOG';

  IntColumn get id => integer().autoIncrement().named('ID')();
  TextColumn get level => text().named('LOG_LEVEL')();
  TextColumn get message => text().named('LOG_MESSAGE')();
  TextColumn get error => text().nullable().named('LOG_ERROR')();
  TextColumn get stackTrace => text().nullable().named('LOG_STACK_TRACE')();
  TextColumn get appId => text().named('APP_ID')();
  TextColumn get appBuild => text().named('APP_BUILD')();
  TextColumn get appBuildName => text().named('APP_BUILD_NAME')();
  TextColumn get device => text().named('DEVICE')();
  TextColumn get userId => text().named('USER_ID')();
  TextColumn get userEmail => text().nullable().named('USER_EMAIL')();
  TextColumn get userName => text().nullable().named('USER_NAME')();
  DateTimeColumn get timestamp => dateTime().named('TIMESTAMP')();
}
