print("--------------------------Who Wants to be a Millionare--------------------------")

var qBank:pool=pool()
var userr:user=user(score:0)
var i=0


func startGame(){
    for j in 0...2{
    let q=qBank.easy[j]
    print("The current question is \(i+1)")

    userr.getScore
    print("\(q.quesText) -->")
    print("  \(q.options[0])                     \(q.options[1])")
    print("  \(q.options[2])                     \(q.options[3])")
    print("Enter the correct option")
    let uans:String?=readLine()!
    
    if let uans=uans{
         if(uans != q.correctOption){
            print("You lost the game and your total amount of money won \(userr.getScore)")
            return;
        }
      userr.quesAnswered.append(answer(question:q,reply:uans))
    }
    i+=1
}
for j in 0...2{
    let q=qBank.medium[j]
    userr.getScore
    print("The current question is \(i+1)")
    print("\(q.quesText) -->")
    print("  \(q.options[0])                     \(q.options[1])")
    print("  \(q.options[2])                     \(q.options[3])")
    print("Enter the correct option")
    let uans:String?=readLine()!
    
    if let uans=uans{
        if(uans != q.correctOption){
            print("You lost the game and your total amount of money won \(userr.getScore)")
            return;
        }
      userr.quesAnswered.append(answer(question:q,reply:uans))

    }
    i+=1
}
for j in 0...2{
    let q=qBank.hard[j]
    userr.getScore
    print("The current question is \(i+1)")
    print("\(q.quesText) -->")
    print("  \(q.options[0])                     \(q.options[1])")
    print("  \(q.options[2])                     \(q.options[3])")
    print("Enter the correct option")
    let uans:String?=readLine()!
    
    if let uans=uans{
         if(uans != q.correctOption){
            print("You lost the game and your total amount of money won \(userr.getScore)")
            return;
        }
      userr.quesAnswered.append(answer(question:q,reply:uans))
    }
    i+=1
}
}

startGame()
