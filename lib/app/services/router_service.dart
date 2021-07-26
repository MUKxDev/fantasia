import "package:injectable/injectable.dart";
import "package:fantasia/app/router/router.dart";
    
@lazySingleton
class RouterService {
  final FantasiaRouter router = FantasiaRouter();
}