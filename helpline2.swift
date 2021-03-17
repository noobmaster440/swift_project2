class helpline2{
    var isUsed:Bool
    var votes:[Int]=[0,0,0,0]
    init(isUsed:Bool){
        self.isUsed=isUsed
    }
    var getVotes:[Int]{
        get{
            for i in 1...100{
                var temp=Int.random(in: 0...3)
                if (temp==0) {
                    votes[0]=votes[0]+1
                }else if (temp==1){
                    votes[1]=votes[1]+1
                }else if (temp==2){
                    votes[2]=votes[2]+1
                }else if (temp==3){
                    votes[3]=votes[3]+1
                }
            }
            return votes
        }
    }
}