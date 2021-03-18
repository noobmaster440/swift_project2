print("WELCOME TO - WHO WANTS TO BE A MILIONAIRE---------------------------")

var qBank:pool=pool()
var userr:user=user(score:0)
var i=0
var h1:helpline=helpline(isUsed:false)
var h2:helpline2=helpline2(isUsed:false)


func useHelpline(q:inout question){
  if (!h1.isUsed && !h2.isUsed){
    print("YOU HAVE HINTS/HELPLINE AVAILABLE")
    print("PRESS h1 FOR HINT-50/50")
    print("PRESS h2 FOR ASK_AUDIENCE")
    print("PRESS ANY OTHER KEY TO CONTINUE WITHOUT HELPLINE , YOU CAN USE THEM LATER")
    var hans:String?=readLine()!
    var uw_hans=hans ?? "NIL"
    if(uw_hans=="h1"){
      useHelpline1(q:&q)
    }else if(uw_hans=="h2"){
      useHelpline2(q:&q) 
    }else{
      return
    }
  }
  else if (!h1.isUsed) {
    print("YOU HAVE ONE HINT/HELPLINE AVAILABLE")
    print("PRESS h1 FOR HINT-50/50")
    var hans:String?=readLine()!
    var uw_hans=hans ?? "NIL"
    if(uw_hans=="h1"){
      useHelpline1(q:&q)
    }else{
      return
    }
  }
  else if (!h2.isUsed) {
    print("YOU HAVE ONE HINT/HELPLINE AVAILABLE")
    print("PRESS h2 FOR ASK_AUDIENCE")
    var hans:String?=readLine()!
    var uw_hans=hans ?? "NIL"
    if(uw_hans=="h2"){
      useHelpline2(q:&q)
    }else{
      return
    }
  }
  else{
    print("SORRY !!! YOU DO NOT HAVE ANY HELPLINE LEFT")
  }
}

func useHelpline1(q:inout question){
  h1.remove50(ques:&q)
  print("THE UPDATED QUESTION IS \(i+1)")
  userr.getScore
  print("✦ \(q.quesText)   ")
  print("\(q.labeloptions[0])-  \(q.options[0])                    \n\(q.labeloptions[1])- \(q.options[1])")
  h1.isUsed=true

}

func useHelpline2(q:inout question){
  var result:[Int]=h2.getVotes
  print("AUDIENCE VOTED AS FOLLOWS- ")
  print("✦ \(q.quesText)   ")
  print("\(q.labeloptions[0])-  \(q.options[0]) -  \(result[0]) %                  \n\(q.labeloptions[1])- \(q.options[1]) -  \(result[1]) %")  
  print("\(q.labeloptions[2])-  \(q.options[2]) -  \(result[2]) %                   \n\(q.labeloptions[3])- \(q.options[3]) -  \(result[3]) %")
  h2.isUsed=true

}

func playRound12(ques:inout[question],round:Int)->Bool{
  for j in 0...2{
      var k=Int.random(in: 0..<ques.count)
      var q=ques[k]
      ques.remove(at:k)
      print("NOTE- THE CURRENT QUESTION IS \(i+1)")
      userr.getScore
      print("✦ \(q.quesText)   ")
      print("a-  \(q.options[0])                    b- \(q.options[1])")
      print("c-  \(q.options[2])                    d- \(q.options[3])")
    
      useHelpline(q:&q)
      print("KINDLY ENTER THE CORRECT OPTION")
      var uans:String?=readLine()!
      var uw_uans=uans ?? "NIL"
      print("HEY YOU SURE YOU WANT TO LOCK THIS ANSWER \(uw_uans) , ENTER y TO CONFIRM")
      var tans:String?=readLine()!
      var uw_tans=tans ?? "NIL"
      while(uw_tans != "y"){
          print("KINDLY ENTER THE CORRECT OPTION")
          uans=readLine()!
          uw_uans=uans ?? "NIL"
          print("HEY YOU SURE YOU WANT TO LOCK THIS ANSWER \(uw_uans) , ENTER y TO CONFIRM")
          tans=readLine()!
          uw_tans=tans ?? "NIL"
      }
      if(uans != q.correctOption){
        print("WHOAAA YOU ENTERED THE WRONG ANSWER, THE CORRECT ANSWER WAS  \(q.correctOption)")
        print("YOU LOST THE GAME BUT NO WORRIES , YOU WON $$$ \(userr.getScore)")
        return false
      }
      print("CONGRATS THAT WAS THE CORRECT ANSWER")
      
      userr.quesAnswered.append(answer(question:q,reply:uw_uans))
      i+=1
      if j==2 {
        print("CONGRATS, YOU HAVE REACHED THE END OF ROUND - \(round) ")
        print("NOW YOU CAN WALK AWAY WITH $$$ \(userr.getScore) OR ENTER AND PLAY THE NEXT ROUND WHICH IS \(round+1)")
        print("ENTER y TO CONTINUE OR PRESS ANY OTHER KEY TO EXIT")
        let choice:String?=readLine()!
        if let choice=choice{
          if(choice=="y"){
            continue
          }else{
            return false
          }
        }else{
          return false
        }
      }
  }
  return true
}

func playRound3(){
  for j in 0...2{
    var k=Int.random(in: 0..<qBank.hard.count)
    var q=qBank.hard[k]
    qBank.hard.remove(at:k)
    userr.getScore
    print("NOTE- THE CURRENT QUESTION IS \(i+1)")
    print("✦ \(q.quesText)   ")
    print("a-  \(q.options[0])                    b- \(q.options[1])")
    print("c-  \(q.options[2])                    d- \(q.options[3])")
    useHelpline(q:&q)
    print("KINDLY ENTER THE CORRECT OPTION")
    var uans:String?=readLine()!
    
      var uw_uans=uans ?? "NIL"
      print("HEY YOU SURE YOU WANT TO LOCK THIS ANSWER \(uw_uans) , ENTER y TO CONFIRM")
      var tans:String?=readLine()!
      var uw_tans=tans ?? "NIL"
      while(uw_tans != "y"){
          print("KINDLY ENTER THE CORRECT OPTION")
          uans=readLine()!
          uw_uans=uans ?? "NIL"
          print("HEY YOU SURE YOU WANT TO LOCK THIS ANSWER \(uw_uans) , ENTER y TO CONFIRM")
          tans=readLine()!
          uw_tans=tans ?? "NIL"
      }
         if(uans != q.correctOption){
            print("WHOAAA YOU ENTERED THE WRONG ANSWER, THE CORRECT ANSWER WAS  \(q.correctOption)")
            print("YOU LOST THE GAME BUT NO WORRIES , YOU WON $$$ \(userr.getScore)")
            return;
        }
      print("CONGRATS THAT WAS THE CORRECT ANSWER")
      userr.quesAnswered.append(answer(question:q,reply:uw_uans))
      
    // }
    i+=1
    if(j==2){
      print("----------------YOU HAVE WON THE GAME AND YOUR TOTAL REWARD MONEY IS $$$ \(userr.getScore)")
      return
      
    }else{
      print("NOW YOU CAN WALK AWAY WITH $$$ \(userr.getScore) OR CONTINUE AND PLAY THE NEXT QUESTION)")
      print("ENTER y TO CONTINUE OR PRESS ANY OTHER KEY TO EXIT")
      let choice:String?=readLine()!
      if let choice=choice{
        if(choice=="y"){
          continue
        }else{
          return
        }
      }else{
        return
      }
    }
}
}



func startGame(){
  var isContinued=playRound12(ques:&qBank.easy,round:1)
  if(isContinued){
    isContinued=playRound12(ques:&qBank.medium,round:2)
    if isContinued {
      playRound3()
    }
  }
}

startGame()
