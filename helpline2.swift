struct helpline2{
    var isUsed:Bool
    var votes:[Int]=[0,0,0,0]
    func askaudi(ques:inout question){
        for i in 1...100{
            var temp=Int.random(in: 0...3)
            switch temp {
            case 0:
                votes[0]+=1
            case 1:
                votes[1]+=1
            case 2:
                votes[2]+=1
            case 3:
                votes[3]+=1
            default:
            }
        }
        var widx:Int=0
        for i in 1..votes.count{
            if(votes[widx]<votes[i]){
                widx=i
            }
        }
        return widx
    }
}