import 'Commands.dart';

class CommandExecutor{

  void execute(commandId){
    if(commandId == Commands.WF.index){

    }else if(commandId == Commands.RF.index){

    }else if(commandId == Commands.DD.index){

    }else if(commandId == Commands.MD.index){

    }else if(commandId == Commands.CF.index){

    }else if(commandId == Commands.DF.index){

    }else if(commandId == Commands.LS.index){

    }else if(commandId == Commands.CD.index){

    }else{
      print("Command not found");
    }
  }
}