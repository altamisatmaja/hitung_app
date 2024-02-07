import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hitung/models/model.dart';
import 'package:flutter/foundation.dart';
import 'package:hitung/views/components/component.dart';
import 'package:hitung/views/pages/page.dart';
import 'package:hitung/views/widgets/widget.dart';
import 'package:hitung/utils/util.dart';
import 'package:hitung/services/service.dart';
import 'package:hitung/models/model.dart';
import 'package:hitung/blocs/bloc.dart';

part 'auth_bloc/auth_bloc.dart';
part 'auth_bloc/auth_event.dart';
part 'auth_bloc/auth_state.dart';

part 'homepage_bloc/homepage_bloc.dart';
part 'homepage_bloc/homepage_event.dart';
part 'homepage_bloc/homepage_state.dart';