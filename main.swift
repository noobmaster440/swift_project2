print("--------------------------Who Wants to be a Millionare--------------------------")

var qBank:pool=pool()
var userr:user=user(score:0)
var i=0
var h1:helpline=helpline(isUsed:false)
var h2:helpline2=helpline2(isUsed:false)


func useHelpline(q:inout question){
  if (!h1.isUsed && !h2.isUsed){
    print("You can also use a helpline; enter h1 to use 50/50 or pres h2 to use ASKAUDIENCE to use else enter any other key")
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
    print("You can only use a helpline- 50/50 , to use 50/50 press h1 else enter any other key")
    var hans:String?=readLine()!
    var uw_hans=hans ?? "NIL"
    if(uw_hans=="h1"){
      useHelpline1(q:&q)
    }else{
      return
    }
  }
  else if (!h2.isUsed) {
    print("You can only use a helpline- askaudience , to use askaudience press h2 else enter any other key")
    var hans:String?=readLine()!
    var uw_hans=hans ?? "NIL"
    if(uw_hans=="h2"){
      useHelpline2(q:&q)
    }else{
      return
    }
  }
  else{
    print("You do not have any helpline left")
  }
}

func useHelpline1(q:inout question){
  h1.remove50(ques:&q)
  print("The updated question is \(i+1)")
  userr.getScore
  print("    \(q.quesText)   ")
  print("\(q.labeloptions[0])-  \(q.options[0])                    \(q.labeloptions[1])- \(q.options[1])")
  h1.isUsed=true

}

func useHelpline2(q:inout question){
  var result:[Int]=h2.getVotes
  print("The audience voted as - ")
  print("    \(q.quesText)   ")
  print("\(q.labeloptions[0])-  \(q.options[0]) -  \(result[0]) %                  \(q.labeloptions[1])- \(q.options[1]) -  \(result[1]) %")  
  print("\(q.labeloptions[2])-  \(q.options[2]) -  \(result[2]) %                   \(q.labeloptions[3])- \(q.options[3]) -  \(result[3]) %")
  h2.isUsed=true

}

func playRound12(ques:inout[question])->Bool{
  for j in 0...2{
      var k=Int.random(in: 0..<ques.count)
      var q=ques[k]
      ques.remove(at:k)
      print("The current question is \(i+1)")
      userr.getScore
      print("    \(q.quesText)")
      print("A-  \(q.options[0])                    B- \(q.options[1])")
      print("C-  \(q.options[2])                    D- \(q.options[3])")
    
      useHelpline(q:&q)
      print("Enter the correct option")
      var uans:String?=readLine()!
    // if let uanss=uans{
      var uw_uans=uans ?? "NIL"
      print("Do you want to lock this answer - \(uw_uans) , enter y to confirm")
      var tans:String?=readLine()!
      // if let tanss=tans{ 
      var uw_tans=tans ?? "NIL"
      while(uw_tans != "y"){
          print("Enter the correct option")
          uans=readLine()!
          uw_uans=uans ?? "NIL"
          print("Do you want to lock this answer - \(uw_uans) , enter y to confirm")
          tans=readLine()!
          uw_tans=tans ?? "NIL"
      }
      if(uans != q.correctOption){
        print("You lost the game and your total amount of money won \(userr.getScore)")
        return false
      }
      userr.quesAnswered.append(answer(question:q,reply:uw_uans))
      i+=1
      if j==2 {
        print("You have reached the end of round 1 ")
        print("Now you can walk away with \(userr.getScore) or enter and play round 2")
        print("Enter y to continue or press any key to exit the game")
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
    print("The current question is \(i+1)")
    print("\(q.quesText) -->")
    print("A-  \(q.options[0])                    B- \(q.options[1])")
    print("C-  \(q.options[2])                    D- \(q.options[3])")
    useHelpline(q:&q)
    print("Enter the correct option )")
    var uans:String?=readLine()!
    
    // if let uans=uans{
      var uw_uans=uans ?? "NIL"
      print("Do you want to lock this answer - \(uw_uans) , enter y to confirm")
      var tans:String?=readLine()!
      // if let tanss=tans{ 
      var uw_tans=tans ?? "NIL"
      while(uw_tans != "y"){
          print("Enter the correct option")
          uans=readLine()!
          uw_uans=uans ?? "NIL"
          print("Do you want to lock this answer - \(uw_uans) , enter y to confirm")
          tans=readLine()!
          uw_tans=tans ?? "NIL"
      }
         if(uans != q.correctOption){
            print("You lost the game and your total amount of money won \(userr.getScore)")
            return;
        }
      userr.quesAnswered.append(answer(question:q,reply:uw_uans))
      
    // }
    i+=1
    if(j==2){
      print("----------------YOU HAVE WON THE GAME AND YOUR TOTAL REWARD MONEY IS $$$ \(userr.getScore)")
      return
      
    }else{
      print("You have crossed the \(j+1) question of final round ")
      print("Now you can walk away with \(userr.getScore) or enter and play next question of final round")
      print("Enter y to continue or press any key to exit the game")
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
  var isContinued=playRound12(ques:&qBank.easy)
  if(isContinued){
    isContinued=playRound12(ques:&qBank.medium)
    if isContinued {
      playRound3()
    }
  }
}

startGame()
