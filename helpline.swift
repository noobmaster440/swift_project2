struct helpline{
    var isUsed:Bool
    func remove50(ques:inout question){
        var i:Int=0
        while(ques.options.count != 2){
            if ques.labeloptions[i] != ques.correctOption{
                ques.labeloptions.remove(at:i)
                ques.options.remove(at:i)
            }
            i+=1
        }
    }
}