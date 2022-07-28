import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/db/database.dart';

final dioProvider = Provider((ref) => Dio());

final dbProvider = Provider((ref) => AppDatabase());
