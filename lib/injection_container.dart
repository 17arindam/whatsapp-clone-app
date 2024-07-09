import 'package:get_it/get_it.dart';
import 'package:whatsapp_clone/domain/usecases/get_create_current_user_usecase.dart';
import 'package:whatsapp_clone/domain/usecases/get_current_uid_usecase.dart';
import 'package:whatsapp_clone/domain/usecases/is_sign_usecase.dart';
import 'package:whatsapp_clone/domain/usecases/sign_in_with_phone_number_usecase.dart';
import 'package:whatsapp_clone/domain/usecases/sign_out_usecase.dart';
import 'package:whatsapp_clone/domain/usecases/verify_phone_number_usecase.dart';

final sl = GetIt.instance;

Future<void> init()async{
   //useCase
  sl.registerLazySingleton<GetCreateCurrentUserUseCase>(
      () => GetCreateCurrentUserUseCase(repository: sl.call()));
  sl.registerLazySingleton<GetCurrentUidUseCase>(
      () => GetCurrentUidUseCase(repository: sl.call()));
  sl.registerLazySingleton<IsSignInUseCase>(
      () => IsSignInUseCase(repository: sl.call()));
  sl.registerLazySingleton<SignInWithPhoneNumberUseCase>(
      () => SignInWithPhoneNumberUseCase(repository: sl.call()));
  sl.registerLazySingleton<SignOutUseCase>(
      () => SignOutUseCase(repository: sl.call()));
  sl.registerLazySingleton<VerifyPhoneNumberUseCase>(
      () => VerifyPhoneNumberUseCase(repository: sl.call()));
}