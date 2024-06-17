import 'package:app_ft_katec/src/core/app_constants.dart';
import 'package:app_ft_katec/src/data/repositories/get_info_rp.dart';
import 'package:app_ft_katec/src/data/repositories/post_login_bodies.dart';
import 'package:app_ft_katec/src/data/repositories/post_login_rp.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'services.g.dart';
@RestApi(baseUrl: AppConstants.apiUrl)
abstract class Services {
  factory Services(Dio dio, {String baseUrl}) = _Services;

  @POST("/login")
  Future<PostLoginRp>postLogin({@Body() required PostLoginBodies body});

  @GET("/authenticated")
  Future<GetInfoRp>getInfo();
}