struct answer{
    var question:question
    var reply:String
    var isCorrect:Bool{
        get{
            if(reply==question.correctOption){
                return true
            }else{
                return false
            }
        }
    }
}