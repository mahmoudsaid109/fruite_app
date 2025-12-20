import 'package:fruite_app/core/services/firebase_auth_services.dart';
import 'package:fruite_app/features/auth/data/repo/auth_repo_impl.dart';
import 'package:fruite_app/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(firebaseAuthServices: getIt.get<FirebaseAuthServices>()),
  );
}
