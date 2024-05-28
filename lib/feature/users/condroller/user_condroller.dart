
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../../models/user_model.dart';
import '../repositery/user_repositery.dart';

final usercontrollerprovider=Provider((ref) => UserController(authrepository: ref.watch(authrepositoryprovider)));

class UserController{
  final Authrepository _authrepository;
  UserController({required Authrepository authrepository}):
        _authrepository=authrepository;



  userFunction({required context,required name,required email,required password,required image,required id,required status,}){
    _authrepository.newUserDetails(context,name, email, password,image,id,status);
  }


  loginFun(email,password,context){
    _authrepository.emailLogin(email, password, context);
  }

  googleFunction(context){
    _authrepository.signInWithGoogle(context);
  }
  userUpdateCo(UserModel userModel){
    _authrepository.userUpdate(userModel);
  }

// currentUserModelUpdate(){
//     _authrepository.currentUserModelUpdate();
// }

}